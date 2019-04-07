local assets =
{
    Asset("ANIM", "anim/pan_flute.zip"),
}

local function HearPanFlute(inst, musician, instrument)	--听到的单位函数
    if inst ~= musician and	--第一个参数~=第二个参数 并且
        (TheNet:GetPVPEnabled() or not inst:HasTag("player")) and	--得到(网络:获得PVP启用) 或者 不是 包含标签【玩家】 并且
        not (inst.components.freezable ~= nil and inst.components.freezable:IsFrozen()) and --不是 组件.冻结~=空 并且 组件.冻结.是冻结 并且
        not (inst.components.pinnable ~= nil and inst.components.pinnable:IsStuck()) then
        if inst.components.sleeper ~= nil then --如果 组件.睡觉~=空 
            inst.components.sleeper:AddSleepiness(10, TUNING.PANFLUTE_SLEEPTIME)	--组件.睡觉:添加睡眠单位【10,数量】
        elseif inst.components.grogginess ~= nil then	--组件.摇摇晃晃~=空
            inst.components.grogginess:AddGrogginess(10, TUNING.PANFLUTE_SLEEPTIME)	--组件.摇摇晃晃:添加摇摇晃晃单位【10,数量】
        else
            inst:PushEvent("knockedout")	--推出事件【"倒下"】
        end
    end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst:AddTag("flute")

    inst.AnimState:SetBank("pan_flute")
    inst.AnimState:SetBuild("pan_flute")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")
    inst:AddComponent("instrument")	--添加组件【乐器】
    inst.components.instrument.range = TUNING.PANFLUTE_SLEEPRANGE	--组件.乐器.范围
    inst.components.instrument:SetOnHeardFn(HearPanFlute)	--组件.乐器.设置听到【听到的单位函数】

    inst:AddComponent("tool")
    inst.components.tool:SetAction(ACTIONS.PLAY)

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.PANFLUTE_USES)
    inst.components.finiteuses:SetUses(TUNING.PANFLUTE_USES) --finiteuses:SetUses函数
    inst.components.finiteuses:SetOnFinished(inst.Remove)
    inst.components.finiteuses:SetConsumption(ACTIONS.PLAY, 1)--设置消耗方式【动作,1】

    inst:AddComponent("inventoryitem")

    MakeHauntableLaunch(inst)
    AddHauntableCustomReaction(inst, function(inst, haunter)--该表添加自定义的反应
        if math.random() <= TUNING.HAUNT_CHANCE_HALF then	--如果 随机函数<=一半的机会
            if inst.components.finiteuses then	--如果 组件.有限使用 存在 
                inst.components.finiteuses:Use(1)	--组件.有限使用:使用(1) 关联finiteuses:SetUses函数
                inst.components.hauntable.hauntvalue = TUNING.HAUNT_MEDIUM	--组件.该表.该值=出没媒介
                return true
            end
        end
        return false
    end, true, false, true)

    return inst
end

return Prefab("panflute", fn, assets)