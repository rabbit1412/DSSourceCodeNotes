local assets =	--预制材质
{
    Asset("ANIM", "anim/pickaxe.zip"),
    Asset("ANIM", "anim/goldenpickaxe.zip"),
    Asset("ANIM", "anim/swap_pickaxe.zip"),
    Asset("ANIM", "anim/swap_goldenpickaxe.zip"),
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

local function common_fn(bank, build)
    local inst = CreateEntity()	--创建实体

    inst.entity:AddTransform()		--实体:添加改造
    inst.entity:AddAnimState()		--实体:添加动画状态
    inst.entity:AddSoundEmitter()	--实体:添加声音
    inst.entity:AddNetwork()		--实体:添加网络

    MakeInventoryPhysics(inst)		--物理动画

    inst.AnimState:SetBank(bank)	--设置bank
    inst.AnimState:SetBuild(build)	--设置build
    inst.AnimState:PlayAnimation("idle")	--播放动画【空闲】

    inst:AddTag("sharp")	--添加标签【sharp】

    inst.entity:SetPristine()	--实体:设置原始状态	

    if not TheWorld.ismastersim then --如果	不是主机
        return inst
    end

    -----
    inst:AddComponent("tool")					--添加组件【工具】
    inst.components.tool:SetAction(ACTIONS.MINE)	--组件.工具.规定动作：敲矿
    -------
    inst:AddComponent("finiteuses")								--添加组件【有限使用】
    
    inst.components.finiteuses:SetMaxUses(TUNING.PICKAXE_USES)		--组件.有限使用.设置最大使用次数
    inst.components.finiteuses:SetUses(TUNING.PICKAXE_USES)			--组件.有限使用.设置使用次数
    inst.components.finiteuses:SetOnFinished(inst.Remove) 			--组件.有限使用.移除
    inst.components.finiteuses:SetConsumption(ACTIONS.MINE, 1)		--组件.有限使用.设置消耗【敲矿,1】
    -------

    inst:AddComponent("weapon")									--添加组件【武器】
    inst.components.weapon:SetDamage(TUNING.PICK_DAMAGE)			--组件.武器:设置攻击

    inst:AddComponent("inspectable")							--添加组件【检测】

    inst:AddComponent("inventoryitem")							--添加组件【放入仓库】

    inst:AddComponent("equippable")								--添加组件【装备】

    inst.components.equippable:SetOnEquip(onequip)					--组件.装备:设置拿起装备【函数】
    inst.components.equippable:SetOnUnequip(onunequip)				--组件.装备:设置卸下装备【函数】

    MakeHauntableLaunch(inst)										--设置物理状态

    return inst
end

local function onequipgold(inst, owner)	--拿起黄金装备函数
    owner.AnimState:OverrideSymbol("swap_object", "swap_goldenpickaxe", "swap_goldenpickaxe")	--动画
    owner.SoundEmitter:PlaySound("dontstarve/wilson/equip_item_gold")							--声音
    owner.AnimState:Show("ARM_carry")	--动画显示
    owner.AnimState:Hide("ARM_normal")	--动画隐藏
end

local function normal()	--正常函数
    return common_fn("pickaxe", "pickaxe")	--common_fn(bank, build)
end

local function golden()	--黄金装备函数
    local inst = common_fn("goldenpickaxe", "goldenpickaxe") --common_fn(bank, build)

    if not TheWorld.ismastersim then	--如果 不是主机
        return inst
    end

    inst.components.finiteuses:SetConsumption(ACTIONS.MINE, 1 / TUNING.GOLDENTOOLFACTOR)	--组件.有限使用:设置消耗【敲矿,1/】
    inst.components.weapon.attackwear = 1 / TUNING.GOLDENTOOLFACTOR							--组件.武器:攻击磨损

    inst.components.equippable:SetOnEquip(onequipgold)										--组件.装备:设置拿起装备【函数】

    return inst
end

return Prefab("pickaxe", normal, assets),		--Prefab("物品名", fn函数体, assets材质)
    Prefab("goldenpickaxe", golden, assets)		