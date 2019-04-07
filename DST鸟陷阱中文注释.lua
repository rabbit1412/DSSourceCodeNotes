local assets =
{
    Asset("ANIM", "anim/birdtrap.zip"),
    Asset("SOUND", "sound/common.fsb"),

    Asset("ANIM", "anim/crow_build.zip"),
    Asset("ANIM", "anim/robin_build.zip"),
    Asset("ANIM", "anim/robin_winter_build.zip"),
    Asset("ANIM", "anim/canary_build.zip"),

    -- Swapsymbol assets
}

local prefabs =
{
    -- everything it can "produce" and might need symbol swaps from
	--它可以“生产”的一切，可能需要符号交换从
    "crow",
    "robin",
    "robin_winter",
    "canary",
}

--this should be redone as a periodic test, probably, so that we can control the expected return explicitly
--这应该是一个周期重做试验，也许，这样我们可以控制预期收益明确
local function OnSleep(inst)	--在睡眠函数
    if inst.components.trap ~= nil and inst.components.trap:IsBaited() and math.random() < .5 then
	--如果 组件.陷阱~=空 并且 组件.陷阱：是诱饵 并且 随机函数<0.5
        local birdspawner = TheWorld.components.birdspawner
		--鸟类产卵=世界.组件.鸟类产卵
        if birdspawner ~= nil then
			--如果 鸟类产卵~=空
            local pos = inst:GetPosition()
			--POS=得到位置
            local bird = birdspawner:SpawnBird(pos)
			--鸟=鸟类产卵:产卵鸟(pos)
            if bird ~= nil then
			--如果~=空
                bird.Physics:Teleport(pos:Get())
				--鸟.物理:传送(pos:抓到())
                bird:ReturnToScene()
				--鸟.返回场景
                inst.components.trap.target = bird
				--组件.陷阱.目标=鸟
                inst.components.trap:DoSpring()
				--组件.陷阱：在春天做
                inst.sg:GoToState("full")
				--sg:进入状态(满的)
            end
        end
    end
end

local sounds =	--声音
{
    close = "dontstarve/common/birdtrap_close",
    rustle = "dontstarve/common/birdtrap_rustle",
}

local function OnHarvested(inst)	--在捕获函数
    if inst.components.finiteuses then	--if 组件.有限使用存在
        inst.components.finiteuses:Use(1)	--组件.有限使用.使用 -1
    end
end

local function SetTrappedSymbols(inst, build)	--设置被困的集合函数【inst,建立】
    inst.trappedbuild = build	--被困建立=建立
    inst.AnimState:OverrideSymbol("trapped", build, "trapped")	--动画状态:重写
end

local function OnSpring(inst, target, bait)	--在春天【inst,目标,诱饵】
    if target.trappedbuild then				--目标.被困建立 存在
        SetTrappedSymbols(inst, target.trappedbuild)	--设置被困的集合函数[inst,目标,被困建立]
    end
end

local function OnSave(inst, data)
    if inst.trappedbuild then
        data.trappedbuild = inst.trappedbuild
    end
end

local function OnLoad(inst, data)
    if data and data.trappedbuild then
        SetTrappedSymbols(inst, data.trappedbuild)
    end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.MiniMapEntity:SetIcon("birdtrap.png")	--小地图图标

    inst.AnimState:SetBank("birdtrap")
    inst.AnimState:SetBuild("birdtrap")
    inst.AnimState:PlayAnimation("idle")
    inst.sounds = sounds	--拉入声音

    inst:AddTag("trap")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")
    inst:AddComponent("inventoryitem")

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.TRAP_USES)
    inst.components.finiteuses:SetUses(TUNING.TRAP_USES)
    inst.components.finiteuses:SetOnFinished(inst.Remove)

    inst:AddComponent("trap")	--陷阱
    inst.components.trap.targettag = "bird"				--组件.陷阱.目标标签【鸟】
    inst.components.trap:SetOnHarvestFn(OnHarvested)	--组件.陷阱:设置捕获FN(在捕获函数)
    inst.components.trap:SetOnSpringFn(OnSpring)		--组件.陷阱:设置捕获FN(在捕获函数)
    inst.components.trap.baitsortorder = 1				--组件.陷阱.饵料顺序

    inst:ListenForEvent("entitysleep", OnSleep)			--监听事件【实体睡觉,在睡觉函数】

    inst:SetStateGraph("SGtrap")						--设置状态图
    
    inst.OnSave = OnSave
    inst.OnLoad = OnLoad

    return inst
end

return Prefab("birdtrap", fn, assets, prefabs)
