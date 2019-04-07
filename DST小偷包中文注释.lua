local assets =
{
    Asset("ANIM", "anim/backpack.zip"),
    Asset("ANIM", "anim/swap_krampus_sack.zip"),
}

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_body", "swap_krampus_sack", "backpack")
    owner.AnimState:OverrideSymbol("swap_body", "swap_krampus_sack", "swap_body")
    inst.components.container:Open(owner)	--容器打开
end

local function onunequip(inst, owner)
    owner.AnimState:ClearOverrideSymbol("swap_body")
    owner.AnimState:ClearOverrideSymbol("backpack")
    inst.components.container:Close(owner)	--容器关闭
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddMiniMapEntity()	--小地图
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.MiniMapEntity:SetIcon("krampus_sack.png")	--小地图

    inst.AnimState:SetBank("backpack1")
    inst.AnimState:SetBuild("swap_krampus_sack")
    inst.AnimState:PlayAnimation("anim")

    inst.foleysound = "dontstarve/movement/foley/krampuspack"

    inst:AddTag("backpack")		--标签

    --waterproofer (from waterproofer component) added to pristine state for optimization
    inst:AddTag("waterproofer")	--标签

    inst.entity:SetPristine()	--原始状态

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.cangoincontainer = false	--不可放入库存

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY	--指定 放入身体槽
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    inst:AddComponent("waterproofer")	--防水
    inst.components.waterproofer:SetEffectiveness(0)	--防水有效性

    inst:AddComponent("container")
    inst.components.container:WidgetSetup("krampus_sack")	--安装部件【小偷背包】

    MakeHauntableLaunchAndDropFirstItem(inst)

    return inst
end

return Prefab("krampus_sack", fn, assets)