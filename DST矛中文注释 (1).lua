local assets =
{
    Asset("ANIM", "anim/spear.zip"),
    Asset("ANIM", "anim/swap_spear.zip"),
}

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_spear", "swap_spear")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("spear")
    inst.AnimState:SetBuild("spear")
    inst.AnimState:PlayAnimation("idle")
	--标签
    inst:AddTag("sharp")
    inst:AddTag("pointy")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then	--不是主机
        return inst
    end

    inst:AddComponent("weapon")	--武器
    inst.components.weapon:SetDamage(TUNING.SPEAR_DAMAGE)
	
    -------

    inst:AddComponent("finiteuses")	--有限使用组件
    inst.components.finiteuses:SetMaxUses(TUNING.SPEAR_USES)	--最大使用
    inst.components.finiteuses:SetUses(TUNING.SPEAR_USES)	--使用

    inst.components.finiteuses:SetOnFinished(inst.Remove)	--消耗完(移除)

    inst:AddComponent("inspectable")	--检查组件

    inst:AddComponent("inventoryitem")	--仓库组件

    inst:AddComponent("equippable")	--装备组件
    inst.components.equippable:SetOnEquip(onequip)	--拿起
    inst.components.equippable:SetOnUnequip(onunequip)	--放下

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("spear", fn, assets)