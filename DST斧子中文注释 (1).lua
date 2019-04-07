local assets = --预制动画
{
    Asset("ANIM", "anim/axe.zip"),
    Asset("ANIM", "anim/goldenaxe.zip"),
    Asset("ANIM", "anim/swap_axe.zip"),
    Asset("ANIM", "anim/swap_goldenaxe.zip"),
}

local function onequip(inst, owner)		--拿起装备函数
    owner.AnimState:Show("ARM_carry")	--动画显示
    owner.AnimState:Hide("ARM_normal")	--动画隐藏
	
	local skin_build = inst:GetSkinBuild()	--skin_build=获取build
	if skin_build ~= nil then	--如果 skin_build~= 空
		owner:PushEvent("equipskinneditem", inst:GetSkinName())	--推送事件（使用物品,获取物品名称）
		
		owner.AnimState:OverrideItemSkinSymbol("swap_object", skin_build, "swap_axe", inst.GUID, "swap_axe" )
	else
		owner.AnimState:OverrideSymbol("swap_object", "swap_axe", "swap_axe")
	end
end

local function onunequip(inst, owner)	--卸载装备函数
    owner.AnimState:Hide("ARM_carry")	--动画显示
    owner.AnimState:Show("ARM_normal")	--动画隐藏
	
    local skin_build = inst:GetSkinBuild()	--skin_build=获取build
    if skin_build ~= nil then	--如果 skin_build~= 空
        owner:PushEvent("unequipskinneditem", inst:GetSkinName())--推送事件（使用物品,获取物品名称）
    end
end

local function common_fn(bank, build)	--常见fn
    local inst = CreateEntity()		--创建实体

    inst.entity:AddTransform()		--添加改造
    inst.entity:AddAnimState()		--添加动画状态
    inst.entity:AddSoundEmitter()	--添加声音
    inst.entity:AddNetwork()		--添加网络

    MakeInventoryPhysics(inst)		--物理动画

    inst.AnimState:SetBank(bank)	--设置bank
    inst.AnimState:SetBuild(build)	--设置build
	
    inst.AnimState:PlayAnimation("idle")	--播放动画【空闲】

    inst:AddTag("sharp")	--添加标签【sharp】

    inst.entity:SetPristine()	--实体:设置原始状态

    if not TheWorld.ismastersim then	--如果 不是主世界
        return inst						
    end

    inst:AddComponent("weapon")							--添加组件【武器】			
    inst.components.weapon:SetDamage(TUNING.AXE_DAMAGE)		--组件.武器.设置伤害

    inst:AddComponent("inventoryitem")					--添加组件【放入仓库】
    -----
    inst:AddComponent("tool")							--添加组件【工具】
    inst.components.tool:SetAction(ACTIONS.CHOP)			--组件.工具:设置规定动作【砍】
    -------
    inst:AddComponent("finiteuses")						--添加组件【有限使用】
    inst.components.finiteuses:SetMaxUses(TUNING.AXE_USES)			--组件.有限使用.设置:最大使用次数
    inst.components.finiteuses:SetUses(TUNING.AXE_USES)				--组件.有限使用.设置:使用次数
    inst.components.finiteuses:SetOnFinished(inst.Remove)			--组件.有限使用.设置:结束移除
    inst.components.finiteuses:SetConsumption(ACTIONS.CHOP, 1)		--组件.有限使用.设置:消耗【砍,1】
    -------

    inst:AddComponent("inspectable")					--添加组件【可检查】
    
    inst:AddComponent("equippable")						--添加组件【装备】

    inst.components.equippable:SetOnEquip(onequip)		--组件.装备.设置:设置拿起装备【拿起装备函数】

    inst.components.equippable:SetOnUnequip(onunequip)	--组件.装备.设置:设置卸下装备【卸下装备函数】

    MakeHauntableLaunch(inst)							--使用该table启动

    return inst
end

local function onequipgold(inst, owner) --黄金装备函数
    owner.AnimState:OverrideSymbol("swap_object", "swap_goldenaxe", "swap_goldenaxe")	--动画
    owner.SoundEmitter:PlaySound("dontstarve/wilson/equip_item_gold")     --声音
    owner.AnimState:Show("ARM_carry") 	--动画显示
    owner.AnimState:Hide("ARM_normal") 	--动画隐藏
end

local function normal()	--正常函数
    return common_fn("axe", "axe")	--common_fn(bank, build)
end

local function golden()	--黄金装备函数
    local inst = common_fn("goldenaxe", "goldenaxe")--common_fn(bank, build)

    if not TheWorld.ismastersim then	--如果 不是主世界
        return inst
    end

    inst.components.finiteuses:SetConsumption(ACTIONS.CHOP, 1 / TUNING.GOLDENTOOLFACTOR)	--组件.有限使用.设置:消耗【砍,1/】
    inst.components.weapon.attackwear = 1 / TUNING.GOLDENTOOLFACTOR							--组件.攻击磨损.设置伤害
    inst.components.equippable:SetOnEquip(onequipgold)										--组件.装备.设置:设置拿起装备【拿起装备函数】
    
    return inst
end

return Prefab("axe", normal, assets),			--返回 预制
        Prefab("goldenaxe", golden, assets)