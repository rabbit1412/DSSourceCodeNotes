local assets =
{
    Asset("ANIM", "anim/trap.zip"),
    Asset("SOUND", "sound/common.fsb"),
	Asset("MINIMAP_IMAGE", "rabbittrap"),
}

local sounds =	--声音
{
    close = "dontstarve/common/trap_close",	--陷阱关闭
    rustle = "dontstarve/common/trap_rustle",	--陷阱开启
}

local function onharvested(inst)	--在捕获函数
    if inst.components.finiteuses then	--有限使用
        inst.components.finiteuses:Use(1)	--有限使用	-1
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

    inst.MiniMapEntity:SetIcon("rabbittrap.png")	--小地图图标

    inst.AnimState:SetBank("trap")
    inst.AnimState:SetBuild("trap")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("trap")	--标签陷阱

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst.sounds = sounds	--把变量拉进来

    inst:AddComponent("inventoryitem")
    inst:AddComponent("inspectable")

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.TRAP_USES)
    inst.components.finiteuses:SetUses(TUNING.TRAP_USES)
    inst.components.finiteuses:SetOnFinished(inst.Remove)

    inst:AddComponent("trap")	--添加组件【陷阱】
    inst.components.trap.targettag = "canbetrapped"		--组件.陷阱.目标标签 = "可以困住"
    inst.components.trap:SetOnHarvestFn(onharvested)	--组件.陷阱:设置捕获FN(在捕获函数)
    inst.components.trap.baitsortorder = 1				--组件.陷阱.饵料顺序

    MakeHauntableLaunch(inst)

    inst:SetStateGraph("SGtrap")

    return inst
end

return Prefab("trap", fn, assets)
