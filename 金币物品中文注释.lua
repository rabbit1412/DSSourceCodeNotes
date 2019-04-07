--goldcoin.lua部分

　　local assets=

　　{

　　Asset("ANIM", "anim/goldcoin.zip"),

　　Asset("ATLAS", "images/inventoryimages/goldcoin.xml"),

　　}

　　--这部分的作用是读取动画和图标，可套用格式。（注意替换其中的goldcoin）

　　local function fn(Sim)

　　local inst = CreateEntity()

　　inst.entity:AddTransform()

　　inst.entity:AddAnimState()

　　inst.entity:AddSoundEmitter()

　　inst.entity:AddPhysics()

　　MakeInventoryPhysics(inst)

　　--这部分的作用是创设物理性，可直接套用。

　　inst.AnimState:SetBank("goldcoin")

　　inst.AnimState:SetBuild("goldcoin")

　　inst.AnimState:PlayAnimation("idle")

　　--这部分是引用动画，第一个goldcoin指的是的框架，第二个是模型，idle是播放的动画，为idle。请结合教程中的spriter软件的使用。

　　inst:AddComponent("edible")

　　inst.components.edible.foodtype = "ELEMENTAL"

　　inst.components.edible.hungervalue = 2

　　--这部分是表示金币（goldcoin）可以作为一种元素类型的食物，参考金子（goldnugget）。

　　inst:AddComponent("tradable")

　　--这部分表示金币（goldcoin）可以用来交易。交易的内容涵盖很多，给猪王玩具和肉获得金块也是一种交易。

　　inst:AddComponent("inspectable")

　　--这部分表示金币（goldcoin）可以检阅。即右击物件后人物会说话。

　　inst:AddComponent("stackable")

　　--这部分表示金币（goldcoin）可以叠加。

　　inst:AddComponent("inventoryitem")

　　inst.components.inventoryitem.atlasname = "images/inventoryimages/goldcoin.xml"

　　--这部分表示金币（goldcoin）在物品栏中显示的图标。套用时请修改其中的goldcoin。

　　return inst

　　end

　　--这部分return inst是对上面所有inst语句的终结。end是对上面local function fn(Sim)的终结。

　　return Prefab( "common/inventory/goldcoin", fn, assets)

　　--这部分是返回物件的值。套用时请修改goldcoin。