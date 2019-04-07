local assets =
{
    Asset("ANIM", "anim/ham_bat.zip"),
    Asset("ANIM", "anim/swap_ham_bat.zip"),
}

local function UpdateDamage(inst)	--更新伤害函数
    if inst.components.perishable and inst.components.weapon then	--如果 腐败组件存在 并且 武器组件存在
        local dmg = TUNING.HAMBAT_DAMAGE * inst.components.perishable:GetPercent()	--dmg = 火腿棒伤害值*组件.腐败.获得百分比
        dmg = Remap(dmg, 0, TUNING.HAMBAT_DAMAGE, TUNING.HAMBAT_MIN_DAMAGE_MODIFIER*TUNING.HAMBAT_DAMAGE, TUNING.HAMBAT_DAMAGE)
		--dmg = 映射(dmg,0,火腿棒伤害值,最小减免*火腿棒伤害值，火腿棒伤害值) 
		--我也没太搞懂 这个函数的意思  应该是动态修改全局变量的作用  【火腿棒的伤害值】
		--随着 火腿棒的腐败 攻击力也随之下降
        inst.components.weapon:SetDamage(dmg)
    end
end

local function OnLoad(inst, data)
    UpdateDamage(inst)
end

local function onequip(inst, owner)
    UpdateDamage(inst)
    owner.AnimState:OverrideSymbol("swap_object", "swap_ham_bat", "swap_ham_bat")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    UpdateDamage(inst)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("ham_bat")
    inst.AnimState:SetBuild("ham_bat")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("show_spoilage")
    inst:AddTag("icebox_valid")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("perishable")	--腐败组件
    inst.components.perishable:SetPerishTime(TUNING.PERISH_MED)	--腐败事件
    inst.components.perishable:StartPerishing()	--开始腐败
    inst.components.perishable.onperishreplacement = "spoiled_food"	--腐败替换物品 【腐烂的食物】

    inst:AddComponent("weapon")	--武器组件
    inst.components.weapon:SetDamage(TUNING.HAMBAT_DAMAGE)	--攻击力
    inst.components.weapon:SetOnAttack(UpdateDamage)	--在攻击是【更新伤害函数】

    inst.OnLoad = OnLoad

    -------	可以吃
    --[[
    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.MEAT	--食物类型【肉】
    inst.components.edible.healthvalue = -TUNING.HEALING_MEDSMALL	--加三围
    inst.components.edible.hungervalue = TUNING.CALORIES_MED
    inst.components.edible.sanityvalue = -TUNING.SANITY_MED
    --]]

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")

    MakeHauntableLaunchAndPerish(inst)

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    return inst
end

return Prefab( "hambat", fn, assets) 