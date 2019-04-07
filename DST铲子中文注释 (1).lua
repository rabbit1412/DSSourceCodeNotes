local assets =	--预制材质
{
    Asset("ANIM", "anim/shovel.zip"),
    Asset("ANIM", "anim/goldenshovel.zip"),
    Asset("ANIM", "anim/swap_shovel.zip"),
    Asset("ANIM", "anim/swap_goldenshovel.zip"),
}

local function onequip(inst, owner)	--拿起装备函数
    owner.AnimState:OverrideSymbol("swap_object", "swap_shovel", "swap_shovel")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)	--卸下装备函数
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function common_fn(bank, build)	--fn函数
    local inst = CreateEntity()	--创建实体

    inst.entity:AddTransform()		--实体:添加改造
    inst.entity:AddAnimState()		--实体:添加动画状态
    inst.entity:AddSoundEmitter()	--实体:添加声音
    inst.entity:AddNetwork()		--实体:添加网络

    MakeInventoryPhysics(inst)		--物理动画

    inst.AnimState:SetBank(bank)	--设置bank
    inst.AnimState:SetBuild(build)	--设置build
    inst.AnimState:PlayAnimation("idle")	--播放动画【空闲】

    inst.entity:SetPristine()	--实体:设置原始状态

    if not TheWorld.ismastersim then --如果 不是主机
        return inst
    end

    -----
    inst:AddComponent("tool")					--添加组件【工具】
    inst.components.tool:SetAction(ACTIONS.DIG)		--组件.工具.设置规定动作【挖】

    -------
    inst:AddComponent("finiteuses")								--添加组件【有限使用】
    inst.components.finiteuses:SetMaxUses(TUNING.SHOVEL_USES)		--组件.有限使用:设置最大使用次数
    inst.components.finiteuses:SetUses(TUNING.SHOVEL_USES)			--组件.有限使用:设置使用次数
    inst.components.finiteuses:SetOnFinished(inst.Remove) 			--组件.有限使用:用完移除
    inst.components.finiteuses:SetConsumption(ACTIONS.DIG, 1)		--组件.有限使用:消耗方式【挖,1】
    -------

    inst:AddComponent("weapon")								--添加组件【武器】
    inst.components.weapon:SetDamage(TUNING.SHOVEL_DAMAGE)		--组件.武器:攻击力

    inst:AddInherentAction(ACTIONS.DIG)							--添加固有动作【挖】

    inst:AddComponent("inspectable")							--添加组件【可检查】

    inst:AddComponent("inventoryitem")							--添加组件【可储存】

    inst:AddComponent("equippable")								--添加组件【装备】

    inst.components.equippable:SetOnEquip(onequip)					--组件.装备:设置拿起装备【函数】
    inst.components.equippable:SetOnUnequip(onunequip)				--组件.装备:设置卸下装备【函数】

    MakeHauntableLaunch(inst)										--设置物理状态

    return inst
end

local function onequipgold(inst, owner) --拿起黄金装备函数
    owner.AnimState:OverrideSymbol("swap_object", "swap_goldenshovel", "swap_goldenshovel")
    owner.SoundEmitter:PlaySound("dontstarve/wilson/equip_item_gold")     
    owner.AnimState:Show("ARM_carry") 
    owner.AnimState:Hide("ARM_normal") 
end

local function normal()	--正常函数
    return common_fn("shovel", "shovel")	--common_fn(bank, build)
end

local function golden()	--黄金装备函数
    local inst = common_fn("goldenshovel", "goldenshovel")

    if not TheWorld.ismastersim then	--如果 不是主机
        return inst
    end

    inst.components.finiteuses:SetConsumption(ACTIONS.DIG, 1 / TUNING.GOLDENTOOLFACTOR)				--组件.有限使用:消耗方式【挖,1/】
    inst.components.finiteuses:SetConsumption(ACTIONS.TERRAFORM, .125 / TUNING.GOLDENTOOLFACTOR)	--组件.有限使用:消耗方式【TERRAFORM,0.125/】
    inst.components.weapon.attackwear = 1 / TUNING.GOLDENTOOLFACTOR									--组件.武器:攻击磨损
    
    inst.components.equippable:SetOnEquip(onequipgold)												--组件.装备:设置拿起装备【函数】
    
    return inst
end

return Prefab("shovel", normal, assets),	--Prefab("物品名", fn函数体, assets材质)
    Prefab("goldenshovel", golden, assets)