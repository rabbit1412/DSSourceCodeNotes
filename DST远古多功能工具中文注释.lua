local assets =	--材质
{
    Asset("ANIM", "anim/multitool_axe_pickaxe.zip"),
    Asset("ANIM", "anim/swap_multitool_axe_pickaxe.zip"),
}

local function onequip(inst, owner)	--拿起函数
    owner.AnimState:OverrideSymbol("swap_object", "swap_multitool_axe_pickaxe", "swap_object")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)	--卸下函数
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function fn()	--fn函数
    local inst = CreateEntity()	--创建实体

    inst.entity:AddTransform()		--实体:添加改造
    inst.entity:AddAnimState()		--实体:添加动画状态
    inst.entity:AddSoundEmitter()	--实体:添加声音
    inst.entity:AddNetwork()		--实体:添加网络

    MakeInventoryPhysics(inst)		--物理动画

    inst.AnimState:SetBank("multitool_axe_pickaxe")		--设置bank
    inst.AnimState:SetBuild("multitool_axe_pickaxe")	--设置build
    inst.AnimState:PlayAnimation("idle")	--播放动画【空闲】

    inst:AddTag("sharp")	--添加标签【sharp】

    inst.entity:SetPristine()	--实体:设置原始状态

    if not TheWorld.ismastersim then	--如果 不是主机
        return inst
    end

    inst:AddComponent("weapon")									--添加组件【武器】
    inst.components.weapon:SetDamage(TUNING.MULTITOOL_DAMAGE)		--组件.武器:设置攻击力
    -----
    inst:AddComponent("tool")									--添加组件【工具】
    inst.components.tool:SetAction(ACTIONS.CHOP, 1.33)			--组件.工具.规定动作【砍,1.33】			--注意这里有了第二个参数 速度
    inst.components.tool:SetAction(ACTIONS.MINE, 1.33)			--组件.工具.规定动作【砸矿,1.33】
    -------
    inst:AddComponent("finiteuses")											--添加组件【有限使用】
    inst.components.finiteuses:SetMaxUses(TUNING.MULTITOOL_AXE_PICKAXE_USES)	--组件.有限使用:设置最大使用
    inst.components.finiteuses:SetUses(TUNING.MULTITOOL_AXE_PICKAXE_USES)		--组件.有限使用:设置每次使用
    inst.components.finiteuses:SetOnFinished(inst.Remove)						--组件.有限使用:用完移除
    inst.components.finiteuses:SetConsumption(ACTIONS.CHOP, 1)					--组件.有限使用:消耗方式【砍,1】
    inst.components.finiteuses:SetConsumption(ACTIONS.MINE, 3)					--组件.有限使用:消耗方式【砸矿,3】
    -------

    inst:AddComponent("inspectable")		--可检查

    inst:AddComponent("inventoryitem")		--可储存

    inst:AddComponent("equippable")					--添加组件【装备】
	
    inst.components.equippable:SetOnEquip(onequip)		--组件.装备:设置拿起装备【函数】

    inst.components.equippable:SetOnUnequip(onunequip)	--组件.装备:设置卸下装备【函数】

    MakeHauntableLaunch(inst)							--设置物理状态

    return inst
end

return Prefab("multitool_axe_pickaxe", fn, assets)	--Prefab("物品名", fn函数体, assets材质)