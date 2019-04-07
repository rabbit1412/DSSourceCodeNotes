return {
	ACTIONFAIL = --行动失败
	{
		SHAVE = --刮胡子（醒着的牛、通用、无毛的）
		{
			AWAKEBEEFALO = "I'm not going to try that while he's awake.", 
			GENERIC = "I can't shave that!",
			NOBITS = "There isn't even any stubble left!",
		},
		STORE = --存贮（通用、不允许）
		{
			GENERIC = "It's full.",
			NOTALLOWED = "That can't go in there.",
		},
		RUMMAGE = --检查
		{	
			GENERIC = "I can't.",	
		},
        COOK = --烤
        {
            GENERIC = "Oh, I can't.",
            TOOFAR = "It's too far away!",
        },
        GIVE = --给
        {
            DEAD = "Maybe I'll just hold on to this.",
            SLEEPING = "Too unconscious to care.",
            BUSY = "I'll try again in a second.",
        },
        WRITE = --写
        {
            GENERIC = "I think it's fine as is.",
        },
		REPAIRBOAT = --修船
		{
			GENERIC = "She's floating just fine right now.",
		},
		TEACH = --教
        {
            KNOWN = "I already know that one.",
            CANTLEARN = "I can't learn that one.",
        },
	},
	ACTIONFAIL_GENERIC = "I can't do that.", --行动失败通用
	ANNOUNCE_MAGIC_FAIL = "It won't work here.", --宣布魔法失败
	
	ANNOUNCE_ADVENTUREFAIL = "That didn't go well. I'll have to try again.",  --宣布行动失败
	ANNOUNCE_BEES = "BEEEEEEEEEEEEES!!!!", --蜜蜂
	ANNOUNCE_BOOMERANG = "Ow! I should try to catch that!", --飞镖
	ANNOUNCE_CHARLIE = "What was that?!",  --查理
	ANNOUNCE_CHARLIE_ATTACK = "OW! Something bit me!", --被查理攻击
	ANNOUNCE_COLD = "So cold!",  --天冷
	ANNOUNCE_HOT = "Need... ice... or... shade!", --天热
	ANNOUNCE_CRAFTING_FAIL = "I don't have all of the ingredients.", --制作失败
	ANNOUNCE_DEERCLOPS = "That sounded big!",--巨鹿
	ANNOUNCE_DUSK = "It's getting late. It will be dark soon.", --天黑
	ANNOUNCE_EAT = --吃东西
	{
		GENERIC = "Yum!", --通用
		PAINFUL = "I don't feel so good.", --讨厌的
		SPOILED = "Yuck! That was terrible!",  --变质的
		STALE = "I think that was starting to turn.", --陈旧的
		INVALID = "I can't eat that!",  --不能吃的
		YUCKY = "Putting that in my mouth would be disgusting!", --难以下咽的
	},
	ANNOUNCE_ENTER_DARK = "It's so dark!",  --进入黑暗
	ANNOUNCE_ENTER_LIGHT = "I can see again!",  --进入光亮
	ANNOUNCE_FREEDOM = "I'm free! I'm finally free!",  --自由
	ANNOUNCE_HIGHRESEARCH = "I feel so smart now!", --高 研究 ？
	ANNOUNCE_HOUNDS = "Did you hear that?", --猎狗
	ANNOUNCE_WORMS = "Did you feel that?", --蠕虫
	ANNOUNCE_SHARX = "I'm going to need a bigger boat...",
	ANNOUNCE_HUNGRY = "I'm so hungry!", --饿了
	ANNOUNCE_HUNT_BEAST_NEARBY = "This track is fresh, the beast must be nearby.", --翻脚印（找到）
	ANNOUNCE_HUNT_LOST_TRAIL = "The trail ends here.", --失去脚印
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "The wet ground won't hold a footprint.", --春季失去脚印
	ANNOUNCE_INV_FULL = "I can't carry any more stuff!", --格子满
	ANNOUNCE_KNOCKEDOUT = "Ugh, my head!", --击头
	ANNOUNCE_LOWRESEARCH = "I didn't learn very much from that.", --低 研究 ？
	ANNOUNCE_MOSQUITOS = "Aaah! Bug off!", --蚊子
	ANNOUNCE_NODANGERSLEEP = "It's too dangerous right now!", --有危险时睡觉
	ANNOUNCE_NODAYSLEEP = "It's too bright out.", --白天睡觉
	ANNOUNCE_NODAYSLEEP_CAVE = "I'm not tired.", --白天睡觉（洞穴）
	ANNOUNCE_NOHUNGERSLEEP = "I'm too hungry to sleep, the growling will keep me up!", --饥饿时睡觉
	ANNOUNCE_NOSLEEPONFIRE = "Sleeping in that seems like a bad idea.",  --起火时睡觉
	ANNOUNCE_NODANGERSIESTA = "It's too dangerous right now!",  --危险时睡觉
	ANNOUNCE_NONIGHTSIESTA = "Night is for sleeping, not taking siestas.",  --晚上睡觉
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I don't think I could really relax down here.",  --晚上睡觉（洞穴）
	ANNOUNCE_NOHUNGERSIESTA = "I'm too hungry for a siesta!", --饥饿时午睡
	ANNOUNCE_NO_TRAP = "Well, that was easy.", --陷阱
	ANNOUNCE_PECKED = "Ow! Quit it!",  --啄
	ANNOUNCE_QUAKE = "That doesn't sound good.", --地震
	ANNOUNCE_RESEARCH = "Never stop learning!", --研究
	ANNOUNCE_SHELTER = "Thanks for the protection from the elements, tree!", --站在树下
	ANNOUNCE_THORNS = "Ow!", --荆棘
	ANNOUNCE_BURNT = "Yikes! That was hot!", --燃烧
	ANNOUNCE_TORCH_OUT = "My light just ran out!", --火把用完
	ANNOUNCE_FAN_OUT = "My fan is gone with the wind.", --分散
    ANNOUNCE_COMPASS_OUT = "This compass doesn't point anymore.",--指南针
	ANNOUNCE_TRAP_WENT_OFF = "Oops.", --陷阱使用完
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.", --未生效
	ANNOUNCE_WORMHOLE = "That was not a sane thing to do.", --虫洞
	ANNOUNCE_CANFIX = "\nI think I can fix this!", --可修补的物品
	ANNOUNCE_ACCOMPLISHMENT = "I feel so accomplished!", --完成
	ANNOUNCE_ACCOMPLISHMENT_DONE = "If only my friends could see me now...",--完成
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Are you still hungry, plant?",
	ANNOUNCE_TOOL_SLIP = "Wow that tool is slippery!", --滑手的工具
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Safe from that frightening lightning!", --进入光亮避免被攻击

	ANNOUNCE_DAMP = "Oh, H2O.", --被水打湿
	ANNOUNCE_WET = "My clothes appear to be permeable.", --人物潮湿
	ANNOUNCE_WETTER = "Water way to go!", --潮湿的
	ANNOUNCE_SOAKED = "I've nearly reached my saturation point.", --被湿透的

	ANNOUNCE_TREASURE = "It's a map! And it marks a location!", --宝藏
	ANNOUNCE_MORETREASURE = "Seriously? Another one!?", --更多宝藏
	ANNOUNCE_OTHER_WORLD_TREASURE = "This map doesn't correlate to my current surroundings.", --其他世界宝藏
	ANNOUNCE_OTHER_WORLD_PLANT = "I don't think this soil has the proper nutrients.", --其他世界植物

	ANNOUNCE_MESSAGEBOTTLE = --消息瓶
	{
		"The message is faded. I can't read it.",
	},
	ANNOUNCE_VOLCANO_ERUPT = "That can't be good.", --火山爆发
	ANNOUNCE_MAPWRAP_WARN = "Here be monsters.", --陨石雨警告
	ANNOUNCE_MAPWRAP_LOSECONTROL = "It would seem my future is foggy.", --陨石雨失去控制
	ANNOUNCE_MAPWRAP_RETURN = "I think I felt something brush against my leg...",--陨石雨又来
	ANNOUNCE_CRAB_ESCAPE = "I could've sworn it was right there...", --螃蟹逃跑
	ANNOUNCE_TRAWL_FULL = "My net filled up!", --拖网满了
	ANNOUNCE_BOAT_DAMAGED = "I think I sprung a leak.", --船损坏
	ANNOUNCE_BOAT_SINKING = "I seem to be sinking.", --船下沉
	ANNOUNCE_BOAT_SINKING_IMMINENT = "I need to get to land!", --船即将沉没
	ANNOUNCE_WAVE_BOOST = "Weeeee!", --大浪

	ANNOUNCE_WHALE_HUNT_BEAST_NEARBY = "Follow those bubbles!",--捕鲸动物在附近
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL = "I wonder where it went...",--猎杀鲸鱼的踪迹
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL_SPRING = "The water is too rough!",--猎杀鲸鱼的踪迹春季


BATTLECRY = --战吼
	{
		GENERIC = "Go for the eyes!", --通用
		PIG = "Here piggy piggy!", --猪人
		PREY = "I will destroy you!", --猎物
		SPIDER = "I'm going to stomp you dead!", --蜘蛛
		SPIDER_WARRIOR = "Better you than me!", --蜘蛛战士
	},
	COMBAT_QUIT = --战斗停止
	{
		GENERIC = "I sure showed him!", --通用
		PIG = "I'll let him go. This time.",--猪人
		PREY = "He's too fast!",--猎物
		SPIDER = "He's too gross, anyway.",--蜘蛛
		SPIDER_WARRIOR = "Shoo, you nasty thing!",--蜘蛛战士
	},
----------【描述】----------
	DESCRIBE =
	{
        WILDBOREGUARD = "What's it guarding?",
        GLOMMER = "It's cute, in a gross kind of way.",--格罗姆
        GLOMMERFLOWER = --格罗姆花
        {
        	GENERIC = "The petals shimmer in the light.", --通用
        	DEAD = "The petals droop and shimmer in the light.", --死亡
        },
        GLOMMERWINGS = "These would look awesome on a helmet!",--格罗姆翅膀
        GLOMMERFUEL = "This goop smells foul.",--格罗姆粘液
        BELL = "Dingalingaling.",--钟
        STATUEGLOMMER = --雕像
        {	
        	GENERIC = "I'm not sure what that's supposed to be.",--通用
        	EMPTY = "I broke it. For science.",--空
    	},
        ----熔岩池石头
		LAVA_POND_ROCK = "As gneiss a place as any.", 
		LAVA_POND_ROCK2 = "As gneiss a place as any.",
		LAVA_POND_ROCK3 = "As gneiss a place as any.",
		LAVA_POND_ROCK4 = "As gneiss a place as any.",
		LAVA_POND_ROCK5 = "As gneiss a place as any.",
		LAVA_POND_ROCK6 = "As gneiss a place as any.",
		LAVA_POND_ROCK7 = "As gneiss a place as any.",

		WEBBERSKULL = "Poor little guy. He deserves a proper funeral.", --韦伯头骨
		WORMLIGHT = "Looks delicious.", --虫光
		WORMLIGHT_LESSER = "Kinda wrinkled.",--虫光较小
		WORM = --【虫】植物形态、肮脏、虫形态
		{
		    PLANT = "Seems safe to me.",
		    DIRT = "Just looks like a pile of dirt.",
		    WORM = "It's a worm!",
		},
		WORMLIGHT_PLANT = "Seems safe to me.", --种植着的虫光
		MOLE =--【鼹鼠】拿起、地下、地面
		{
			HELD = "Nowhere left to dig, my friend.",
			UNDERGROUND = "Something's under there, searching for minerals.",
			ABOVEGROUND = "I'd sure like to whack that mole... thing.",
		},
		MOLEHILL = "What a nice hole in the ground for a home!", --鼹鼠丘
		MOLEHAT = "A wretched stench but excellent visibility.", --鼹鼠帽

		EEL = "This will make a delicious meal.", --鳗鱼
		EEL_COOKED = "Smells great!",  --烤鳗鱼
		UNAGI = "I hope this doesn't make me feel eel!",--鳗鱼
		EYETURRET = "I hope it doesn't turn on me.", --眼球塔
		EYETURRET_ITEM = "I think it's sleeping.", --眼球塔物品
		MINOTAURHORN = "Wow! I'm glad that didn't gore me!", --犀牛角
		MINOTAURCHEST = "It may contain a bigger something fantastic! Or horrible.", --豪华犀牛箱子
		THULECITE_PIECES = "It's some smaller chunks of Thulecite.", --铥矿碎片
		POND_ALGAE = "Some algae by a pond.", --池塘藻类
		GREENSTAFF = "This will come in handy.", --
		POTTEDFERN = "A fern in a pot.", --盆栽蕨类植物

		THULECITE = "I wonder where this is from?",--铥矿石
		ARMORRUINS = "It's oddly light.", --远古盔甲
		RUINS_BAT = "It has quite a heft to it.", --远古短棒
		RUINSHAT = "How's my hair?",--远古王冠
		NIGHTMARE_TIMEPIECE = --铥矿奖章
		{
		CALM = "All is well.", --冷静
		WARN = "Getting pretty magical around here.", --警告
		WAXING = "I think it's becoming more concentrated!", --峨眉月
		STEADY = "It seems to be staying steady.", --稳定的
		WANING = "Feels like it's receding.",--衰退
		DAWN = "The nightmare is almost gone!", --黎明
		NOMAGIC = "There's no magic around here.", --没有魔力
		},
		BISHOP_NIGHTMARE = "It's falling apart!", --损坏的雕像
		ROOK_NIGHTMARE = "Terrifying!", --损坏的战车
		KNIGHT_NIGHTMARE = "It's a knightmare!",--损坏的骑士）
		MINOTAUR = "That thing doesn't look happy.", --远古犀牛
		SPIDER_DROPPER = "Note to self: Don't look up.",
		NIGHTMARELIGHT = "I wonder what function this served.", --影灯
		NIGHTSTICK = "It's electric!", --夜棍
		GREENGEM = "It's green and gemmy.", --绿宝石
		RELIC = "Ancient household goods.", --废墟
		RUINS_RUBBLE = "This can be fixed.", --损坏的废墟
		MULTITOOL_AXE_PICKAXE = "It's brilliant!",--多功能工具
		ORANGESTAFF = "This beats walking.", --橙色魔杖
		YELLOWAMULET = "Warm to the touch.", --黄色护身符
		GREENAMULET = "Just when I thought I couldn't get any better.",--绿色护身符
		SLURPERPELT = "Doesn't look much different dead.",	--啜食者皮

		SLURPER = "It's so hairy!", --啜食者
		SLURPER_PELT = "Doesn't look much different dead.",--啜食者皮
		ARMORSLURPER = "A soggy, sustaining, succulent suit.", --饥饿腰带
		ORANGEAMULET = "Teleportation can be so useful.", --橙色护身符
		YELLOWSTAFF = "I put a gem on a stick.", --黄色魔杖
		YELLOWGEM = "This gem is yellow.",--黄宝石
		ORANGEGEM = "It's an orange gem.",--橙宝石
		TELEBASE =  --传送核心
		{
			VALID = "It's ready to go.", --有效
			GEMS = "It needs more purple gems.", --宝石
		},
		GEMSOCKET = --宝石插槽
		{
			VALID = "Looks ready.",
			GEMS = "It needs a gem.",
		},
		STAFFLIGHT = "That seems really dangerous.", --辰星
	
        ANCIENT_ALTAR = "An ancient and mysterious structure.", --远古祭坛

        ANCIENT_ALTAR_BROKEN = "This seems to be broken.", --损坏的远古祭坛

        ANCIENT_STATUE = "It seems to throb out of tune with the world.", --古老的雕像

        LICHEN = "Only a cyanobacteria could grow in this light.", --洞穴苔藓
		CUTLICHEN = "Nutritious, but it won't last long.",--摘下的苔藓

		CAVE_BANANA = "It's mushy.", --香蕉
		CAVE_BANANA_COOKED = "Yum!", --烤香蕉
		CAVE_BANANA_TREE = "It's dubiously photosynthetical.", --香蕉树
		ROCKY = "It has terrifying claws.", --龙虾rog
		
		COMPASS = --指南针
		{
			GENERIC="Which way am I facing?",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

		HOUNDSTOOTH="It's sharp!", --犬牙
		ARMORSNURTLESHELL="It sticks to my back.",--蜗牛龟盔甲
		BAT="Ack! That's terrifying!", --蝙蝠
		BATBAT = "I bet I could fly if I held two of them.", --蝙蝠棒
		BATWING="I hate those things, even when they're dead.", --蝙蝠翅膀
		BATWING_COOKED="At least it's not coming back.", --烤蝙蝠翅膀
		BATCAVE = "I don't want to wake them.", --洞穴蝙蝠
		BEDROLL_FURRY="It's so warm and comfy.", --毛皮铺盖
		BUNNYMAN="I am filled with an irresistible urge to do science.", --兔人
		FLOWER_CAVE="Science makes it glow.", --单朵洞穴花
		FLOWER_CAVE_DOUBLE="Science makes it glow.", --双朵洞穴花
		FLOWER_CAVE_TRIPLE="Science makes it glow.", --三朵洞穴花
		GUANO="Another flavour of poop.", --鸟粪
		LANTERN="A more civilized light.", --提灯
		LIGHTBULB="It's strangely tasty looking.",--荧光果
		MANRABBIT_TAIL="I just like holding it.",--兔人尾巴
		MUSHTREE_TALL  ="That mushroom got too big for its own good.",--高蘑菇树
		MUSHTREE_MEDIUM="These used to grow in my bathroom.",--中蘑菇树
		MUSHTREE_SMALL ="A magic mushroom?",--小蘑菇树
		MUSHTREE_TALL = --高蘑菇树
		{
            GENERIC = "That mushroom got too big for its own good.",
            BLOOM = "You can't tell from far away, but it's quite smelly.", --开花期
        },
		MUSHTREE_MEDIUM = 
		{
            GENERIC = "These used to grow in my bathroom.",
            BLOOM = "I'm mildly offended by this.",
        },
		MUSHTREE_SMALL = 
		{
            GENERIC = "A magic mushroom?",
            BLOOM = "It's trying to reproduce.",
        },
        MUSHTREE_TALL_WEBBED = "The spiders thought this one was important.",
        SPORE_TALL = "It's just drifting around.", --孢子高
        SPORE_MEDIUM = "It's just drifting around.",--孢子中
        SPORE_SMALL = "It's just drifting around.",--孢子小
        SPORE_TALL_INV = "I'll keep a little light in my pocket.",
        SPORE_MEDIUM_INV = "I'll keep a little light in my pocket.",
        SPORE_SMALL_INV = "I'll keep a little light in my pocket.",
		RABBITHOUSE= --兔人房
		{
			GENERIC = "That's not a real carrot.",
			BURNT = "That's not a real roasted carrot.",
		},
		SLURTLE="Ew. Just ew.", --蜗牛龟
		SLURTLE_SHELLPIECES="A puzzle with no solution.",--蜗牛壳碎片
		SLURTLEHAT="I hope it doesn't mess up my hair.",--蜗牛帽子
		SLURTLEHOLE="A den of 'ew'.",--蜗牛窝
		SLURTLESLIME="If it wasn't useful, I wouldn't touch it.",--蜗牛龟粘液
		SNURTLE="He's less gross, but still gross.",--黏糊虫
		SPIDER_HIDER="Gah! More spiders!",--洞穴蜘蛛
		SPIDER_SPITTER="I hate spiders!",--喷射蜘蛛
		SPIDERHOLE="It's encrusted with old webbing.",--洞穴蜘蛛洞
		SPIDERHOLE_ROCK = "It's encrusted with old webbing.", --蜘蛛洞岩
		STALAGMITE="Looks like a rock to me.", --石笋
		STALAGMITE_FULL="Looks like a rock to me.", --大石笋
		STALAGMITE_LOW="Looks like a rock to me.",--小石笋
		STALAGMITE_MED="Looks like a rock to me.",--中石笋
		STALAGMITE_TALL="Rocks, rocks, rocks, rocks...", --高石笋
		STALAGMITE_TALL_FULL="Rocks, rocks, rocks, rocks...", --大高石笋
		STALAGMITE_TALL_LOW="Rocks, rocks, rocks, rocks...", --小高石笋
		STALAGMITE_TALL_MED="Rocks, rocks, rocks, rocks...", --中高石笋
    ----------【地皮】----------
		TURF_CARPETFLOOR = "Yet another ground type.", --地毯
		TURF_CHECKERFLOOR = "Yet another ground type.", --棋盘
		TURF_DIRT = "Yet another ground type.", --污垢
		TURF_FOREST = "Yet another ground type.", --森林
		TURF_GRASS = "Yet another ground type.", --草地
		TURF_MARSH = "Yet another ground type.", --沼泽
		TURF_ROAD = "Yet another ground type.", --路
		TURF_ROCKY = "Yet another ground type.", --岩石
		TURF_SAVANNA = "Yet another ground type.", --草原
		TURF_WOODFLOOR = "Yet another ground type.", --木

		TURF_CAVE="Yet another ground type.", --蝙蝠粪
		TURF_FUNGUS="Yet another ground type.", --真菌
		TURF_SINKHOLE="Yet another ground type.", --粘泥
		TURF_UNDERROCK="Yet another ground type.", --洞穴岩石
		TURF_MUD="Yet another ground type.", --淤泥

		TURF_DECIDUOUS = "Yet another ground type.", --落叶林
		TURD_SANDY = "Yet another ground type.", --沙地
		TURF_BADLANDS = "Yet another ground type.", --荒地
		TURF_DESERTDIRT = "A chunk of ground.", --沙漠
		TURF_FUNGUS_GREEN = "A chunk of ground.", --真菌（绿色）
		TURF_FUNGUS_RED = "A chunk of ground.",--真菌（红色）
		TURF_DRAGONFLY = "Do you want proof that it's fireproof?", --蜻蜓
    ------------------------
		POWCAKE = "I don't know if I'm hungry enough.",
        CAVE_ENTRANCE = --洞穴入口
        {
            GENERIC="I wonder if I could move that rock.",
            OPEN = "I bet there's all sorts of things to discover down there.",
        },
        CAVE_EXIT = "I've had enough discovery for now.", --洞穴出口
        CAVE_ENTRANCE_OPEN =  --打开的洞穴入口
        {
            GENERIC = "The earth itself rejects me!",
            OPEN = "I bet there's all sorts of things to discover down there.",
        },
        CAVE_EXIT = --洞穴出口
        {
            GENERIC = "I'll just stay down here, I suppose.",
            OPEN = "I've had enough discovery for now.",
        },
		MAXWELLPHONOGRAPH = "So that's where the music was coming from.", --麦斯威尔留声机
		BOOMERANG = "Aerodynamical!", --飞镖
		PIGGUARD = "He doesn't look as friendly as the others.", --猪人守卫
		ADVENTURE_PORTAL = "I'm not sure I want to fall for that a second time.",--冒险大门
		AMULET = "I feel so safe when I'm wearing it.", --护身符
		ANIMAL_TRACK = "Tracks left by food. I mean... an animal.", --动物追踪
		ARMORGRASS = "I hope there are no bugs in this.", --草甲
		ARMORMARBLE = "This looks really heavy.", --大理石甲
		ARMORWOOD = "That is a perfectly reasonable piece of clothing.", --木甲
		ARMOR_SANITY = "Wearing this makes me feel safe and insecure.", --夜魔盔甲
		ASH = --【灰】
		{
			GENERIC = "All that's left after the fire has done its job.",
			REMAINS_GLOMMERFLOWER = "The flower was consumed by fire in the teleportation!",  --格罗姆花
			REMAINS_EYE_BONE = "The eyebone was consumed by fire in the teleportation!",--眼骨
			REMAINS_THINGIE = "There's a perfectly scientific explanation for that.",--小东西
		},
		AXE = "It's my trusty axe.",--斧头
		BABYBEEFALO = "Awwww. So cute!",--小皮弗娄牛
		BACKPACK = "You could fit a whole lot of science in there.",--背包
		BACONEGGS = "The perfect breakfast for a man of science.",--鸡蛋火腿
		BANDAGE = "Seems sterile enough.",--蜂蜜绷带
		BASALT = "That's too strong to break through!",--玄武岩
		BATBAT = "I bet I could fly if I held two of these.",--蝙蝠帮
		BEARDHAIR = "I made them with my face.",--胡须
		BEARGER = "What a bear of a badger.",--熊boss
		BEARGERVEST = "Welcome to the hibernation station!",--熊皮背心
		ICEPACK = "The fur keeps the temperature inside stable.",--冰包
		BEARGER_FUR = "A mat of thick fur.",--熊皮
		BEDROLL_STRAW = "Looks comfy, but it smells like mildew.",--草席卷
		BEE = --蜜蜂
		{
			GENERIC = "To bee or not to bee.",
			HELD = "Careful!",
		},
		BEEBOX = --【蜂箱】满蜜、通用、无蜜、少蜜、烧毁
		{
			FULLHONEY = "It's full of honey.",
			GENERIC = "Bees!",
			NOHONEY = "It's empty.",
			SOMEHONEY = "I should wait a bit.",
			BURNT = "How did it get burned?!!",
		},
		BEEFALO = --【皮弗娄牛】跟随、通用、裸的、睡觉
		{
			FOLLOWER = "He's coming along peacefully.",
			GENERIC = "It's a beefalo!",
			NAKED = "Aww, he's so sad.",
			SLEEPING = "These guys are really heavy sleepers.",
		},
		BEEFALOHAT = "That's a case of hat-hair waiting to happen.",--牛帽
		BEEFALOWOOL = "It smells like beefalo tears.",--牛毛
		BEEHAT = "Protects your skin, but squashes your meticulous coiffure.",--养蜂帽
		BEEHIVE = "It's buzzing with activity.",--蜂窝
		BEEMINE = "It buzzes when I shake it.",--蜜蜂地雷
		BEEMINE_MAXWELL = "Bottled mosquito rage!",
		BERRIES = "Red berries taste the best.",--浆果
		BERRIES_COOKED = "I don't think heat improved them.",--烤浆果
		BERRYBUSH = --【浆果丛】无果、枯萎、通用、可采摘
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "Nothing will grow in this heat.",
			GENERIC = "Red berries taste the best.",
			PICKED = "Maybe they'll grow back?",
		},
		BIGFOOT = "That is one biiig foot.",--大脚
		BIRDCAGE = --【鸟笼】通用、已占、睡觉、饥饿、挨饿、死亡、骨架
		{
			GENERIC = "I should put a bird in it.",
			OCCUPIED = "That's my bird!",
			SLEEPING = "Awwww, he's asleep.",
			HUNGRY = "He's looking a bit peckish.",
			STARVING = "Have I not fed you in awhile?",
			DEAD = "Maybe he's just resting?",
			SKELETON = "That bird is definitely deceased.",
		},
		BIRDTRAP = "Gives me a net advantage!",--捕鸟器
		CAVE_BANANA_BURNT = "Not my fault!",--香蕉烧
		BIRD_EGG = "A small, normal egg.",--鸟蛋
		BIRD_EGG_COOKED = "Sunny side yum!",--烤鸟蛋
		BISHOP = "Back off, preacherman!",--主教
		BLOWDART_FIRE = "This seems fundamentally unsafe.",--燃烧吹箭
		BLOWDART_SLEEP = "Just don't breathe in.",--睡眠吹箭
		BLOWDART_PIPE = "Good practice for my birthday cake!",--吹箭
		BLUEAMULET = "Cool as ice!",--蓝色护身符
		BLUEGEM = "It sparkles with cold energy.",--蓝宝石
		BLUEPRINT = "It's scientific!",--蓝图
		BELL_BLUEPRINT = "It's scientific!",--钟蓝图
		BLUE_CAP = "It's weird and gooey.",--摘下的蓝蘑菇
		BLUE_CAP_COOKED = "It's different now...",--烤蓝蘑菇
		BLUE_MUSHROOM =--【蓝蘑菇】通用、地下、被采摘
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		BOARDS = "Boards.",--木板
		BOAT = "Is that how I got here?",--船
		BONESHARD = "Bits of bone.",--骨片
		BONESTEW = "A stew to put some meat on my bones.",--肉汤
		BUGNET = "For catching bugs.", --捕虫网
		BUSHHAT = "It's kind of scratchy.",--丛林帽
		BUTTER = "I can't believe it's butter!",--黄油
		BUTTERFLY = --【蝴蝶】
		{
			GENERIC = "Butterfly, flutter by.",
			HELD = "Now I have you!",
		},
		BUTTERFLYMUFFIN = "I threw the recipe away and just kind of winged it.", --蝴蝶松饼
		BUTTERFLYWINGS = "Without these, it's just a butter.", --蝴蝶翅膀
		BUZZARD = "What a bizarre buzzard!", --秃鹫
		CACTUS = --仙人掌
		{
			GENERIC = "Sharp but delicious.",
			PICKED = "Deflated, but still spiny.",
		},
		CACTUS_MEAT_COOKED = "Grilled fruit of the desert.", --烤仙人掌肉
		CACTUS_MEAT = "There are still some spines between me and a tasty meal.", --仙人掌肉
		CACTUS_FLOWER = "A pretty flower from a prickly plant.", --仙人掌花

		COLDFIRE = --【冰火】余烬、通用、高、小、正常、用尽
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "Well, that's over.",
		},
		CAMPFIRE = --【篝火】余烬、通用、高、小、正常、用尽
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "Well, that's over.",
		},
		CANE = "It makes walking seem much easier!", --手杖
		CATCOON = "A playful little thing.", --猫浣熊
		CATCOONDEN = --猫浣熊窝
		{
			GENERIC = "It's a den in a stump.",
			EMPTY = "Its owner ran out of lives.",
		},
		CATCOONHAT = "Ears hat!", --浣熊帽
		COONTAIL = "I think it's still swishing.", --浣熊尾巴
		CARROT = "Yuck. I pulled this vegetable out of the dirt.", --胡萝卜
		CARROT_COOKED = "Mushy.", --烤胡萝卜
		CARROT_PLANTED = "The earth is making plantbabies.", --种着的胡萝卜
		CARROT_SEEDS = "It's a carrot seed.", --胡萝卜种子
		WATERMELON_SEEDS = "It's a melon seed.", --西瓜种子
		CAVE_FERN = "It's a fern.",--洞穴的蕨类植物
		CHARCOAL = "It's small, dark, and smells like burnt wood.",--木炭
        CHESSJUNK1 = "A pile of broken chess pieces.",--损坏的机械1
        CHESSJUNK2 = "Another pile of broken chess pieces.",--损坏的机械2
        CHESSJUNK3 = "Even more broken chess pieces.",--损坏的机械3
		CHESTER = "Otto von Chesterfield, Esq.", --切斯特
		CHESTER_EYEBONE = --切斯特眼骨
		{
			GENERIC = "It's looking at me.",
			WAITING = "It went to sleep.",
		},
		COOKEDMANDRAKE = "Poor little guy.", --熟曼德拉草
		COOKEDMEAT = "Char broiled to perfection.",--熟肉
		COOKEDMONSTERMEAT = "That's only somewhat more appetizing than when it was raw.",--熟怪物肉
		COOKEDSMALLMEAT = "Now I don't have to worry about getting worms!",--熟小肉
		COOKPOT = --锅
		{
			COOKING_LONG = "This is going to take a while.", --煮（久）
			COOKING_SHORT = "It's almost done!", --煮（短）
			DONE = "Mmmmm! It's ready to eat!", --完成
			EMPTY = "It makes me hungry just to look at it.", --空
			BURNT = "The pot got cooked.", --烧毁
		},
		CORN = "High in fructose!", --玉米
		CORN_COOKED = "Cooked and high in fructose!", --烤玉米
		CORN_SEEDS = "It's a corn seed.", --玉米种子
		CROW = --乌鸦
		{
			GENERIC = "Creepy!",
			HELD = "He's not very happy in there.",
		},
		CUTGRASS = "Cut grass, ready for arts and crafts.", --割下的草
		CUTREEDS = "Cut reeds, ready for crafting and hobbying.", --割下的芦苇
		CUTSTONE = "I've made them seductively smooth.", --石砖
		DEADLYFEAST = "A most potent dish.", --致命盛宴
		DEERCLOPS = "It's enormous!!", --巨鹿
		DEERCLOPS_EYEBALL = "This is really gross.", --巨鹿眼球
		EYEBRELLAHAT =	"It will watch over me.", --眼球伞
		DEPLETED_GRASS = 枯萎的草
		{
			GENERIC = "It's probably a tuft of grass.",
		},
		DEVTOOL = "It smells of bacon!", --开发工具
		DEVTOOL_NODEV = "I'm not strong enough to wield it.", --开发工具无开发
		DIRTPILE = "It's a pile of dirt... or IS it?", --可疑的土堆
		DIVININGROD = --【探矿杖】冷、通用、热、温暖、更温暖
		{
			COLD = "The signal is very faint.",
			GENERIC = "It's some kind of homing device.",
			HOT = "This thing's going crazy!",
			WARM = "I'm headed in the right direction.",
			WARMER = "I must be getting pretty close.",
		},
		DIVININGRODBASE = --探测杖基地
		{
			GENERIC = "I wonder what it does.",
			READY = "It looks like it needs a large key.",
			UNLOCKED = "Now my machine can work!",
		},
		DIVININGRODSTART = "That rod looks useful!", --探测杖开始
		DRAGONFLY = "That's one fly dragon!", --蜻蜓
		ARMORDRAGONFLY = "Hot mail!", --蜻蜓盔甲
		DRAGON_SCALES = "They're still warm.", --蜻蜓鳞片
		DRAGONFLYCHEST = "Next best thing to a lockbox!", --蜻蜓箱子
		LAVASPIT = 
		{
			HOT = "Hot spit!",
			COOL = "I like to call it \"Basaliva\".",
		},
		LAVA_POND = "Magmificent!", --熔岩池
		LAVAE = "Too hot to handle.", --幼虫
		LAVAE_PET = --幼虫宠物
		{
			STARVING = "Poor thing must be starving.",
			HUNGRY = "I hear a tiny stomach grumbling.",
			CONTENT = "It seems happy.",
			GENERIC = "Aww. Who's a good monster?",
		},
		LAVAE_EGG = --幼虫蛋
		{
			GENERIC = "There's a faint warmth coming from inside.",
		},
		LAVAE_EGG_CRACKED = --烤幼虫蛋
		{
			COLD = "I don't think that egg is warm enough.",
			COMFY = "I never thought I would see a happy egg.",
		},
		LAVAE_TOOTH = "It's an egg tooth!", --幼虫牙

		DRAGONFRUIT = "What a weird fruit.", --火龙果
		DRAGONFRUIT_COOKED = "The fruit's still weird.", --烤火龙果
		DRAGONFRUIT_SEEDS = "It's a weird fruit seed.", --火龙果种子
		DRAGONPIE = "The dragonfruit is very filling.", --火龙果派
		DRUMSTICK = "I should gobble it.", --鸡腿
		DRUMSTICK_COOKED = "Now it's even tastier.", --烤鸡腿
		DUG_BERRYBUSH = "Now it can be taken anywhere.", --可种植浆果丛
		DUG_GRASS = "This needs to be planted.", --可种植草根
		DUG_MARSH_BUSH = "I should plant this.", --可种植尖刺灌木
		DUG_SAPLING = "I could replant it closer to home.", --可种植树苗
		DURIAN = "Oh, it smells!", --榴莲
		DURIAN_COOKED = "Now it smells even worse!", --烤榴莲
		DURIAN_SEEDS = "It's a durian seed.",--榴莲种子
		EARMUFFSHAT = "At least my ears won't get cold...", --兔耳罩
		EGGPLANT = "It doesn't look like an egg.", --茄子
		EGGPLANT_COOKED = "It's even less eggy.", --烤茄子
		EGGPLANT_SEEDS = "It's an eggplant seed.", --茄子正字
		DECIDUOUSTREE =  --【橡树】燃烧、烧毁、被砍、中毒、通用
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			POISON = "It looks unhappy about me stealing those birchnuts!",
			GENERIC = "It's all leafy. Most of the time.",
		},
		ACORN = 橡树果实
		{
		    GENERIC = "There's definitely something inside there.",
		    PLANTED = "It'll be a tree soon!",
		},
		ACORN_COOKED = "Roasted to perfection.", --烤橡果
		BIRCHNUTDRAKE = "A mad little nut.",--坚果鸭
		EVERGREEN = --【树】
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all piney.",
		},
		EVERGREEN_SPARSE = --无松果的树
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "This sad tree has no cones.",
		},
		EYEPLANT = "I think I'm being watched.", --食人花眼睛
		FARMPLOT = --【农田】通用、生长、需要施肥、烧毁
		{
			GENERIC = "I should try planting some crops.",
			GROWING = "Go plants go!",
			NEEDSFERTILIZER = "I think it needs to be fertilized.",
			BURNT = "I don't think anything will grow in a pile of ash.",
		},
		FEATHERHAT = "I AM A BIRD!", --羽毛帽
		FEATHER_CROW = "A crow feather.", --乌鸦羽毛
		FEATHER_ROBIN = "A redbird feather.", --红雀羽毛
		FEATHER_ROBIN_WINTER = "A snowbird feather.", --雪雀羽毛
		FEM_PUPPET = "She's trapped!", --傀儡
		FIREFLIES = --萤火虫
		{
			GENERIC = "If only I could catch them!",
			HELD = "They make my pocket glow!",
		},
		FIREHOUND = "That one is glowy.", --火狗
		FIREPIT = --【石头篝火】余烬、通用、高、小、正常、烧完
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "At least I can start it up again.",
		},
		COLDFIREPIT = --冰篝火
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "At least I can start it up again.",
		},
		FIRESTAFF = "I don't want to set the world on fire.", --火魔杖
		FIRESUPPRESSOR =  --【灭火器】 开、关、低燃料
		{	
			ON = "Fling on!",
			OFF = "All quiet on the flinging front.",
			LOWFUEL = "The fuel tank is getting a bit low.",
		},

		FISH = "Now I shall eat for a day.", --鱼
		FISHINGROD = "Hook, line and stick!", --鱼竿
		FISHSTICKS = "Sticks to my ribs.", --鱼条
		FISH_MED = "Good dog.", --狗鱼
		FISH_MED_COOKED = "Grilled to perfection.", --鱼排
		FISHTACOS = "Crunchy and delicious!",--鱼炸玉米饼
		FISH_COOKED = "Grilled to perfection.", --炸鱼
		FLINT = "It's a very sharp rock.", --燧石
		FLOWER = "It's pretty, but it smells like a common laborer.", --花
		FLOWERHAT = "It smells like prettiness.", --花环
		FLOWER_EVIL = "Augh! It's so evil!", --恶魔花
		FOLIAGE = "Some leafy greens.", --叶子
		FOOTBALLHAT = "I don't like sports.", --猪皮帽
		FROG = --青蛙
		{
			DEAD = "He's croaked.",
			GENERIC = "He's so cute!",
			SLEEPING = "Aww, look at him sleep!",
		},
		FROGGLEBUNWICH = "A very leggy sandwich.",--青蛙圆面包三明治
		FROGLEGS = "I've heard it's a delicacy.", --蛙腿
		FROGLEGS_COOKED = "Tastes like chicken.", --烤蛙腿
		FRUITMEDLEY = "Fruity.", --水果拼盘
		FURTUFT = "Black and white fur.", 
		GEARS = "A pile of mechanical parts.", --齿轮
		GHOST = "This offends me as a scientist.", --鬼魂
		GOLDENAXE = "That's one fancy axe.", --金斧头
		GOLDENPICKAXE = "Hey, isn't gold really soft?", --金稿子
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?", --金草叉
		GOLDENSHOVEL = "I can't wait to dig holes.", --金铲子
		GOLDNUGGET = "I can't eat it, but it sure is shiny.", --黄金
		GRASS = --【草】贫瘠的、枯萎的、燃烧的、通用、被采摘的
		{
			BARREN = "It needs poop.",
			WITHERED = "It's not going to grow back while it's so hot.",
			BURNING = "That's burning fast!",
			GENERIC = "It's a tuft of grass.",
			PICKED = "It was cut down in the prime of its life.",
		},
		GREEN_CAP = "It seems pretty normal.", --被摘下的绿蘑菇
		GREEN_CAP_COOKED = "It's different now...",--烤绿蘑菇
		GREEN_MUSHROOM = --绿蘑菇
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		GUNPOWDER = "It looks like pepper.", --火药
		HAMBAT = "This seems unsanitary.", --火腿棒
		HAMMER = "Stop! It's time! To hammer things!", --锤子
		HEALINGSALVE = "The stinging means that it's working.", --治疗药膏
		HEATROCK = --【保温石】冰、冷、通用、暖、热
		{
			FROZEN = "It's colder than ice.",
			COLD = "That's a cold stone.",
			GENERIC = "I could manipulate its temperature.",
			WARM = "It's quite warm and cuddly... for a rock!",
			HOT = "Nice and toasty hot!",
		},
		HOME = "Someone must live here.", --家
		HOMESIGN = --路牌
		{
			GENERIC = "It says \"You are here.\"",
			UNWRITTEN = "The sign is currently blank.", --空白
			BURNT = "I can't read it any longer.",
		},
		HONEY = "Looks delicious!", --蜂蜜
		HONEYCOMB = "Bees used to live in this.", --蜂巢
		HONEYHAM = "Sweet and savory.", --蜜汁火腿
		HONEYNUGGETS = "Taste like chicken, but I don't think it is.", --甜蜜金砖
		HORN = "It sounds like a beefalo field in there.", --牛角
		HOUND = "You ain't nothing, hound dog!", --猎狗
		HOUNDBONE = "Creepy.", --狗骨头
		HOUNDMOUND = "I've got no bones to pick with the owner. Really.", --猎犬丘
		ICEBOX = "I have harnessed the power of cold!", --冰箱
		ICEHAT = "Stay cool, boy.", --冰帽
		ICEHOUND = "Are there hounds for every season?", --冰狗
		INSANITYROCK = --【猪王矮柱石】活跃的、不活跃的
		{
			ACTIVE = "TAKE THAT, SANE SELF!",
			INACTIVE = "It's more of a pyramid than an obelisk.",
		},
		JAMMYPRESERVES = "I probably should have made a jar.",--果酱蜜饯
		KABOBS = "Lunch on a stick.",--肉串
		KILLERBEE = --杀人蜂
		{
			GENERIC = "Oh no! It's a killer bee!",
			HELD = "This seems dangerous.",
		},
		KNIGHT = "Check it out!", --发条骑士
		KOALEFANT_SUMMER = "Adorably delicious.", --夏象
		KOALEFANT_WINTER = "It looks warm and full of meat.", --冬象
		KRAMPUS = "He's going after my stuff!", --坎普斯
		KRAMPUS_SACK = "Ew. It has Krampus slime all over it.", --坎普斯背包
		LEIF = "He's huge!", --树精
		LEIF_SPARSE = "He's huge!", --稀有树精
		LIGHTNING_ROD = --避雷针
		{
			CHARGED = "The power is mine!",--带电
			GENERIC = "I can harness the heavens!",
		},
		LIGHTNINGGOAT =  --闪电羊
		{
			GENERIC = "\"Baaaah\" yourself!",
			CHARGED = "I don't think it liked being struck by lightning.",
		},
		LIGHTNINGGOATHORN = "It's like a miniature lightning rod.", --闪电羊角
		GOATMILK = "It's buzzing with tastiness!", --羊奶
		LITTLE_WALRUS = "He won't be cute and cuddly forever.", --小海象
		LIVINGLOG = "It looks worried.", --活木
		LOCKEDWES = "Maxwell's statues are trapping him.", --锁着的韦斯
		LOG = --木
		{
			BURNING = "That's some hot wood!",
			GENERIC = "It's big, it's heavy, and it's wood.",
		},
		LUREPLANT = "It's so alluring.", --食人花
		LUREPLANTBULB = "Now I can start my very own meat farm.", --食人花种子
		MALE_PUPPET = "He's trapped!", --男木偶
		MANDRAKE = --曼德拉草
		{
			DEAD = "Mandrake roots have strange properties.",
			GENERIC = "I've heard strange things about those plants.",
			PICKED = "Stop following me!",
		},
		MANDRAKESOUP = "Well, he won't be waking up again.", --曼德拉草汤
		MANDRAKE_COOKED = "It doesn't seem so strange anymore.", --烤曼德拉草
		MARBLE = "Fancy!", --大理石
		MARBLEPILLAR = "I think I could use that.", --大理石柱
		MARBLETREE = "I don't think an axe will cut it.", --大理石树
		MARSH_BUSH = --尖刺灌木
		{
			BURNING = "That's burning fast!",
			GENERIC = "It looks thorny.",
			PICKED = "That hurt.",
		},
		BURNT_MARSH_BUSH = "It's all burnt up.", --烧毁的尖刺灌木
		MARSH_PLANT = "It's a plant.", --池塘边小草
		MARSH_TREE = --针叶树
		{
			BURNING = "Spikes and fire!",
			BURNT = "Now it's burnt and spiky.",
			CHOPPED = "Not so spiky now!",
			GENERIC = "Those spikes look sharp!",
		},
		MAXWELL = "I hate that guy.", --麦斯威尔
		MAXWELLHEAD = "I can see into his pores.",
		MAXWELLLIGHT = "I wonder how they work.",
		MAXWELLLOCK = "Looks almost like a key hole.",
		MAXWELLTHRONE = "That doesn't look very comfortable.",
		MEAT = "It's a bit gamey, but it'll do.", --大肉
		MEATBALLS = "I cooked it myself!", --肉丸
		MEATRACK = --【晾肉架】做、风干、雨中风干、一般、烧毁
		{
			DONE = "Jerky time!",
			DRYING = "Meat takes a while to dry.",
			DRYINGINRAIN = "Meat takes even longer to dry in rain.",
			GENERIC = "I should dry some meats.",
			BURNT = "The rack got dried.",
		},
		MEAT_DRIED = "Just jerky enough.", --大肉干
		MERM = "Smells fishy!", --鱼人
		MERMHEAD =  --鱼头棍
		{
			GENERIC = "The stinkiest thing I'll smell all day.",
			BURNT = "Burnt merm flesh somehow smells even worse.",
		},
		MERMHOUSE =  --鱼人房
		{
			GENERIC = "Who would live here?",
			BURNT = "Nothing to live in, now.",
		},
		MINERHAT = "A hands-free way to brighten my day.", --矿工帽
		MONKEY = "Curious little guy.", --猴子
		MONKEYBARREL = "Did that just move?", --猴子桶
		MONSTERLASAGNA = "It's an affront to science.", --怪物千层饼
		FLOWERSALAD = "A bowl of foliage.", --花沙拉
        ICECREAM = "I scream for ice cream!", --冰激凌
        WATERMELONICLE = "Cryogenic watermelon.", --西瓜冰
        TRAILMIX = "A healthy, natural snack.", --干果
        HOTCHILI = "Five alarm!", --咖喱
        GUACAMOLE = "Avogadro's favorite dish.", --鳄梨酱
		MONSTERMEAT = "Ugh. I don't think I should eat that.", --怪物肉
		MONSTERMEAT_DRIED = "Strange-smelling jerky.", --怪物肉干
		MOOSE = "I don't exactly know what that thing is.", --鹿鸭
		MOOSE_NESTING_GROUND = "It puts its babies there.", --鹿鸭巢穴
		MOOSEEGG = "Its contents are like excited electrons trying to escape.", --鹿鸭蛋
		MOSSLING = "Aaah! You are definitely not an electron!", --小鸭
		FEATHERFAN = "Down, to bring the temperature down.", --羽毛扇
		MINIFAN = "Somehow the breeze comes out the back twice as fast.", --迷你风扇
		TROPICALFAN = "Somehow the breeze comes out the back twice as fast.", --热带风扇
		GOOSE_FEATHER = "Fluffy!", --鹿鸭羽毛
		STAFF_TORNADO = "Spinning doom.", --龙卷风魔杖
		MOSQUITO = --蚊子
		{
			GENERIC = "Disgusting little bloodsucker.",
			HELD = "Hey, is that my blood?",
		},
		MOSQUITOSACK = "It's probably not someone else's blood...", --蚊子血囊
		MOUND = --坟墓土堆
		{
			DUG = "I should probably feel bad about that.",
			GENERIC = "I bet there's all sorts of good stuff down there!",
		},
		NIGHTLIGHT = "It gives off a spooky light.", --暗影照明灯
		NIGHTMAREFUEL = "This stuff is crazy!", --噩梦燃料
		NIGHTSWORD = "I dreamed it myself!", --暗影剑
		NITRE = "I'm not a geologist.", --硝石
		ONEMANBAND = "I should have added a beefalo bell.", --独奏乐器
		PANDORASCHEST = "It may contain something fantastic! Or horrible.",--华丽的箱子
		PANFLUTE = "I can serenade the animals.", --排箫
		PAPYRUS = "Some sheets of paper.", --纸
		PENGUIN = "Must be breeding season.", --企鹅
		PERD = "Stupid bird! Stay away from my berries!", --火鸡
		PEROGIES = "These turned out pretty good.",--半圆小酥饼
		PETALS = "I showed those flowers who's boss!", --花瓣
		PETALS_EVIL = "I'm not sure I want to hold these.", --恶魔花瓣
		PHLEGM = "It's thick and pliable. And salty.",
		PICKAXE = "Iconic, isn't it?", --稿子
		PIGGYBACK = "This little piggy's gone... \"home\".", --猪皮包
		PIGHEAD = --猪头棍
		{	
			GENERIC = "Looks like an offering to the beast.",
			BURNT = "Crispy.",
		},
		PIGHOUSE = --猪人房
		{
			FULL = "I can see a snout pressed up against the window.",
			GENERIC = "These pigs have pretty fancy houses.",
			LIGHTSOUT = "Come ON! I know you're home!",
			BURNT = "Not so fancy now, pig!",
		},
		PIGKING = "Ewwww, he smells!", --猪王
		PIGMAN = --猪人
		{
			DEAD = "Someone should tell its family.",
			FOLLOWER = "You're part of my entourage.",
			GENERIC = "They kind of creep me out.",
			GUARD = "Looks serious.",
			WEREPIG = "Not a friendly pig!!", --疯猪
		},
		PIGSKIN = "It still has the tail on it.", --猪皮
		PIGTENT = "Smells like bacon.", --猪棚
		PIGTORCH = "Sure looks cozy.", --猪人火炬
		PINECONE =  --松果
		{
		    GENERIC = "I can hear a tiny tree inside it, trying to get out.",
		    PLANTED = "It'll be a tree soon!",
		},
		LUMPY_SAPLING = "How did this tree even reproduce?", --块状树苗
		PITCHFORK = "Maxwell might be looking for this.", --干草叉
		PLANTMEAT = "That doesn't look very appealing.", --食人花肉
		PLANTMEAT_COOKED = "At least it's warm now.", --烤食人花肉
		PLANT_NORMAL = --正常植物
		{
			GENERIC = "Leafy!",
			GROWING = "Guh! It's growing so slowly!",
			READY = "Mmmm. Ready to harvest.",
			WITHERED = "The heat killed it.",
		},
		POMEGRANATE = "It looks like the inside of an alien's brain.", --石榴
		POMEGRANATE_COOKED = "Haute Cuisine!", --烤石榴
		POMEGRANATE_SEEDS = "It's a pome-whatsit seed.", --石榴种子
		POND = "I can't see the bottom!", --池塘
		POOP = "I should fill my pockets!", --便便
		FERTILIZER = "That is definitely a bucket full of poop.", --化肥
		PUMPKIN = "It's as big as my head!", --南瓜
		PUMPKINCOOKIE = "That's a pretty gourd cookie!", --南瓜饼
		PUMPKIN_COOKED = "How did it not turn into a pie?", --烤南瓜
		PUMPKIN_LANTERN = "Spooky!", --南瓜灯
		PUMPKIN_SEEDS = "It's a pumpkin seed.", --南瓜种子
		PURPLEAMULET = "It's whispering to me.", --紫色护身符
		PURPLEGEM = "It contains the mysteries of the universe.", --紫宝石
		RABBIT = --兔子
		{
			GENERIC = "He's looking for carrots.",
			HELD = "Do you like science?",
		},
		RABBITHOLE =  --兔子洞
		{
			GENERIC = "That must lead to the Kingdom of the Bunnymen.",
			SPRING = "The Kingdom of the Bunnymen is closed for the season.",
		},
		RAINOMETER = --雨量计
		{	
			GENERIC = "It measures cloudiness.",
			BURNT = "The measuring parts went up in a cloud of smoke.",
		},
		RAINCOAT = "Keeps the rain where it ought to be. Outside my body.", --雨衣
		RAINHAT = "It'll mess up my hair, but I'll stay nice and dry.", --雨帽
		RATATOUILLE = "An excellent source of fiber.",--蹩脚的炖菜
		RAZOR = "A sharpened rock tied to a stick. For hygiene!", --剃刀
		REDGEM = "It sparkles with inner warmth.", --红宝石
		RED_CAP = "It smells funny.", --摘下的红蘑菇
		RED_CAP_COOKED = "It's different now...", --烤红蘑菇
		RED_MUSHROOM = --红蘑菇
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		REEDS =  --芦苇
		{
			BURNING = "That's really burning!",
			GENERIC = "It's a clump of reeds.",
			PICKED = "I picked all the useful reeds.",
		}, 
        RELIC = --废墟
        {
            GENERIC = "Ancient household goods.",
            BROKEN = "Nothing to work with here.",
        },
        RUINS_RUBBLE = "This can be fixed.", --损坏的废墟
        RUBBLE = "Just bits and pieces of rock.", --碎石
		RESEARCHLAB =  --科学机器
		{	
			GENERIC = "It breaks down objects into their scientific components.",
			BURNT = "It won't be doing much science now.",
		},
		RESEARCHLAB2 = --炼金术引擎
		{
			GENERIC = "It's even more science-y than the last one!",
			BURNT = "The extra science didn't keep it alive.",
		},
		RESEARCHLAB3 = --灵子分解器
		{
			GENERIC = "What have I created?",
			BURNT = "Whatever it was, it's burnt now.",
		},
		RESEARCHLAB4 = --暗影操纵者
		{
			GENERIC = "Who would name something that?",
			BURNT = "Fire doesn't really solve naming issues...",
		},
		RESURRECTIONSTATUE =  --肉块雕像
		{
			GENERIC = "What a handsome devil!",
			BURNT = "Not much use anymore.",
		},
		RESURRECTIONSTONE = "It's always a good idea to touch base.", --复活祭台
		ROBIN = --红雀
		{
			GENERIC = "Does that mean winter is gone?",
			HELD = "He likes my pocket.",
		},
		ROBIN_WINTER = --雪雀
		{
			GENERIC = "Life in the frozen wastes.",
			HELD = "It's so soft.",
		},
		ROBOT_PUPPET = "It's trapped!", --机器人傀儡
		ROCK_LIGHT = --火山坑
		{
			GENERIC = "A crusted over lava pit.",
			OUT = "Looks fragile.",
			LOW = "The lava's crusting over.",
			NORMAL = "Nice and comfy.",
		},
		ROCK = "It wouldn't fit in my pocket.",
		ROCK_ICE =  --冰石
		{
			GENERIC = "A very isolated glacier.",
			MELTED = "Won't be useful until it freezes again.",
		},
		ROCK_ICE_MELTED = "Won't be useful until it freezes again.", --融化的冰石
		ICE = "Ice to meet you.", --冰
		ROCKS = "I can make stuff with these.", --石块
        ROOK = "Storm the castle!",--战车
		ROPE = "Some short lengths of rope.", --绳子
		ROTTENEGG = "Ew! It stinks!", --烂鸡蛋
		SANITYROCK = --猪王矮柱石
		{
			ACTIVE = "That's a CRAZY looking rock!",
			INACTIVE = "Where did the rest of it go?",
		},
		SAPLING = --树苗
		{
			BURNING = "That's burning fast!",
			WITHERED = "It might be okay if it was cooler.",
			GENERIC = "Baby trees are so cute!",
			PICKED = "That'll teach him.",
		},
		SEEDS = "Each one is a tiny mystery.", --种子
		SEEDS_COOKED = "I cooked all the life out of 'em!", --烤种子
		SEWING_KIT = "Darn it! Darn it all to heck!",--针线包
		SHOVEL = "There's a lot going on underground.", --铲子
		SILK = "It comes from a spider's butt.", --蜘蛛网
		SKELETON = "Better you than me.", --人骨
		SCORCHED_SKELETON = "Spooky.", --烧焦的骨头
		SKELETON_PLAYER = "Better him than... wait a minute!", --人物骨头
		SKULLCHEST = "I'm not sure if I want to open it.", --骷髅箱
		SMALLBIRD = --小高鸟
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
		},
		SMALLMEAT = "A tiny chunk of dead animal.", --小肉
		SMALLMEAT_DRIED = "A little jerky.", --小肉干
		SPAT = "What a crusty looking animal.",
		SPEAR = "That's one pointy stick.", --长矛
		SPIDER = --地面蜘蛛
		{
			DEAD = "Ewwww!",
			GENERIC = "I hate spiders.",
			SLEEPING = "I'd better not be here when he wakes up.",
		},
		SPIDERDEN = "Sticky!", --蜘蛛巢穴
		SPIDEREGGSACK = "I hope these don't hatch in my pocket.", --蜘蛛卵
		SPIDERGLAND = "It has a tangy, antiseptic smell.", --蜘蛛线体
		SPIDERHAT = "I hope I got all of the spider goo out of it.", --蜘蛛帽
		SPIDERQUEEN = "AHHHHHHHH! That spider is huge!", --蜘蛛女王
		SPIDER_WARRIOR = --地面蜘蛛战士
		{
			DEAD = "Good riddance!",
			GENERIC = "Looks even meaner than usual.",
			SLEEPING = "I should keep my distance.",
		},
		SPOILED_FOOD = "It's a furry ball of rotten food.", --腐烂食物
		STATUEHARP = "What happened to the head?", --竖琴雕像
		STATUEMAXWELL = "It really captures his personality.",
		STEELWOOL = "Scratchy metal fibers.", --麦斯威尔雕像
		STINGER = "Looks sharp!",--蜂刺
		STRAWHAT = "Hats always ruin my hair.", --草帽

		TALLBIRD = "That's one tall bird!",--高鸟
		TALLBIRDEGG = "Will it hatch?",--高鸟蛋
		TALLBIRDEGG_COOKED = "Delicious and nutritious.", --烤高鸟蛋
		TALLBIRDEGG_CRACKED = --孵化的高鸟蛋
		{
			COLD = "Is it shivering or am I?",
			GENERIC = "Looks like it's hatching!",
			HOT = "Are eggs supposed to sweat?",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST = --高鸟巢穴
		{
			GENERIC = "That's quite an egg!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD = --中高鸟
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "I'd better find it some food.",
			STARVING = "It has a dangerous look in its eye.",
		},
		TELEBASE = --传送核心
		{
			VALID = "It's ready to go.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET =  --宝石插槽
		{
			VALID = "Looks ready.",
			GEMS = "It needs a gem.",
		},
		TELEPORTATO_BASE = --传送机零件底座
		{
			ACTIVE = "With this I can surely pass through space and time!",
			GENERIC = "This appears to be a nexus to another world!",
			LOCKED = "There's still something missing.",
			PARTIAL = "Soon, the invention will be complete!",
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.", --盒状传送机零件
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.",--曲柄状传送机零件
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...",--球状传送机零件
		TELEPORTATO_RING = "A ring that could focus dimensional energies.",--环状传送机零件
		TELESTAFF = "It can show me the world.",--传送魔杖
		TENT = --帐篷
		{
			GENERIC = "I get sort of crazy when I don't sleep.",
			BURNT = "Nothing left to sleep in.",
		},
		SIESTAHUT = --午睡小屋
		{
			GENERIC = "A nice place for an afternoon rest, safely out of the heat.",
			BURNT = "It won't provide much shade now.",
		},
		TENTACLE = "That looks dangerous.", --触手
		TENTACLESPIKE = "It's pointy and slimy.", --狼牙棒
		TENTACLESPOTS = "I think these were its genitalia.", --触手皮
		TENTACLE_PILLAR = "A slimy pole.",  --大触手
		TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.", --触手洞
		TENTACLE_PILLAR_ARM = "Little slippery arms.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "What a nice hat.", --高礼帽
		TORCH = "Something to hold back the night.", --火把
		TRANSISTOR = "It's whirring with electricity.", --晶体管
		TRAP = "I wove it real tight.", --陷阱
		TRAP_TEETH = "This is a nasty surprise.", --犬牙陷阱
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!", --麦斯威尔陷阱
		TREASURECHEST = --木箱
		{
			GENERIC = "It's my tickle trunk!",
			BURNT = "That trunk was truncated.",
		},
		TREASURECHEST_TRAP = "How convenient!", --箱子陷阱
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.", --树丛
--------玩具--------
		TRINKET_1 = "They are all melted together.",--融化的玻璃球
		TRINKET_10 = "I hope I get out of here before I need these.",--二手假牙
		TRINKET_11 = "He whispers beautiful lies to me.",--躺着的机器人
		TRINKET_12 = "I'm not sure what I should do with a dessicated tentacle.",--干燥的触手
		TRINKET_2 = "What's kazoo with you?",--卡祖笛仿照品
		TRINKET_23 = "Someone lost their words.",--鞋拔
		TRINKET_3 = "The knot is stuck. Forever.",--歌德结
		TRINKET_4 = "It must be some kind of religious artifact.",--地精玩偶
		TRINKET_5 = "Sadly, it's too small for me to escape on.",--迷你火箭飞船
		TRINKET_6 = "Their electricity carrying days are over.",--破烂电线
		TRINKET_7 = "I have no time for fun and games!",--剑玉
		TRINKET_8 = "Great. All of my tub stopping needs are met.",--硬化橡胶塞
		TRINKET_9 = "I'm more of a zipper person, myself.",--配错的纽扣
--------------------
		BISHOP_CHARGE_HIT = "Ow!", --主教攻击
		TRUNKVEST_SUMMER = "Wilderness casual.", --夏日背心
		TRUNKVEST_WINTER = "Winter survival gear.", --冬季背心
		TRUNK_COOKED = "Somehow even more nasal than before.", --烤象鼻
		TRUNK_SUMMER = "A light breezy trunk.", --夏象鼻
		TRUNK_WINTER = "A thick, hairy trunk.", --冬象鼻
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.", --风滚草
		TURF_DIRT = "A chunk of ground.", --污垢地皮
		TURF_FOREST = "A chunk of ground.", --森林地皮
		TURF_GRASS = "A chunk of ground.",--草原地皮
		TURF_MARSH = "A chunk of ground.",--沼泽地皮
		TURF_ROAD = "Hastily cobbled stones.",--卵石路地皮
		TURF_ROCKY = "A chunk of ground.", --岩石地皮
		TURF_SAVANNA = "A chunk of ground.", --稀树草原
		TURKEYDINNER = "Mmmm.", --火鸡正餐
		TWIGS = "It's a bunch of small twigs.", --树枝
		UMBRELLA = "This will keep my hair dry, at least.", --雨伞
		GRASS_UMBRELLA = "This will keep my hair moderately dry, at least.", --草伞
		PALMLEAF_UMBRELLA = "My hair looks good wet... it's when it dries that's the problem.",--棕榈伞
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.", --未实现的
		WAFFLES = "I'm waffling on whether I should add more syrup.", --华夫饼
		WALL_HAY = --地上的草墙
		{	
			GENERIC = "Hmmmm. I guess that'll have to do.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "This seems like a bad idea.", --草墙
		WALL_STONE = "That's a nice wall.", --地上的石墙
		WALL_STONE_ITEM = "They make me feel so safe.", --石墙
		WALL_RUINS = "An ancient piece of wall.", --地上的铥墙
		WALL_RUINS_ITEM = "A solid piece of history.",--铥墙
		WALL_WOOD = --地上的木墙
		{
			GENERIC = "Pointy!",
			BURNT = "Burnt!",
		},
		WALL_WOOD_ITEM = "Pickets!", --木墙
		WALL_MOONROCK = "Spacey and smooth!", --地上的月石墙
		WALL_MOONROCK_ITEM = "Very light, but surprisingly tough.", --月石墙
		MOONROCKNUGGET = "That rock came from the moon.", --月石金块
		ROCK_MOON = "That rock came from the moon.", --月石
		WALRUS = "Walruses are natural predators.", --海象
		WALRUSHAT = "It's covered with walrus hairs.", --海象帽
		WALRUS_CAMP = --海象营地
		{
			EMPTY = "Looks like somebody was camping here.",
			GENERIC = "It looks warm and cozy inside.",
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.", --海象牙
		WARG = "You might be something to reckon with, big dog.", --座狼
		WASPHIVE = "I think those bees are mad.", --杀人蜂窝
		WATERMELON = "Sticky sweet.", --西瓜
		WATERMELON_COOKED = "Juicy and warm.", --烤西瓜
		WATERMELONHAT = "Let the juice run down your face.", --西瓜帽
		WETGOOP = "It tastes like nothing.",--湿腻焦糊
		WHIP = "Nothing like loud noises to help keep the peace.", --鞭
		WINTERHAT = "It'll be good for when winter comes.", --寒冬帽
		WINTEROMETER = --寒冰温度计
		{
			GENERIC = "I am one heck of a scientist.",
			BURNT = "Its measuring days are over.",
		},
		WORMHOLE = --虫洞
		{
			GENERIC = "Soft and undulating.",
			OPEN = "Science compels me to jump in.",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.",--被限制的虫洞
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know that I did.",  --修养圣地     
		LIVINGTREE = "Is it watching me?", --活树
		ICESTAFF = "It's cold to the touch.", --冰杖
		
        FLOTSAM = "If only I had some way of hooking on to it from here.", --废料

        SUNKEN_BOAT = --沉船
        {
            GENERIC = "That fellow looks like he wants to talk.",
            ABANDONED = "This is why I hate the water.",
        },
        SUNKEN_BOAT_BURNT = "It's even less seaworthy than before.", --烧毁的沉船
   		SUNKEN_BOAT_TRINKET_1 = "An instrument of some sort.", --sextant 六分仪
		SUNKEN_BOAT_TRINKET_2 = "Now all I need is a miniaturization machine!", --toy boat 玩具穿
		SUNKEN_BOAT_TRINKET_3 = "Looks kinda soggy.", --candle 蜡烛
		SUNKEN_BOAT_TRINKET_4 = "Scientific!", --sea worther
		SUNKEN_BOAT_TRINKET_5 = "If only I had another!", --boot 靴子

		HOUNDFIRE = "Fire! Fire!", --猎犬的火

		--- CAPY DLC ------------------------------------------------------------------------------------------------
		
		STUFFEDEGGPLANT = "I'll be stuffed after eating this!", --甘薯
		SUNKBOAT = "It's no use to me out there!", --沉没的船
		BANANAPOP = "No, not brain freeze! I need that for science!", --香蕉船
		BISQUE = "Cooking that sure kept me bisque-y!",  --帽贝汤
		CEVICHE = "Can I get a bigger bowl? This one looks a little shrimpy.", --酸橘汁腌鱼
		SEAFOODGUMBO = "It's a jumbo seafood gumbo.",--酸橘汁腌鱼
		SURFNTURF = "It's perf!",
		SHARKFINSOUP = "It's shark fin-ished!", --鲨鱼鳍汤
		LOBSTERDINNER = "If I eat it in the morning is it still dinner?", --龙虾大餐
		LOBSTERBISQUE = "Could use more salt, but that's none of my bisque-ness.",--龙虾浓汤
		JELLYOPOP = "Jelly-O pop it right in my mouth!", --冰镇果冻
		SWEATERVEST = "This vest is dapper as all get-out.",--小巧背心
		REFLECTIVEVEST = "Keep off, evil sun!",--夏季背心
		HAWAIIANSHIRT = "It's not lab safe!",--夏威夷衬衫
		TAFFY = "My dentist'd get mad if I ate this... but I don't have one.",--太妃糖

		ANTIVENOM = "Tastes horrible!",--抗蛇毒血清
		VENOMGLAND = "Only poison can cure poison.",--毒腺
		BLOWDART_POISON = "The pointy end goes that way.",--毒镖
		OBSIDIANMACHETE = "It's hot to the touch.",--黑曜石砍刀
		SPEARGUN_POISON = "Poison tipped.",--毒矛枪
		OBSIDIANSPEARGUN = "Fire tipped.",--黑曜石矛枪
		LUGGAGECHEST = "It looks like a premier steamer trunk.",
		PIRATIHATITATOR = --灵子分解机（魔法一本）
		{
			GENERIC = "It's twisting my tongue.",
			BURNT = "Fire doesn't really solve naming issues...",
		},
		COFFEEBEANS = "They could use some roasting.", --咖啡豆
		COFFEE = "Smells delicious and energizing!",--咖啡
		COFFEEBEANS_COOKED = "Heat definitely improved them.",--烤咖啡豆
		COFFEEBUSH = --【咖啡丛】贫瘠、枯萎、一般、可采摘
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "Looks malnourished.",
			GENERIC = "This is a plant I could learn to love.",
			PICKED = "Maybe they'll grow back?",
		},
		COFFEEBOT = "It's a coffee maker.",
		MUSSEL = "Could use some flexing.",--贻贝
		MUSSEL_FARM = --贻贝床
		{
			 GENERIC = "I wonder if they are from Brussels.",
			 STICKPLANTED = "I really stuck it to them."
		},

		MUSSEL_STICK = "I'm really going to stick it to those mussels.",--采贝器
		LOBSTER = "What a Wascally Wobster.",--龙虾
		LOBSTERHOLE = "That Wascal is sleeping.",--龙虾巢穴
		SEATRAP = "For the deadliest catch.",--海洋陷阱
		SAND_CASTLE = --沙堡
		{
			SAND = "It's a sandcastle, in the sand!",
			GENERIC = "Look what I made!"
		},
		BOATREPAIRKIT = "This will add some float to my boat.", --修船工具

		BALLPHIN = "Such a round, rubbery fellow.",--海豚
		BOATCANNON = "The only thing better than a boat is a boat with a cannon.",--船炮
		BOTTLELANTERN = "A bottle full of sunshine.",--瓶灯
		BURIEDTREASURE = "Please be a good treasure!",--宝藏
		BUSH_VINE = --【藤蔓】燃烧、烧毁、被砍、一般
		{
			BURNING = "Whoops.", 
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all viney!",
		},
		CAPTAINHAT = "The proper boating attire!",--船长帽
		COCONADE = --【椰壳炸弹】燃烧、一般
		{
			BURNING = "This seems dangerous.",
			GENERIC = "I'll need to light it first.",
		},
		CORAL = "Living building material!", --珊瑚
		CORALREEF = "The coral's formed a reef!",--珊瑚礁
		CRABHOLE = "They call a hole in the sand their home.",--螃蟹洞
		CUTLASS = "I hope this sword doesn't start to smell...",--剑鱼剑
		DUBLOON = "I'm rich!", --金币
		FABRIC = "Soft cloth made from hard roots!", --布
		FISHINHOLE = "This area seems pretty fishy.", --鱼巢
		GOLDENMACHETE = "Hack in style!",--黄金砍刀
		JELLYFISH = "This creature is pure science!",--水母
		JELLYFISH_DEAD = "It lived a good life. Maybe.", --死水母
		JELLYFISH_COOKED = "It's all wriggly.",--烤水母
		JELLYFISH_PLANTED = "Science works in mysterious, blobby ways.",
		JELLYJERKY = "I'd be a jerk not to eat this.",--水母干

		LIMPETROCK =--帽贝岩
		{
			GENERIC = "I could fill a pail with all those snails.",
			PICKED = "I can't fill a pail without snails.",
		},
		LOGRAFT = "This looks... sort of boat-like...",--木筏
		MACHETE = "I like the cut of this blade.",--砍刀
		MESSAGEBOTTLEEMPTY = "Just an empty bottle.",--空瓶子
		MOSQUITO_POISON = "These blasted mosquitoes carry a terrible sickness.",--毒蚊子
		OBSIDIANCOCONADE = "It's even bombier!",--黑曜石炸弹
		OBSIDIANFIREPIT =--【黑曜石火堆】余火、一般、高、低、正常、烧尽
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "This fire pit is a conductor for even more... fire.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "This is my best invention yet.",
			OUT = "At least I can start it up again.",
		},
		OX = "These creatures seem reasonable.",--水牛
		PIRATEHAT = "Fit for a cutthroat scallywag. Or me.",--海盗帽
		RAFT = "This looks adequate.",--筏
		ROWBOAT = "It runs on elbow grease.",--划艇
		SAIL = "This should really transform my boating experience.",--帆
		SANDBAG_ITEM = "Sand technology, on the go.",--沙袋（物品）
		SANDBAG = "Keeps the water at bay.",--放置的沙袋
		SEASACK = "I hate when food has that not-so-fresh taste.",--海上麻袋
		SEASHELL_BEACHED = "Sea refuse.", --贝壳
		SEAWEED = "A weed. Of the sea.",--海带

		SEAWEED_PLANTED = "Is that what passes for food around here?",--种植的海带
		SLOTMACHINE = "I suppose I could linger for a moment or two.",--老虎机
		SNAKE_POISON = "Even worse than a regular snake!",--毒蛇
		SNAKESKIN = "I'm intrigued AND repelled.",--蛇皮
		SNAKESKINHAT = "It should repel the rain from my hair.",--蛇皮帽
		SOLOFISH = "It has that wet-dog smell.",
		SPEARGUN = "Oh, the science I could get up to with this!",--矛枪
		SPOILED_FISH = "I'm not terribly curious about the smell.",--变质的鱼
		SWORDFISH = "I think this fish evolved to run me through.",--剑鱼
		TRIDENT = "I wonder how old this artifact is?",--三叉戟
		TRINKET_13 = "What is this substance?", --橘子汽水
		TRINKET_14 = "This thing gives me the creeps...",--巫毒娃娃
		TRINKET_15 = "Incredible! This guitar has undergone shrinkification!",--四弦琴
		TRINKET_16 = "How did this get all the way out here?",--号码牌
		TRINKET_17 = "Where's the other one?",--旧靴子
		TRINKET_18 = "A relic of a bygone era!",--古老的花瓶
		TRINKET_19 = "Clouding of the brain. Never heard of it...",--脑云丸
		TURBINE_BLADES = "Perhaps this powered that beastly storm?",--涡轮叶片
		TURF_BEACH = "Sandy ground.",--海滩地皮
		TURF_JUNGLE = "Very gnarled ground.",--丛林地皮
		VOLCANO_ALTAR =--火山祭坛
		{
			GENERIC = "It appears to be closed.",
			OPEN = "The altar is open and ready to accept offerings!",
		},
		VOLCANO_ALTAR_BROKEN = "Er, that won't be a problem, will it?", --破碎的火山祭坛
		WHALE_BLUE = "That whale has emotional issues.",--蓝鲸
		WHALE_CARCASS_BLUE = "Gross. I think the bloating has begun.",--蓝鲸尸体
		WHALE_CARCASS_WHITE = "Gross. I think the bloating has begun.",--白鲸尸体

		ARMOR_SNAKESKIN = "How fashionable!", --蛇皮甲
		CLOTHSAIL = "That wind isn't getting away now!",--布帆
		DUG_COFFEEBUSH = "This belongs in the ground!",--咖啡丛根
		LAVAPOOL = "A bit hot for my tastes.",--熔岩池
		BAMBOO = "Maybe I can bamboozle my enemies with this?",--竹子
		AERODYNAMICHAT = "It really cuts through the air!",--星芒头盔
		POISONHOLE = "I think I'll stay away from that.",--毒气洞
		BOAT_LANTERN = "This will do wonders for my night vision!",--船灯
		DEAD_SWORDFISH = "I better not run with this.",--死剑鱼
		LIMPETS = "Maybe starving wouldn't be so bad.",--帽贝
		OBSIDIANAXE = "A winning combination!",--黑曜石斧子
		COCONUT = --椰子
		{
		    GENERIC = "It requires a large nut hacker.",
		    PLANTED = "It doesn't need my help to grow anymore.",
		},
		COCONUT_COOKED = "Now I just need a cake.", --烤熟的椰子
		BERMUDATRIANGLE = "Gives me an uneasy feeling.", --百慕大群岛三角洲（海难虫洞）
		SNAKE = "I wonder if it'll sell me some oil?",--蛇
		SNAKEOIL = "The label says \"Jay's Wondrous Snake Oil!\"",--蛇油
		ARMORSEASHELL = "Arts and crafts!",--贝壳甲
		SNAKE_FIRE = "Is that snake smoldering?",--燃烧的蛇
		MUSSEL_COOKED = "I cook a mean mussel.",--熟贻贝

		PACKIM_FISHBONE = "This seems like something I should carry around.",  --鱼骨
		PACKIM = "I bet I could pack'im full of stuff.",

		ARMORLIMESTONE = "I'm sure this will hold up great!", --石灰石甲
		TIGERSHARK = "Well that's terrifying.", --虎鲨
		WOODLEGS_KEY1 = "Something, somewhere must be locked.", --木腿船长 钥匙1
		WOODLEGS_KEY2 = "This key probably unlocks something.", --木腿船长 钥匙2
		WOODLEGS_KEY3 = "That's a key.",--木腿船长 钥匙3
		WOODLEGS_CAGE = "That seems like an excessive amount of locks.", --关木腿船长的笼子
		OBSIDIAN_WORKBENCH = "I feel inspired.", --黑曜石工作台

		NEEDLESPEAR = "I'm glad I didn't step on this.", --仙人掌刺
		LIMESTONE = "Could be a useful building material.", --石灰石
		DRAGOON = "You're a quick one, aren't you?",

		ICEMAKER =  --【制冰机】燃料用尽、极低、低、普通、高
		{
			OUT = "It needs more fuel.",
			VERYLOW = "I can hear it sputtering.",
			LOW = "It seems to be slowing down.",
			NORMAL = "It's putting along.",
			HIGH = "It's running great!",
		},

		DUG_BAMBOOTREE = "I need to plant this.", --竹根
		BAMBOOTREE = --【竹】燃烧、烧毁、砍伐、一般
		{
			BURNING = "Bye bye, bamboo.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "Looks pretty sturdy.",
		},
		JUNGLETREE = --【丛林树】燃烧、烧毁、砍伐、一般
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "That tree needs a hair cut.",
		},
		SHARK_GILLS = "I wish I had gills.", --鲨鱼鳃
		TREEGUARD = "Someone gimme a hand with this palm!", --树精守卫
		OBSIDIAN = "It's a fire rock.", --黑曜石
		BABYOX = "It's a tiny meat beast.", --水牛宝宝
		STUNGRAY = "I think I'll keep my distance.", --毒鱼
		SHARK_FIN = "A sleek fin.", --鱼翅
		FROG_POISON = "It looks meaner than usual.", --毒蛙
		ARMOUREDBOAT = "That is one durable boat.", --装甲船
		ARMOROBSIDIAN = "I'm a genius.", --黑曜石甲
		BIOLUMINESCENCE = "These make a soothing glow.",--海萤火虫
		SPEAR_POISON = "Now it's extra deadly.", --毒矛
		SPEAR_OBSIDIAN = "This will leave a mark.", --黑曜石矛
		SNAKEDEN = --【蛇穴】燃烧、烧毁、砍伐。一般
		{
			BURNING = "Whoops.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all viney!",
		},
		TOUCAN = "I tou-can't catch him.", --大嘴鸟
		MESSAGEBOTTLE = "Someone wrote me a note!", --宝藏瓶
		SAND = "A handy pile of pocket sand.", --沙子
		SANDHILL = "You better stay out of my shoes.",--沙丘
		PEACOCK = "Nothing more than a dressed up thief.",
		VINE = "Maybe I can tie stuff up with this.", --藤蔓
		SUPERTELESCOPE = "I can see forever!", --超级望远镜
		SEAGULL = "Shoo! Find some other land!", --海鸥
		SEAGULL_WATER = "Shoo! Find some other water!", --水上的海鸥
		PARROT = "I find myself fresh out of crackers.", --鹦鹉
		ARMOR_LIFEJACKET = "Keeps me afloat, without my boat!", --救生衣
		WHALE_BUBBLES = "Something's underwater here.",--鲸鱼气泡
		EARRING = "The fewer holes in my body, the better.", --至尊耳环
		ARMOR_WINDBREAKER = "The wind doesn't stand a chance!", --风衣
		SEAWEED_COOKED = "Crispy.", --烤海带
		CARGOBOAT = "It has room for all my stuff!", --货船
		GASHAT = "Sucks all the stink out.",--粉尘净化器
		ELEPHANTCACTUS = "Yikes! I could poke an eye out!", --象仙人掌
		DUG_ELEPHANTCACTUS = "A portable poker plant.", --象仙人掌根
		ELEPHANTCACTUS_ACTIVE = "That cactus seems abnormally pokey.",--刺人的象仙人掌
		ELEPHANTCACTUS_STUMP = "It'll sprout pokers again eventually.",--象仙人掌根
		FEATHERSAIL = "It's feather-light!", --羽毛帆
		WALL_LIMESTONE_ITEM = "These would do more good if I placed them.", --石灰石墙
		JUNGLETREESEED = --【丛林树种子】一般、种植
        {
            GENERIC = "I can hear the hissing of tiny snakes.",
            PLANTED = "It will grow into a nice jungle tree.",
        },
		VOLCANO = "My scientific know-how tells me that's a perfectly safe mountain!", --火山
		IRONWIND = "This is how a scientist should travel.",--铁风牌发动机
		SEAWEED_DRIED = "Salty!", --晒干的海带
		TELESCOPE = "I spy with my little eye...",--望远镜
		
		DOYDOY = "I feel oddly protective of this dumb bird.", --嘟嘟鸟
		DOYDOYBABY = "What a cute little, uh, thing.", --小嘟嘟鸟
		DOYDOYEGG = "Maybe I should have let it hatch.", --嘟嘟鸟蛋
		DOYDOYEGG_CRACKED = "Oh well. I'm sure there are lots more!",--烤嘟嘟鸟蛋
		DOYDOYFEATHER = "Soft AND endangered!", --嘟嘟鸟羽毛

		PALMTREE = --【棕榈树】燃烧、烧毁、砍伐、一般
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "How tropical.",
		},
		PALMLEAF = "I'm fond of these fronds.", --棕榈叶
		CHIMINEA = "Take that, wind!",--室外壁炉
		DOUBLE_UMBRELLAHAT = "The second umbrella keeps the first umbrella dry.", --双层伞
		CRAB = --【螃蟹】一般、隐藏
		{
			GENERIC = "Don't get snappy with me, mister.",
			HIDDEN = "I wonder where that crabbit went?",
		},
		TRAWLNET = "Nothing but net.",--拖网
		TRAWLNETDROPPED = --【拖网掉落】快掉落、沉了 、一般
		{
			SOON = "It is definitely sinking.",
			SOONISH = "I think it's sinking.",
			GENERIC = "It's bulging with potential!",
		},
		VOLCANO_EXIT = "There's a cool breeze blowing in from outside.", --火山出口
		SHARX = "These things sure are persistent.",
		SEASHELL = "Maybe I could sell these.", --贝壳
		WHALE_BUBBLES = "Something down there has bad breath.", --鲸鱼泡泡
		MAGMAROCK = "I can dig it.", --岩浆岩
		MAGMAROCK_GOLD = "I see a golden opportunity.", --金岩浆岩
		CORAL_BRAIN_ROCK = "I wonder what it's plotting...",
		CORAL_BRAIN = "Food for thought.",
		SHARKITTEN = "You've got to be kitten me!",
		SHARKITTENSPAWNER = --产小虎鲨
		{
			GENERIC = "Is that sand pile purring?",
			INACTIVE = "That is a rather large pile of sand.",
		},
		LIVINGJUNGLETREE = "Just like any other tree.",--丛林活木
		WALLYINTRO_DEBRIS = "Part of a wrecked ship.",
		MERMFISHER = "You better not try anything fishy.", --老鱼人（红鱼人）
        PRIMEAPE = "Those things are going to be the end of me.", --猿猴
        PRIMEAPEBARREL = "Here be evil.", --猿猴小屋
        REDBARREL = "How original.",
        PORTAL_SHIPWRECKED = "It's broken.",
		MARSH_PLANT_TROPICAL = "Planty.",
		TELEPORTATO_SW_POTATO = "Seems like it was made with a purpose in mind.", --木质的类似土豆的玩意
		PIKE_SKULL = "Ouch.",
		PALMLEAF_HUT = "Shade, sweet shade.",--棕榈叶棚
		FISH_RAW_SMALL_COOKED = "A small bit of cooked fish.", --烤鱼
		LOBSTER_DEAD = "You should cook up nicely.", --死龙虾
		MERMHOUSE_FISHER = "Doesn't smell very good.",--老鱼人房（红鱼人房）
		WILDBORE = "Looks aggressive.", --野猪
		PIRATEPACK = "I can keep my booty in here.",
		TUNACAN = "Where did this can come from?", --金枪鱼罐头
		MOSQUITOSACK_YELLOW = "Part of a yellow mosquito.", --黄色蚊子血袋
		SANDBAGSMALL = "This should keep the water out.",--沙袋
		FLUP = "Leave me alone!",--弹涂鱼
		OCTOPUSKING = "I'm a sucker for this guy.", --章鱼王
		OCTOPUSCHEST = "I hope that thing is waterproof.", --章鱼王箱子
		GRASS_WATER = "I hope you're thirsty, grass.", --浸水的草
		WILDBOREHOUSE = "What a bore-ing house.",--野猪房
		FISH_RAW_SMALL = "A small bit of fish.", --小块鱼肉
		TURF_SWAMP = "Swampy turf.",
		FLAMEGEYSER = "Maybe I should stand back.", --火焰喷泉
		KNIGHTBOAT = "Get off the waterway, you maniac!", --齿轮骑士船
		MANGROVETREE_BURNT = "I wonder how that happened.", --烧毁的红树林
		TIDAL_PLANT = "Look. A plant.",
		WALL_LIMESTONE = "Sturdy.", --石灰石墙（已放置）
		FISH_RAW = "A chunk of fish meat.", --鱼肉
		LOBSTER_DEAD_COOKED = "I can't wait to eat you.", --烤死龙虾
		BLUBBERSUIT = "Well, it's something.",--鲸脂套装
		BLOWDART_FLUP = "Eye see.", --眼睛吹箭
		TURF_MEADOW = "Meadow-y turf.",
		TURF_VOLCANO = "Volcano-y turf.", --火山地皮
		SWEET_POTATO = "Looks yammy!", --甘薯
		SWEET_POTATO_COOKED = "Looks even yammier!", --烤甘薯
		SWEET_POTATO_PLANTED = "That's an odd looking carrot.", --种着的甘薯
		SWEET_POTATO_SEEDS = "My very own plant eggs.",--甘薯种子
		BLUBBER = "Squishy.", --鲸脂
		TELEPORTATO_SW_RING = "Looks like I could use this.",  --类似戒指的玩意
		TELEPORTATO_SW_BOX = "It looks like a part for something.", --螺丝钉
		TELEPORTATO_SW_CRANK = "I wonder what this is used for.",--长满草的玩意
		TELEPORTATO_SW_BASE = "I think it's missing some parts.",
		VOLCANOSTAFF = "The label says \"Keep out of reach of children.\"", --火山法杖
		THATCHPACK = "I call it a thatchel.", --茅草包
		TURF_DESERTDIRT = "Dirty turf.", --沙漠地皮
		SHARK_TEETHHAT = "What a dangerous looking hat.",--鲨齿王冠
		TURF_ASH = "Ashy turf.", --灰色地皮
		TURF_FUNGUS_GREEN = "Green fungus-y turf.",--真菌地皮（绿）
		BOAT_TORCH = "This'll keep my hands free.",--船载火炬
		MANGROVETREE = "I wonder if it's getting enough water?", --红树林
		HAIL_ICE = "Chilling.", --雹冰
		TROPICAL_FISH = "What a tropical looking fish.", --热带鱼
		TIDALPOOL = "A pool, left by the tides.", --潮汐池
		WHALE_WHITE = "Looks like a fighter.", --白鲸
		VOLCANO_SHRUB = "You look ashen.", --火山灌木
		ROCK_OBSIDIAN = "Blast it! It won't be mined!",--黑曜岩
		ROCK_CHARCOAL = "Would need an awfully big stocking for that.", --岩碳
		DRAGOONDEN = "Even goons gotta sleep.", --龙穴
		WILBUR_UNLOCK = "He looks kind of regal.", --威尔伯解锁
		WILBUR_CROWN = "It's oddly monkey-sized.", --猴王冠
		TWISTER = "I thought it was strangely windy around here.",--豹卷风
		TWISTER_SEAL = "D'awww.",
		MAGIC_SEAL = "This is a powerful artifact.",--豹印
		SAIL_STICK = "There must be a scientific explanation for this.",--帆棍
		WIND_CONCH = "I can hear the wind trapped within.",--呼啸的海螺
		DRAGOONEGG = "Do I hear cracking?", --龙蛋
		BUOY = "Awww yaaaaa buoy!", --浮标
		TURF_SNAKESKINFLOOR = "Sssstylish ssssstatement.", --蛇皮地板
        DOYDOYNEST = "It's for doydoy eggs, dummy.", --嘟嘟鸟巢穴
		ARMORCACTUS = "The best defense is a good offense.",--仙人掌盔甲
		BRAINJELLYHAT = "Two brains means double the ideas!",--智慧帽
		COCONUT_HALVED = "When I click them together, they make horsey sounds.", --切开的椰子
		CRATE = "There must be a way to open it.", --板条箱
		DEPLETED_BAMBOOTREE = "Will it grow again?", --枯萎的竹子
		DEPLETED_BUSH_VINE = "One day it may return.", --枯萎的藤蔓
		DEPLETED_GRASS_WATER = "Farewell, sweet plant.", --枯萎的水草
		DOYDOYEGG_COOKED = "A controlled chemical reaction has made this egg matter more nutritious.", --烤龙蛋
		DRAGOONHEART = "Where the dragoon once stored its feelings.", --龙心
		DRAGOONSPIT = "It's SPITacularly disgusting!", --龙吐息
		DUG_BUSH_VINE = "I suppose I should pick it up.", --藤蔓根
		FRESHFRUITCREPES = "Sugary fruit! Part of a balanced breakfast.",--鲜果薄饼
		KRAKEN = "Now's not the time for me to be Quacken wise!", --海妖
		KRAKENCHEST = "To the victor, the spoils.",--海妖箱子
		KRAKEN_TENTACLE = "A beast that never sleeps.", --海妖触手
		MAGMAROCK_FULL = "I can dig it.",
		MAGMAROCK_GOLD_FULL = "I see a golden opportunity.",
		MONKEYBALL = "I have a strange desire to name it after myself.", --逗猴球
		MONSTERTARTARE = "There's got to be something else to eat around here.",--怪物鞑靼
		MUSSELBOUILLABAISE = "Imagine the experiments I could run on it!",--浓味黔贝汤
		MYSTERYMEAT = "I'm not dissecting that.",--神秘的肉
		OXHAT = "Nice and dry. This helmet will protect me from the elements.", --牛帽
		OX_FLUTE = "Is it dripping...?", --滴水的长管
		OX_HORN = "I grabbed the ox by the horn.", --水牛角
		PARROT_PIRATE = "I try not to eat anything with a name.",--海盗鹦鹉
		PEG_LEG = "I can perform amputations if anyone'd like to wear it for real.",--假腿
		PIRATEGHOST = "He met a terrible end. I will too if I don't get out of here.", --海盗鬼魂
		SANDBAGSMALL_ITEM = "A bag full of sand. Does science know no bounds?",--沙袋
		SHADOWSKITTISH_WATER = "Yikes!",
		SHIPWRECKED_ENTRANCE = "Ahoy!", --沉船入口
		SHIPWRECKED_EXIT = "And so, I sail away into the horizon!", --沉船出口
		SNAKESKINSAIL = "Scale it and sail it!",--蛇皮帆
		SPEAR_LAUNCHER = "Science takes care of me.",--鱼叉发射器
		SWEETPOTATOSOUFFLE = "Sweet potato souffles are a rising trend.", --薯蛋奶酥
		SWIMMINGHORROR = "Yikes! Get me back to land!",--海洋影怪
		TIGEREYE = "More eyes means better sight... right?",--虎鲨之眼
		TRINKET_20 = "I'm not sure what it is, but it makes me feel smarter!",--六分仪
		TRINKET_21 = "I ought to measure it to ensure it's to scale.",--玩具船
		TRINKET_22 = "I'm sure someone would like this.",--酒瓶蜡烛
		TURF_FUNGUS_RED = "Fungal red floor.", --真菌地皮（红）
		TURF_MAGMAFIELD = "Lava-y floor.", --岩浆地皮
		TURF_TIDALMARSH = "Marsh-y floor.",--潮滩地皮
		VOLCANO_ALTAR_TOWER = "How scary!",--火山祭坛塔
		WATERYGRAVE = "Sure, I could fish it out of there. But should I?",--水墓地
		WHALE_TRACK = "Whale, ho!", --鲸鱼轨迹
		WILDBOREHEAD = "It smells as bad as it looks.", --野猪头
		WOODLEGSBOAT = "A vessel fit for a scallywag.",--海盗船
		WOODLEGSHAT = "Does it make me look scurvy... I mean scary!?",--海盗帽
		WOODLEGSSAIL = "The quintessential pirate sail.",--海盗船帆
		WRECK = "Poor little boat.", --沉船
		INVENTORYGRAVE = "There was someone here before me!",
        INVENTORYMOUND = "There was someone here before me!",
		LIMPETS_COOKED = "Escargotcha!", --烤帽贝
		RAWLING = "It's my buddy!",--罗琳
		CALIFORNIAROLL = "But I don't have chopsticks.",--加利福尼亚卷

	--- 5C DLC ------------------------------------------------------------------------------------------------

        ENCRUSTEDBOAT = "A mere shell of a ship.", --装甲船
        BABYOX = "Smaller, but just as smelly.", --水牛宝宝
        BALLPHINHOUSE = "The place where the ballphins roost.", --海豚宫殿
        DORSALFIN = "Guess that house is FINished.", --背鳍
        NUBBIN = "I want nubbin to do with that.", --珊瑚种子
        CORALLARVE = "That's a baby coral reef.", --珊瑚幼虫
        RAINBOWJELLYFISH = "That's a lot of tendrils.", --彩虹水母
        RAINBOWJELLYFISH_PLANTED = "A colorful blob of science.", --种植的彩虹水母
        RAINBOWJELLYFISH_DEAD = "An electric shock will not revive it. I tried.", --死彩虹水母
        RAINBOWJELLYFISH_COOKED = "A colorful snack!", --烤彩虹水母
        RAINBOWJELLYJERKY = "All the water's dried right out of it.", --彩虹水母干
        WALL_ENFORCEDLIMESTONE = "I shelled out for the good stuff.", --海带墙
        WALL_ENFORCEDLIMESTONE_ITEM = "I have to build it in the water.", --物品栏海带墙
        CROCODOG = "I'd rather stay away from the business end of that jerk.", --鳄狗
        POISONCROCODOG = "That looks like an experiment gone wrong.", --毒鳄狗
        WATERCROCODOG = "It's a dog-eat-me world out here.",--冰鳄狗
        QUACKENBEAK = "I'd say I made the pecking order around here quite clear.", --呱肯乌贼的喙
        QUACKERINGRAM = "Does my ingenuity know no bounds?!",--海妖之锤
    
    --- DLC ------------------------------------------------------------------------------------------------    

        CAVIAR = "I never had it before I came here.", --鱼子酱
        CORMORANT = "I bet it eats a lot of fish.", --鸬鹚

        FISH3 = "Surf and turf, hold the turf.", --紫色石斑鱼
        FISH4 = "This one's extra water repellent.", --小丑鱼
        FISH5 = "It looks like a fish, but it feels clammy.", --霓虹灯鱼

        FISH3_COOKED = "That fish is fin-ished.", --烤紫色石斑鱼
        FISH4_COOKED = "Gilled to perfection.", --烤小丑鱼
        FISH5_COOKED = "Fried fry.", --烤霓虹灯鱼

        FISH_FARM =  --【渔场】空、放养、一条、两条、鲑鱼、海豚
        {
        	EMPTY = "I need to find some fish eggs for this.",
			STOCKED = "The fish babies haven't hatched yet.",
			ONEFISH = "There's a fish!",
			TWOFISH = "The fish are still multiplying.",
			REDFISH = "This has been a successful fish experiment!",
			BLUEFISH  = "I'd better start harvesting these!",
        },

        ROE = "Fish babies.", --鱼卵
        ROE_COOKED = "Roe, sunny side up.", --煮熟的鱼卵
        
        SEA_YARD = --【海 基地】开启、关闭、低燃料
       	{
            ON = "For keeping my ships in tiptop shape!",
            OFF = "It's not in shipshape right now.",
            LOWFUEL = "I'll need to refill it soon.",
        },

        SEA_CHIMINEA = --【漂浮火炉】余火、通用、高、低、正常、烧完
        {
            EMBERS = "Better put something on it before it goes out.",
            GENERIC = "Science protect my fires out here.",
            HIGH = "I'm glad we're surrounded by water.",
            LOW = "It's getting low.",
            NORMAL = "As cozy as it gets.",
            OUT = "It finally went out.",
        }, 

        TAR = "Do I have to hold it with my bare hands?", --焦油
        TAR_EXTRACTOR =  --【焦油提取器】开、关、低燃料
        {
            ON = "It's running smoothly.",
            OFF = "I have to turn it on.",
            LOWFUEL = "I need to refuel that.",
        },
        TAR_POOL = "There must be a way to get that tar out.", --焦油池

        TARLAMP = "That's a real slick lamp.", --焦油灯
        TARSUIT = "I'll pitch a fit if I have to wear that.", --焦油套装
        TAR_TRAP = "Who's cleaning that up, I wonder?", --焦油陷阱

        TROPICALBOUILLABAISSE = "I seasoned it with a dash of science.", --热带鱼羹

        RESEARCHLAB5 = "For sea science!", --海洋实验室
        WATERCHEST = "Watertight, just like all my theories.", --海底阀箱
        QUACKENDRILL = "I can get more tar if I used this at sea.", --海妖之钻
        HARPOON = "I don't intend to harp on the issue.", --鱼叉
        MUSSEL_BED = "I should find a good spot for these.", --贻贝床
	},

	DESCRIBE_GENERIC = "It's a... thing.",  --通用
	DESCRIBE_TOODARK = "It's too dark to see!", --天黑
	DESCRIBE_SMOLDERING = "That thing's about to catch fire.", --自燃
	EAT_FOOD =
	{
		TALLBIRDEGG_CRACKED = "Mmm. Beaky.", --烤高鸟蛋
	},
}
