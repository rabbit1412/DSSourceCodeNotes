　require "prefabutil"

　　--需要prefabutil.lua建筑相关，所有建筑的lua直接引用。

　　local assets =

　　{

　　Asset("ANIM", "anim/exchange.zip"),

　　Asset("IMAGE", "images/inventoryimages/exchange.tex"),

　　Asset("ATLAS", "images/inventoryimages/exchange.xml"),

　　}

　　--读取动画和图标，可套用格式。（注意替换其中的exchange）

　　local prefabs =

　　{

　　"exchange",

　　}

　　--与exchange所有有关的物件都有写上。比如树苗的lua,不仅要写树苗的，还要写树枝，灰烬，这些产物。

　　local function getstatus(inst)

　　end

　　--使物件具有状态。

　　local function onhammered(inst, worker)

　　inst.components.lootdropper:DropLoot()

　　SpawnPrefab("collapse_small").Transform:SetPosition(inst.Transform:GetWorldPosition())

　　inst.SoundEmitter:PlaySound("dontstarve/common/destroy_wood")

　　inst:Remove()

　　end

　　--使物件可以被锤子拆掉，并播放相关声音。

　　local function onhit(inst, worker)

　　inst.AnimState:PlayAnimation("hit")

　　inst.AnimState:PushAnimation("idle", true)

　　end

　　--可以打击，并播放相关动画。

　　local function onbuilt(inst)

　　inst.AnimState:PlayAnimation("place")

　　inst.AnimState:PushAnimation("idle")

　　end

　　--可以建筑，并调用建筑预览。

　　local function fn(Sim)

　　local inst = CreateEntity()

　　local trans = inst.entity:AddTransform()

　　local anim = inst.entity:AddAnimState()

　　inst.entity:AddSoundEmitter()

　　MakeObstaclePhysics(inst, 1) ---建筑物的占地大小

　　--设置物理性。

　　anim:SetBank("exchange")

　　anim:SetBuild("exchange")

　　anim:PlayAnimation("idle", true)

　　--设置闲置时的动画

　　inst:AddTag("structure")

　　--加入结构标签

　　inst:AddComponent("lootdropper")

　　--加入战利品掉落功能

　　inst:AddComponent("workable")

　　inst.components.workable:SetWorkAction(ACTIONS.HAMMER)

　　inst.components.workable:SetWorkLeft(4)

　　inst.components.workable:SetOnFinishCallback(onhammered)

　　inst.components.workable:SetOnWorkCallback(onhit)

　　--加入可被锤子砸和打击的功能。与上文呼应使用。

　　inst:AddComponent("inspectable")

　　--可以检阅。

　　local function ShouldAcceptItem(inst, item)

　　--可接受物品。

　　if item:HasTag("hat") then

　　return false

　　end

　　--不接受有标签有hat的物品。

　　if item.components.edible.foodtype == "SEEDS" then

　　return false

　　end

　　不接受seeds。

　　return true

　　--接受其他物件。

　　end

　　local function OnGetItemFromPlayer(inst, giver, item)

　　local names = {"cave_banana","carrot","corn","pumpkin","eggplant","durian","pomegranate","dragonfruit","berries","meat","smallmeat","fish","eel","drumstick","bird_egg","froglegs"}

　　inst.name = names[math.random(#names)]

　　--接受如上物件。

　　local veggie = SpawnPrefab(inst.name)

　　local goldcoin = SpawnPrefab("goldcoin")

　　if item.components.edible.foodtype == "VEGGIE" then

　　giver.components.inventory:GiveItem(goldcoin)

　　end

　　--接受蔬菜后回馈一个goldcoin。

　　if item.components.edible.foodtype == "MEAT" then

　　giver.components.inventory:GiveItem(goldcoin)

　　end

　　--接受肉后回馈一个goldcoin。

　　giver.components.inventory:GiveItem(veggie or meat)

　　--接受goldcoin后回馈一个肉或者蔬菜

　　end

　　end

　　inst:AddComponent("trader")

　　--加入交易功能

　　inst.components.trader.onaccept = OnGetItemFromPlayer

　　inst.components.trader:SetAcceptTest(ShouldAcceptItem)

　　inst.components.inspectable.getstatus = getstatus

　　--可接受物件。

　　return inst

　　--结束inst

　　end

　　--结束function

　　return Prefab( "common/exchange", fn, assets, prefabs ),

　　--返回物件的值

　　MakePlacer("common/exchange_placer", "exchange", "exchange", "idle")

　　--返回建筑预览时的动画







　　--modmain部分代码

　　PrefabFiles = {

　　"goldcoin",

　　"exchange",

　　}

　　--固定格式，请输入相关物件名称。

　　Assets=

　　{

　　Asset("ANIM", "anim/goldcoin.zip"),

　　Asset("ATLAS", "images/inventoryimages/goldcoin.xml"),

　　Asset("IMAGE", "images/inventoryimages/goldcoin.tex"),

　　Asset("ANIM", "anim/exchange.zip"),

　　Asset("ATLAS", "images/inventoryimages/exchange.xml"),

　　Asset("IMAGE", "images/inventoryimages/exchange.tex"),

　　}

　　--动画和图标路径设置。

　　local STRINGS = GLOBAL.STRINGS

　　local Recipe = GLOBAL.Recipe

　　local Ingredient = GLOBAL.Ingredient

　　local RECIPETABS = GLOBAL.RECIPETABS

　　local TECH = GLOBAL.TECH

　　--整体参数设置，直接复制黏贴就行。

　　STRINGS.NAMES.GOLDCOIN = "Goldcoin" --物件名称

　　STRINGS.RECIPE_DESC.GOLDCOIN = "For trade."--建造栏描述

　　STRINGS.CHARACTERS.GENERIC.DESCRIBE.GOLDCOIN = {"This is a goldcoin."} --检阅时描述。

　　STRINGS.NAMES.EXCHANGE = "Exchange"

　　STRINGS.RECIPE_DESC.EXCHANGE = "A place to recycle."

　　STRINGS.CHARACTERS.GENERIC.DESCRIBE.EXCHANGE = {"An exchange."}

　　同上。

　　local function ex() --固定格式，ex可任意跟换，不要和and,or 这些术语一样就行。

　　local exchange = Recipe("exchange", { Ingredient("cutstone", 8), Ingredient("goldnugget", 4), Ingredient("boards", 2) }, RECIPETABS.TOWN, TECH.SCIENCE_TWO, "exchange_placer") --设置建造时的材料，分类，科技需求，调用的建筑预览动画

　　exchange.atlas = "images/inventoryimages/exchange.xml"

　　--设置建造栏显示的图标

　　end

　　AddGamePostInit(ex) --固定格式，ex与上文的ex一致。