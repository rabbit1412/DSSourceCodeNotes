local assets =
{
    Asset("ANIM", "anim/backpack.zip"),
    Asset("ANIM", "anim/swap_backpack.zip"),
}

local function onequip(inst, owner)	--拿起装备函数
	local skin_build = inst:GetSkinBuild()
	if skin_build ~= nil then
        owner:PushEvent("equipskinneditem", inst:GetSkinName())
		owner.AnimState:OverrideItemSkinSymbol("backpack", skin_build, "backpack", inst.GUID, "swap_backpack" )
		owner.AnimState:OverrideItemSkinSymbol("swap_body", skin_build, "swap_body", inst.GUID, "swap_backpack" )
	else
		owner.AnimState:OverrideSymbol("backpack", "swap_backpack", "backpack")
		owner.AnimState:OverrideSymbol("swap_body", "swap_backpack", "swap_body")
	end
    
    if inst.components.container ~= nil then --如果 组件.容器~=空
        inst.components.container:Open(owner)	--组件.容器:打开(owner)
    end
end

local function onunequip(inst, owner)	--卸下装备函数
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("unequipskinneditem", inst:GetSkinName())	--推送事件("卸下物品皮肤",获取物品Name)
    end
    owner.AnimState:ClearOverrideSymbol("swap_body")
    owner.AnimState:ClearOverrideSymbol("backpack")
    if inst.components.container ~= nil then	--如果 组件.容器~=空
        inst.components.container:Close(owner)	--组件.容器:关闭(owner)
    end
end

local function onburnt(inst)	--在燃烧的时候函数
    if inst.components.container ~= nil then	--如果 组件.容器~=空
        inst.components.container:DropEverything()	--组件.容器.放下所有物品()
        inst.components.container:Close()	--组件.容器:关闭
        inst:RemoveComponent("container")	--移除组件(容器)
    end

    SpawnPrefab("ash").Transform:SetPosition(inst.Transform:GetWorldPosition())
	--预制物品(灰).改变物品:设置物品(这个物品.改变物品.获得世界位置)

    inst:Remove()
end

local function onignite(inst)	--在点燃的时候函数
    if inst.components.container ~= nil then	--如果 组件.容器~=空
        inst.components.container.canbeopened = false	-- 组件.容器.可以打开=假
    end
end

local function onextinguish(inst)	--在熄灭的时候函数
    if inst.components.container ~= nil then	--如果 组件.容器~=空
        inst.components.container.canbeopened = true	--组件.容器.可以打开=真
    end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("backpack1")			--bank
    inst.AnimState:SetBuild("swap_backpack")	--build
    inst.AnimState:PlayAnimation("anim")	--播放动画
	
    inst:AddTag("backpack")	--添加标签【背包】

    inst.MiniMapEntity:SetIcon("backpack.png")	--添加小地图实体:设置图标【背包】
    inst.foleysound = "dontstarve/movement/foley/backpack"	--声音

    inst.entity:SetPristine()	

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.cangoincontainer = false	--组件.库存.可以放入容器=假

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY	--指定装备位置 在容器栏

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    inst:AddComponent("container")	--添加组件【容器】
    inst.components.container:WidgetSetup("backpack")	--组件.容器.部件安装【背包】

    MakeSmallBurnable(inst)	--使用小火燃烧
    MakeSmallPropagator(inst)	--使用小火灾传播范围
    inst.components.burnable:SetOnBurntFn(onburnt)	--组件.燃烧.设置在燃烧FN(在燃烧时候函数)
    inst.components.burnable:SetOnIgniteFn(onignite)	--组件.燃烧.设置点燃FN(在点燃是函数)
    inst.components.burnable:SetOnExtinguishFn(onextinguish)	--组件.就是.设置熄灭FN(在熄灭时候函数)

    MakeHauntableLaunchAndDropFirstItem(inst)

    return inst
end

return Prefab("backpack", fn, assets)