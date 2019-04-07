local assets =
{
    Asset("ANIM", "anim/swap_icepack.zip"),
    Asset("ANIM", "anim/ui_icepack_2x3.zip"),
}

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_body", "swap_icepack", "backpack")
    owner.AnimState:OverrideSymbol("swap_body", "swap_icepack", "swap_body")
    inst.components.container:Open(owner)	--容器打开
end

local function onunequip(inst, owner)
    owner.AnimState:ClearOverrideSymbol("swap_body")
    owner.AnimState:ClearOverrideSymbol("backpack")
    inst.components.container:Close(owner)	--容器关闭
end

local function onburnt(inst)	--在燃烧
    if inst.components.container then
        inst.components.container:DropEverything()	--抛出所有物品
        inst.components.container:Close()			--容器关闭
        inst:RemoveComponent("container")			--移除容器
    end

    local ash = SpawnPrefab("ash")	--替换灰烬
    ash.Transform:SetPosition(inst.Transform:GetWorldPosition())

    inst:Remove()	--移除
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()				--小地图
    inst.entity:AddNetwork()

    inst.MiniMapEntity:SetIcon("icepack.png")	--小地图

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("icepack")			--动画声音
    inst.AnimState:SetBuild("swap_icepack")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("backpack")						--标签
    inst:AddTag("fridge")
    inst:AddTag("nocool")						--隔热的标签

    inst.foleysound = "dontstarve/movement/foley/backpack"	--音效

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.cangoincontainer = false		--不可放入库存

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY		--装备在身体槽

    inst.components.equippable:SetOnEquip( onequip )
    inst.components.equippable:SetOnUnequip( onunequip )

    inst:AddComponent("container")								--容器
    inst.components.container:WidgetSetup("icepack")			--安装部件 冰包

    MakeSmallBurnable(inst)										--燃烧小
    MakeSmallPropagator(inst)									--燃烧范围小
    inst.components.burnable:SetOnBurntFn(onburnt)				--组件燃烧：设置燃烧FN

    MakeHauntableLaunchAndDropFirstItem(inst)

    return inst
end

return Prefab("icepack", fn, assets)