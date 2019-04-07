local assets =	--材质
{
    Asset("ANIM", "anim/torch.zip"),
    Asset("ANIM", "anim/swap_torch.zip"),
    Asset("SOUND", "sound/common.fsb"),
}

local prefabs =
{
    "torchfire",	--火炬的火
}

local function onequipfueldelta(inst)	--燃料函数
    if inst.components.fueled.currentfuel < inst.components.fueled.maxfuel then	--如果 组件.燃料.当前的燃料<组件.燃料.最大燃料
        inst.components.fueled:DoDelta(-.01 * inst.components.fueled.maxfuel)	--组件.燃料:做(-0.01*组件.燃料.最大燃料)
    end																			--燃料最大值 -1％
end

local function onequip(inst, owner)	--拿起装备函数
    inst.components.burnable:Ignite()	--组件.燃烧:开始燃烧

    local skin_build = inst:GetSkinBuild()	--skin_build=获取Build
    if skin_build ~= nil then --如果 skin_build~=空
        owner:PushEvent("equipskinneditem", inst:GetSkinName())	--推送事件("使用皮肤物品",获取皮肤Name)
        owner.AnimState:OverrideItemSkinSymbol("swap_object", skin_build, "swap_torch", inst.GUID, "swap_torch")	--皮肤
    else
        owner.AnimState:OverrideSymbol("swap_object", "swap_torch", "swap_torch")
    end
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")

    inst.SoundEmitter:PlaySound("dontstarve/wilson/torch_LP", "torch")	--声音	拿出火把的声音
    inst.SoundEmitter:PlaySound("dontstarve/wilson/torch_swing")
    inst.SoundEmitter:SetParameter("torch", "intensity", 1)	--发出声音:设置参数("名称","强度",1)

    if inst.fires == nil then	--如果 火=空
        inst.fires = {}	--火={} 空表
		--将所有获取的所有特效物品 写入【fx_prefab】
        for i, fx_prefab in ipairs(inst:GetSkinName() == nil and { "torchfire" } or SKIN_FX_PREFAB[inst:GetSkinName()] or {}) do
            local fx = SpawnPrefab(fx_prefab)	--fx= 预制物品【fx_prefab】
            fx.entity:SetParent(owner.entity)	--实体:设置固定物品【这个实体】
            fx.entity:AddFollower()				--实体:添加跟随
            fx.Follower:FollowSymbol(owner.GUID, "swap_object", 0, fx.fx_offset, 0) --跟随:跟随标志【这个物品的GUID,"交换对象",0,fx.偏移,0】
																				
            table.insert(inst.fires, fx)	--表.插入【火,fx】
        end
    end
	

	--以百分之一的燃料下一个框架，而不是这一个，所以我们可以正确地删除火炬，如果它在这一点上运行 
    --take a percent of fuel next frame instead of this one, so we can remove the torch properly if it runs out at that point
    inst:DoTaskInTime(0, onequipfueldelta) --执行任务到这个时间做【0,燃料函数】
end

local function onunequip(inst, owner)	--卸下装备函数
	local skin_build = inst:GetSkinBuild()	--skin_build=获取Build
    if skin_build ~= nil then --如果 skin_build~=空
        owner:PushEvent("unequipskinneditem", inst:GetSkinName())	--推送事件【"卸下皮肤物品",获取物品Name】
    end

    if inst.fires ~= nil then	--如果 火表~=空
        for i, fx in ipairs(inst.fires) do	--将火表值写入fx
            fx:Remove()	--fx:移除	--这里是移除里边的物品
        end
        inst.fires = nil	--火表=空
        inst.SoundEmitter:PlaySound("dontstarve/common/fireOut")	--播放声音 解除火焰
    end

    inst.components.burnable:Extinguish()	--组件.燃烧.停止燃烧
    owner.AnimState:Hide("ARM_carry") 
    owner.AnimState:Show("ARM_normal")
    inst.SoundEmitter:KillSound("torch")	--发出:物品消失的声音【火把】
end

local function onpocket(inst, owner)	--在库存函数
    inst.components.burnable:Extinguish()	--组件.燃烧.停止燃烧
end

local function onattack(weapon, attacker, target)	--攻击函数【武器，攻击者，目标】
    if target ~= nil and target.components.burnable ~= nil and math.random() < TUNING.TORCH_ATTACK_IGNITE_PERCENT * target.components.burnable.flammability then
		--如果 目标~=空 并且 目标.组件.燃烧~=空 并且 函数.随机数 < TUNING.TORCH_ATTACK_IGNITE_PE4RCENT*目标.组件.燃烧.易燃
	   target.components.burnable:Ignite(nil, attacker)	--目标.组件.燃烧:点燃(空,攻击者)
    end
end

local function onupdatefueledraining(inst)	--关于更新下雨时函数
    local owner = inst.components.inventoryitem ~= nil and inst.components.inventoryitem.owner or nil
	--owner = 组件.在库存的的物品~=空 |并且| (组件.在库存的物品.owner |或者|空) 
	--解释 owner = 布尔值不会被赋值|并且| 【真】 返回 【owner】 【假】 返回 【空】
    inst.components.fueled.rate =	--组件.燃烧.速度
        owner ~= nil and	--owner~=空	【布尔值】并且
        owner.components.sheltered ~= nil and	--组件.免疫~=空【布尔值】 并且
        owner.components.sheltered.sheltered and	--组件.免疫.免疫【布尔值】 并且
		--前面的是判断 布尔不返回值
        1 or 1 + TUNING.TORCH_RAIN_RATE * TheWorld.state.precipitationrate
		--【真】 返回 1 |或者| 【假】 1 + TUNING.TORCH_RAIN_RATE * TheWorld.state.precipitationrate
end

local function onisraining(inst, israining)	--在下雨函数【inst，在下雨】
    if inst.components.fueled ~= nil then	--如果 组件.燃烧~=空
        if israining then	--如果 在下雨
            inst.components.fueled:SetUpdateFn(onupdatefueledraining) --组件.燃烧率"设置更新FN(关于下雨时函数)
        else
            inst.components.fueled:SetUpdateFn()	--组件.燃烧:设置更新FN()
            inst.components.fueled.rate = 1			--组件.燃烧.速度=1
        end
    end
end

local function sectioncallback(newsection, oldsection, inst) --调回部分函数【新的调回部分，旧的调回部分,inst】
    if newsection == 0 then	--如果 新的调回部分==0
        --当我们燃烧的时候
		--when we burn out
        if inst.components.burnable ~= nil then		--组件.燃烧~=空
            inst.components.burnable:Extinguish()	--组件.燃烧.停止燃烧
        end
        local equippable = inst.components.equippable	--装备=组件.装备
        if equippable ~= nil and equippable:IsEquipped() then	--如果 装备~=空 |并且| 装备:是装备的
            local owner = inst.components.inventoryitem ~= nil and inst.components.inventoryitem.owner or nil	
			--owner = 组件.在库存的的物品~=空 |并且| (组件.在库存的物品.owner |或者|空) 
		--解释 owner = 布尔值不会被赋值|并且| 【真】 返回 【owner】 【假】 返回 【空】
            if owner ~= nil then	--如果 owner~=空
                local data =	--data 赋值为 一个表
                {
                    prefab = inst.prefab,				--预制
                    equipslot = equippable.equipslot,	--在指定位置装备物品
                    announce = "ANNOUNCE_TORCH_OUT",	--公告
                }
                inst:Remove()	--移除
                owner:PushEvent("itemranout", data)	--推送事件("itemranout", data)	
                return
            end
        end
        inst:Remove()	--移除
    end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("torch")
    inst.AnimState:SetBuild("swap_torch")
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("wildfireprotected")
	--打火机（从打火机组件）添加到原始状态的优化 
    --lighter (from lighter component) added to pristine state for optimization
    inst:AddTag("lighter")	--添加标签【打火机】
	
	--防水（防水组件从）添加到原始状态优化
    --waterproofer (from waterproofer component) added to pristine state for optimization
    inst:AddTag("waterproofer")	--添加标签【防水】

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.TORCH_DAMAGE)
    inst.components.weapon:SetOnAttack(onattack)	--设置正在攻击(攻击函数)

    -----------------------------------
    inst:AddComponent("lighter")	--添加组件打火机
    -----------------------------------

    inst:AddComponent("inventoryitem")
    -----------------------------------

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnPocket(onpocket)	--设置在库存(在库存函数)
    inst.components.equippable:SetOnEquip(onequip)		--设置拿起装备(拿起装备函数)
    inst.components.equippable:SetOnUnequip(onunequip)	--设置卸下装备(卸下装备函数)

    -----------------------------------

    inst:AddComponent("waterproofer")	--添加组件防水
    inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL)	--组件.防水:设置防水率

    -----------------------------------

    inst:AddComponent("inspectable")

    -----------------------------------

    inst:AddComponent("burnable")	--添加组件燃烧
    inst.components.burnable.canlight = false	--组件.燃烧.发光
    inst.components.burnable.fxprefab = nil		--组件.燃烧.fx预制 = nil

    -----------------------------------

    inst:AddComponent("fueled")	--添加组件燃料
    inst.components.fueled:SetSectionCallback(sectioncallback)		--组件.燃烧.设置调回【调回部分函数】
    inst.components.fueled:InitializeFuelLevel(TUNING.TORCH_FUEL)	--组件.燃烧.初始燃烧等级
    inst.components.fueled:SetDepletedFn(inst.Remove)				--组件.燃烧.设置耗尽【移除】

    inst:WatchWorldState("israining", onisraining)	--世界状态【"是下雨",在下雨函数】
    onisraining(inst, TheWorld.state.israining)	--在下雨函数【inst,世界.状态.是下雨】

    MakeHauntableLaunch(inst)	--发布这个这个表【inst】

    return inst
end

return Prefab("torch", fn, assets, prefabs)
