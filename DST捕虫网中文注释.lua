local assets =
{
    Asset("ANIM", "anim/bugnet.zip"),
    Asset("ANIM", "anim/swap_bugnet.zip"),
}

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_bugnet", "swap_bugnet")
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

    inst.AnimState:SetBank("bugnet")
    inst.AnimState:SetBuild("bugnet")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")								--添加组件【武器】
    inst.components.weapon:SetDamage(TUNING.BUGNET_DAMAGE)		--组件.武器.设置攻击力
    inst.components.weapon.attackwear = 3						--组件.武器.攻击磨损

    -----
    inst:AddComponent("tool")								--添加组件【工具】
    inst.components.tool:SetAction(ACTIONS.NET)					--组件.工具.规定动作【网】
    -------

    inst:AddComponent("finiteuses")								--添加组件【限制使用】
    inst.components.finiteuses:SetMaxUses(TUNING.BUGNET_USES)
    inst.components.finiteuses:SetUses(TUNING.BUGNET_USES)
    inst.components.finiteuses:SetOnFinished(inst.Remove)

    inst.components.finiteuses:SetConsumption(ACTIONS.NET, 1)		--组件.限制使用:消耗方式【网,1】

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("bugnet", fn, assets)