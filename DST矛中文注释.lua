-- 加载资源
local assets =
{
    Asset("ANIM", "anim/spear.zip"),        -- 资源路径 放地上的动画
-- 关键字（资源类型 ， 资源文件路径）    
    Asset("ANIM", "anim/swap_spear.zip"),   -- 资源路径 拿在手上的动画
}

-- 在装备函数
local function onequip(inst, owner)         -- 参数 （自己 ， 装备者）
-- 这里定义了一个叫做 onequip 的函数 参数是（装备自己 ， 装备的这个装备的对象【人或者生物，或者武器】）
    owner.AnimState:OverrideSymbol("swap_object", "swap_spear", "swap_spear") 
-- 装备者 替换 动画  
-- 这里将武器的装备在山上的动画替换准备者手上拿着的东西的动画
    owner.AnimState:Show("ARM_carry")
-- 显示 装备者的大手
    owner.AnimState:Hide("ARM_normal")
-- 隐藏 装备者的小手
end

-- 在卸下函数
local function onunequip(inst, owner)       -- 参数 （自己 ， 装备者）
    owner.AnimState:Hide("ARM_carry")       -- 隐藏装备者的大手
    owner.AnimState:Show("ARM_normal")      -- 显示装备者的小手
end

-- fn 函数  （或者 叫生成函数  主函数）
local function fn()
    local inst = CreateEntity()             -- 创建一个空白实体

    inst.entity:AddTransform()              -- 给空白实体添加 Transform 组件
    inst.entity:AddAnimState()              -- 给空白实体添加 AnimState 组件
    inst.entity:AddNetwork()                -- 给空白实体添加网络组件

    MakeInventoryPhysics(inst)              -- 给实体添加物理属性

    inst.AnimState:SetBank("spear")         -- 设置实体的动画 Bank 
    inst.AnimState:SetBuild("spear")        -- 设置实体的动画 Build
    inst.AnimState:PlayAnimation("idle")    -- 设置实体的动画 Animation
	--标签
    inst:AddTag("sharp")                    -- 添加标签 ：长矛是尖锐的
    inst:AddTag("pointy")                   -- 添加标签 ：长矛是尖尖的

    inst.entity:SetPristine()               -- 实体设定原始

    if not TheWorld.ismastersim then    	-- 如果不是主机
        return inst                         -- 返回实体
    end

    inst:AddComponent("weapon")                             	-- 添加武器组件
    inst.components.weapon:SetDamage(TUNING.SPEAR_DAMAGE)       -- 设置伤害

    inst:AddComponent("finiteuses")                         	-- 有限使用组件
    inst.components.finiteuses:SetMaxUses(TUNING.SPEAR_USES)	-- 设置最大使用
    inst.components.finiteuses:SetUses(TUNING.SPEAR_USES)   	-- 设置当前使用
    inst.components.finiteuses:SetOnFinished(inst.Remove)   	-- 设置在消耗完时执行的函数(移除)

    inst:AddComponent("inspectable")                        	-- 添加检查组件

    inst:AddComponent("inventoryitem")                      	-- 添加仓库组件

    inst:AddComponent("equippable")                         	-- 添加装备组件
    inst.components.equippable:SetOnEquip(onequip)          	-- 设置在装备时执行的函数（在装备函数）
    inst.components.equippable:SetOnUnequip(onunequip)      	-- 设置在卸下时执行的函数（在卸下函数）

    MakeHauntableLaunch(inst)                                   -- 添加作祟属性

    return inst                                                 -- 返回实体
end

return Prefab("spear", fn, assets)                              -- 返回预制体（名字， fn 函数 ，资源）


--[[
 加法口诀

 1 +  1 =  2       1 +  2 =  3       1 +  3 =  4       1 +  4 =  5       1 +  5 =  6 
 1 +  6 =  7       1 +  7 =  8       1 +  8 =  9       1 +  9 = 10
 2 +  2 =  4       2 +  3 =  5       2 +  4 =  6       2 +  5 =  7       2 +  6 =  8 
 2 +  7 =  9       2 +  8 = 10       2 +  9 = 11 
 3 +  3 =  6       3 +  4 =  7       3 +  5 =  8       3 +  6 =  9       3 +  7 = 10 
 3 +  8 = 11       3 +  9 = 12       
 4 +  4 =  8       4 +  5 =  9       4 +  6 = 10       4 +  7 = 11       4 +  8 = 12 
 4 +  9 = 13         
 5 +  5 = 10       5 +  6 = 11       5 +  7 = 12       5 +  8 = 13       5 +  9 = 14 
 6 +  6 = 12       6 +  7 = 13       6 +  8 = 14       6 +  9 = 15
 7 +  7 = 14       7 +  8 = 15       7 +  9 = 16        
 8 +  8 = 16       8 +  9 = 17      
 9 +  9 = 18   

 乘法口诀

 1 *  1 =  1       1 *  2 =  2       1 *  3 =  3       1 *  4 =  4       1 *  5 =  5 
 1 *  6 =  6       1 *  7 =  7       1 *  8 =  8       1 *  9 =  9
 2 *  2 =  4       2 *  3 =  6       2 *  4 =  8       2 *  5 = 10       2 *  6 = 12 
 2 *  7 = 14       2 *  8 = 16       2 *  9 = 18 
 3 *  3 =  9       3 *  4 = 12       3 *  5 = 15       3 *  6 = 18       3 *  7 = 21 
 3 *  8 = 24       3 *  9 = 27       
 4 *  4 = 16       4 *  5 = 20       4 *  6 = 24       4 *  7 = 28       4 *  8 = 32 
 4 *  9 = 36         
 5 *  5 = 25       5 *  6 = 30       5 *  7 = 35       5 *  8 = 40       5 *  9 = 45 
 6 *  6 = 36       6 *  7 = 42       6 *  8 = 48       6 *  9 = 54
 7 *  7 = 49       7 *  8 = 56       7 *  9 = 63        
 8 *  8 = 64       8 *  9 = 72      
 9 *  9 = 81   


boolen 口诀

 true  and  true =  true        true  and false = false        false  and false = false
 true   or  true =  true        true   or false =  true        false   or false = false
 true  and value = value       value  and false = false        value  and   val =   val
 true   or value =  true       value   or false = value        value   or   val = value
       not  true = false              not false =  true               not value = false

]]
