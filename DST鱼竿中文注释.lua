local assets =
{
    Asset("ANIM", "anim/fishingrod.zip"),
    Asset("ANIM", "anim/swap_fishingrod.zip"),
}

local function onequip (inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_fishingrod", "swap_fishingrod")
    owner.AnimState:OverrideSymbol("fishingline", "swap_fishingrod", "fishingline")
    owner.AnimState:OverrideSymbol("FX_fishing", "swap_fishingrod", "FX_fishing")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
    owner.AnimState:ClearOverrideSymbol("fishingline")
    owner.AnimState:ClearOverrideSymbol("FX_fishing")
end

local function onfished(inst)	--在钓鱼函数
    if inst.components.finiteuses then	--如果 组件.有限使用 (ture)存在
        inst.components.finiteuses:Use(1)	--组件.有限使用:使用(1) 
    end										--关联 FiniteUses:SetUses函数 
end											--FISHINGROD_USES = 9  每次 -1

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("fishingrod")
    inst.AnimState:SetBuild("fishingrod")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.FISHINGROD_DAMAGE)
    inst.components.weapon.attackwear = 4
    -----
    inst:AddComponent("fishingrod")					--添加组件【鱼竿】
    inst.components.fishingrod:SetWaitTimes(4, 40)		--组件.鱼竿:设置等待时间 
    inst.components.fishingrod:SetStrainTimes(0, 5)		--组件.鱼竿:设置应变时间
    -------
    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.FISHINGROD_USES)
    inst.components.finiteuses:SetUses(TUNING.FISHINGROD_USES)	--FiniteUses:SetUses函数
    inst.components.finiteuses:SetOnFinished(inst.Remove)
    inst:ListenForEvent("fishingcollect", onfished)		--监听事件【钓鱼收集,在钓鱼函数】

    ---------

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("fishingrod", fn, assets)