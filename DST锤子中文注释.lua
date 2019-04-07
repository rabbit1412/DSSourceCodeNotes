local assets =	--预制动画
{
    Asset("ANIM", "anim/hammer.zip"),
    Asset("ANIM", "anim/swap_hammer.zip"),
}

local function onequip(inst, owner)	--拿起装备函数
    owner.AnimState:OverrideSymbol("swap_object", "swap_hammer", "swap_hammer")
    owner.AnimState:Show("ARM_carry")	--动画显示
    owner.AnimState:Hide("ARM_normal")	--动画隐藏
end

local function onunequip(inst, owner)	--卸载装备函数
    owner.AnimState:Hide("ARM_carry")	--动画显示
    owner.AnimState:Show("ARM_normal")	--动画隐藏
end

local function fn()	--fn函数
    local inst = CreateEntity()	--创建实体

    inst.entity:AddTransform()		--实体:添加改造
    inst.entity:AddAnimState()		--实体:添加动画状态
    inst.entity:AddSoundEmitter()	--实体:添加声音
    inst.entity:AddNetwork()		--实体:添加网络

    MakeInventoryPhysics(inst)		--物理动画

    inst:AddTag("hammer")	--添加标签【hammer】

    if not TheWorld.ismastersim then	--如果 不是主机
        return inst
    end

    inst.AnimState:SetBank("hammer")		--设置Bank
    inst.AnimState:SetBuild("hammer")		--设置Build
    inst.AnimState:PlayAnimation("idle")	--播放动画【空闲】

    inst:AddComponent("weapon")								--添加组件【武器】
    inst.components.weapon:SetDamage(TUNING.HAMMER_DAMAGE)		--组件.武器.设置伤害

    inst:AddComponent("inventoryitem")						--添加组件【放入仓库】
    -----
    inst:AddComponent("tool")								--添加组件【工具】
    inst.components.tool:SetAction(ACTIONS.HAMMER)				--组件.工具:设置规定动作【锤】
    -------
    inst:AddComponent("finiteuses")								--添加组件【有限使用】
    inst.components.finiteuses:SetMaxUses(TUNING.HAMMER_USES)		--组件.有限使用.设置:最大使用次数
    inst.components.finiteuses:SetUses(TUNING.HAMMER_USES)			--组件.有限使用.设置:使用次数

    inst.components.finiteuses:SetOnFinished(inst.Remove)			--组件.有限使用.设置:结束移除
    inst.components.finiteuses:SetConsumption(ACTIONS.HAMMER, 1)	--组件.有限使用.设置:消耗【锤,1】
    -------

    MakeHauntableLaunch(inst)										--使用该table启动

    inst:AddComponent("inspectable")								--添加组件【检查】

    inst:AddComponent("equippable")									--添加组件【装备】

    inst.components.equippable:SetOnEquip(onequip)					--组件.装备.设置:设置拿起装备【拿起装备函数】
    inst.components.equippable:SetOnUnequip(onunequip)				--组件.装备.设置:设置卸下装备【卸下装备函数】

    return inst
end

return Prefab("hammer", fn, assets)	--Prefab("物品名", fn函数体, assets材质)
