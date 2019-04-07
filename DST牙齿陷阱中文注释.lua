local assets =
{
    Asset("ANIM", "anim/trap_teeth.zip"),
    Asset("ANIM", "anim/trap_teeth_maxwell.zip"),
	Asset("MINIMAP_IMAGE", "toothtrap"),
}

local function onfinished_normal(inst)	--在完成_正常函数
    inst:RemoveComponent("inventoryitem")	--移除组件【库存】
    inst:RemoveComponent("mine")			--移除组件【我的】
    inst.persists = false					--仍然存在【假】
    inst.AnimState:PushAnimation("used", false)						--动画
    inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")	--声音
    inst:DoTaskInTime(3, inst.Remove)	--在这个时间做【3,移除】
end

local function onused_maxwell(inst)	--在使用麦斯威尔函数
    inst.AnimState:PlayAnimation("used", false)						--动画
    inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")	--声音
    inst:DoTaskInTime(3, inst.Remove)	--在这个时间做【3,移除】
end

local function onfinished_maxwell(inst)	--在完成了麦斯威尔函数
    inst:RemoveComponent("mine")			--移除组件【我的】
    inst.persists = false					--仍然存在【假】
    inst:DoTaskInTime(1.25, onused_maxwell)	--在这个时间做【3,在使用麦斯威尔函数】
end

local function OnExplode(inst, target)	--在爆炸函数
    inst.AnimState:PlayAnimation("trap")						--动画
    if target then		--目标存在
        inst.SoundEmitter:PlaySound("dontstarve/common/trap_teeth_trigger")		--声音
        target.components.combat:GetAttacked(inst, TUNING.TRAP_TEETH_DAMAGE)	--组件.战斗.被袭击了
    end
    if inst.components.finiteuses then			--如果 组件.有限使用 存在
        inst.components.finiteuses:Use(1)		--组件.有限使用 -1
    end
end

local function OnReset(inst)		--在重置函数
    inst.SoundEmitter:PlaySound("dontstarve/common/trap_teeth_reset")	--声音
    inst.AnimState:PlayAnimation("reset")								--动画
    inst.AnimState:PushAnimation("idle", false)							--动画
end

local function OnResetMax(inst)		--在重置最大函数
    inst.SoundEmitter:PlaySound("dontstarve/common/trap_teeth_reset")	--声音
    inst.AnimState:PlayAnimation("idle")								--动画
    --inst.AnimState:PushAnimation("idle", false)
end

local function SetSprung(inst)		--设置弹起函数
    inst.AnimState:PlayAnimation("trap_idle")							--动画
end

local function SetInactive(inst)	--设置闲置函数
    inst.AnimState:PlayAnimation("inactive")							--动画
end

local function OnDropped(inst)		--在库存函数
    inst.components.mine:Deactivate()	--组件.我的.关闭
end

local function ondeploy(inst, pt, deployer)	--在部署函数
    inst.components.mine:Reset()	--组件.我的:重置
    inst.Physics:Teleport(pt:Get())	--物理.传送【pt:抓到】
end

--legacy save support - mines used to start out activated
--遗产保存支持用于开始激活我的
local function onload(inst, data)	--在加载函数
    if not data or not data.mine then	--如果不是data存在或者不是data.我的
        inst.components.mine:Reset()	--组件.我的.重置
    end
end

local function common_fn(bank, build, isinventoryitem)
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.MiniMapEntity:SetIcon("toothtrap.png")	--小地图

    inst.AnimState:SetBank(bank)
    inst.AnimState:SetBuild(build)
    inst.AnimState:PlayAnimation("idle")

    inst:AddTag("trap")	--标签

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    if isinventoryitem then
        inst:AddComponent("inventoryitem")
        inst.components.inventoryitem.nobounce = true
        inst.components.inventoryitem:SetOnDroppedFn(OnDropped)	--在库存函数FN(在库存函数)
    end

    inst:AddComponent("mine")	--添加组件【我的】
    inst.components.mine:SetRadius(TUNING.TRAP_TEETH_RADIUS)	--设置半径
    inst.components.mine:SetAlignment("player")					--设置队列【玩家】
    inst.components.mine:SetOnExplodeFn(OnExplode)				--设置爆炸函数【在爆炸函数】
    inst.components.mine:SetOnResetFn(OnReset)					--设置重置函数【在重置函数】
    inst.components.mine:SetOnSprungFn(SetSprung)				--设置弹起函数FN【设置弹起函数】
    inst.components.mine:SetOnDeactivateFn(SetInactive)			--是设置停用函数FN【设置闲置函数】
    --inst.components.mine:StartTesting()

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.TRAP_TEETH_USES)
    inst.components.finiteuses:SetUses(TUNING.TRAP_TEETH_USES)
    inst.components.finiteuses:SetOnFinished(onfinished_normal)

    inst:AddComponent("deployable")									--设置部署函数
    inst.components.deployable.ondeploy = ondeploy					--组件.部署.在部署=在部署函数
    inst.components.deployable:SetDeploySpacing(DEPLOYSPACING.LESS)	--组件.部署.设置部署间距

    inst:AddComponent("hauntable")									--添加出没表函数【inst，幽魂】
    inst.components.hauntable:SetOnHauntFn(function(inst, haunter)		--组件.出没表:设置在出没FN
        if inst.components.mine ~= nil then								--如果 组件.我的~=空
            if inst.components.mine.inactive then						--如果 组件.我的.无效
                Launch(inst, haunter, TUNING.LAUNCH_SPEED_SMALL)		--推出【inst,幽魂,推出速度小】
                inst.components.hauntable.hauntvalue = TUNING.HAUNT_TINY	--组件.出没表.出没值=出没小
                    return true									--返回 真
            elseif inst.components.mine.issprung then				--如果 组件.我的.是弹起的
                if math.random() <= TUNING.HAUNT_CHANCE_OFTEN then	--如果 随机函数<=机会出没
                    inst.components.hauntable.hauntvalue = TUNING.HAUNT_SMALL	--组件.出没表.出没值=出没小
                    inst.components.mine:Reset()								--组件.我的:重置
                    return true
                end
            elseif math.random() <= TUNING.HAUNT_CHANCE_HALF then	--如果 随机函数<=机会出没-半
                inst.components.hauntable.hauntvalue = TUNING.HAUNT_MEDIUM	--组件.出没表.出没值=出没中
                inst.components.mine:Explode(								--组件.我的:爆炸
                    FindEntity(													--找到实体
                        inst,														--inst，
                        TUNING.TRAP_TEETH_RADIUS * 1.5,								--牙齿陷阱半径*1.5,
                        function(dude, inst)										--隐式函数传递【老兄,inst】
                            return not (dude.components.health ~= nil and				--不是 组件.健康~=空
                                        dude.components.health:IsDead())				--组件.健康.是死的
                                and dude.components.combat:CanBeAttacked(inst)			--并且 组件.战斗.可以攻击【inst】
                        end,															
						--以下所有实体
                        { "_combat" }, -- see entityscript.lua
									   --  看 entityscript.lua
                        { "notraptrigger", "flying", "playerghost" },
                        { "monster", "character", "animal" }
                    )
                )
                return true
            end
        end
        return false
    end)

    inst.components.mine:Deactivate()	--组件.我的:停用
    inst.OnLoad = onload				--加载函数
    return inst
end

local function MakeTeethTrapNormal()	--使用牙齿陷阱正常
    return common_fn("trap_teeth", "trap_teeth", true)	
end

local function MakeTeethTrapMaxwell()	--使用麦斯威尔陷阱
    local inst = common_fn("trap_teeth_maxwell", "trap_teeth_maxwell")

    if not TheWorld.ismastersim then
        return inst
    end

    inst.components.mine:SetAlignment("nobody")		--设置队列【没有人】
    inst.components.mine:SetOnResetFn(OnResetMax)	--设置重置FN(在重置最大函数)
    inst.components.finiteuses:SetMaxUses(1)	--最大使用 1次
    inst.components.finiteuses:SetUses(1)		--使用1次
    inst.components.finiteuses:SetOnFinished(onfinished_maxwell)	--设置在用完【在完成了麦斯威尔函数】

    inst.components.mine:Reset()	--组件.我的.重置

    return inst
end

return Prefab("trap_teeth", MakeTeethTrapNormal, assets),
    MakePlacer("trap_teeth_placer", "trap_teeth", "trap_teeth", "idle"),
    Prefab("trap_teeth_maxwell", MakeTeethTrapMaxwell, assets)
