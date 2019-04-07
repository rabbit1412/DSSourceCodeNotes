local assets =
{
    Asset("ANIM", "anim/piggyback.zip"),
    Asset("ANIM", "anim/swap_piggyback.zip"),
}

local function onequip(inst, owner)	--拿起装备函数
    --owner.AnimState:OverrideSymbol("swap_body", "swap_backpack", "backpack")
    owner.AnimState:OverrideSymbol("swap_body", "swap_piggyback", "swap_body")
    inst.components.container:Open(owner)	--容器打开
end

local function onunequip(inst, owner)	--卸下装备函数
    --owner.AnimState:ClearOverrideSymbol("backpack")
    owner.AnimState:ClearOverrideSymbol("swap_body")
    inst.components.container:Close(owner)	--容器关闭
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()	--添加地图实体
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)	--制作库存物理

    inst.AnimState:SetBank("piggyback")
    inst.AnimState:SetBuild("piggyback")
    inst.AnimState:PlayAnimation("anim")

    inst.MiniMapEntity:SetIcon("piggyback.png")	--小地图

    inst.foleysound = "dontstarve/movement/foley/backpack"

    inst:AddTag("backpack")		--标签

    --waterproofer (from waterproofer component) added to pristine state for optimization
    inst:AddTag("waterproofer")	--标签

    inst.entity:SetPristine()	--实体原始状态

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.cangoincontainer = false	--可以放入容器=假

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY	--指定 放入身体槽

    inst.components.equippable:SetOnEquip(onequip)	--拿起
    inst.components.equippable:SetOnUnequip(onunequip)	--卸下
    inst.components.equippable.walkspeedmult = TUNING.PIGGYBACK_SPEED_MULT	--额外移速

    inst:AddComponent("waterproofer")	--防水
    inst.components.waterproofer:SetEffectiveness(0)	--设置有效性

    inst:AddComponent("container")		--容器
    inst.components.container:WidgetSetup("piggyback")	--安装部件【小猪背包】

    MakeHauntableLaunchAndDropFirstItem(inst)

    return inst
end

return Prefab("piggyback", fn, assets)