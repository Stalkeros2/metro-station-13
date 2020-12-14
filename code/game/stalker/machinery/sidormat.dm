var/list/trash_tier_sidormatitems = list()
var/list/low_tier_sidormatitems = list()
var/list/medium_tier_sidormatitems = list()
var/list/high_tier_sidormatitems = list()
var/list/real_sidormat_items = list()

var/list/global_sidormat_list = list(
		///////////////////////////////  Оружие  /////////////////////////////////////////
	"Handguns" = list(
		///////////////////////////// **Пистолеты** /////////////////////////////////////
		new /datum/data/stalker_equipment("PM",		"ПМ",			/obj/item/weapon/gun/projectile/automatic/pistol/pm,				6000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Podonok",     "Подонок",  /obj/item/weapon/gun/projectile/automatic/metro/podonok,             6000, EXPERIENCED),
		new /datum/data/stalker_equipment("Revolver .44",	"Револьвер",	/obj/item/weapon/gun/projectile/revolver/metro/revolver,					3000,	ROOKIE)
		),

	"Automatic Weapons" = list(
		///////////////////////////// **Автоматы, ПП** /////////////////////////////////////
		new /datum/data/stalker_equipment("Bastard",	"Ублюдок",		/obj/item/weapon/gun/projectile/automatic/metro/bastard,				10000,	ROOKIE),
		new /datum/data/stalker_equipment("Makeshift Kalash",			"Кустарный калаш",			/obj/item/weapon/gun/projectile/automatic/ak74/makeshift,	18000,	EXPERIENCED),
		new /datum/data/stalker_equipment ("Kiparis",    "Кипарис",       /obj/item/weapon/gun/projectile/automatic/kiparis,                10000, ROOKIE),
		new /datum/data/stalker_equipment ("PPSh", "ППШ",                 /obj/item/weapon/gun/projectile/automatic/ppsh,        10000, ROOKIE)
		),

	"Shotguns" = list(
		/////////////////////////////// **Дробовики** /////////////////////////////////////
		new /datum/data/stalker_equipment("Doublet",		"Дуплет",			/obj/item/weapon/gun/projectile/revolver/metro/douplet,				15000,	ROOKIE),
		new /datum/data/stalker_equipment("Ashot",			"Ашот",			/obj/item/weapon/gun/projectile/revolver/metro/ashot,						12000,	ROOKIE),
		new /datum/data/stalker_equipment("Shambler",		"Убойник",			/obj/item/weapon/gun/projectile/shotgun/automatic/combat,						25000,	EXPERIENCED)
		),

	"Rifles" = list(
		/////////////////////////////// **Винтовки** /////////////////////////////////////
		new /datum/data/stalker_equipment("SKS", 		"СКС",			/obj/item/weapon/gun/projectile/automatic/sks,					50000,	EXPERIENCED)
		),

	"Melee Weapons" = list(
		/////////////////////////////// **Другое** /////////////////////////////////////
		new /datum/data/stalker_equipment("Kitchen Knife",		"Кухонный нож",				/obj/item/weapon/kitchen/knife,												1500,	ROOKIE),
		new /datum/data/stalker_equipment("Tourist Knife",		"Нож туриста",				/obj/item/weapon/kitchen/knife/tourist,										4000,	ROOKIE),
		new /datum/data/stalker_equipment("Bayonet",			"Штык-нож",					/obj/item/weapon/kitchen/knife/bayonet,										7000,	ROOKIE),
		new /datum/data/stalker_equipment("Butcher's Cleaver",	"Тесак м&#x44F;сника",		/obj/item/weapon/kitchen/knife/butcher,										10000,	ROOKIE)
		),

	"Ammo Boxes" = list(
		////////////////////////////////  Патроны  /////////////////////////////////////////
		new /datum/data/stalker_equipment(".44 Magnum Box",			"Коробка .44 Магнум",						/obj/item/weapon/storage/box/metro/pistol_44_mag,						3000,	ROOKIE),
		new /datum/data/stalker_equipment("12x70 Buckshot Box",		"Коробка дроби 12x70",						/obj/item/weapon/storage/box/metro/shotgun_b12x70,						4000,	ROOKIE),
		new /datum/data/stalker_equipment("5.45x39mm Box",			"Коробка 5.45х39мм",						/obj/item/weapon/storage/box/metro/rifle_545x39,						8000,	ROOKIE),
		new /datum/data/stalker_equipment("5.45x39mm Small Box",			"Компактна&#x44F; коробка 5.45х39мм",						/obj/item/weapon/storage/box/metro/rifle_545x39_small,						4000,	ROOKIE),
		new /datum/data/stalker_equipment("7.62x51 ammo",			"Горстка патрон 7.62х51",							/obj/item/ammo_box/stalker/b762x51,						9000,	ROOKIE)
		),

	"Ammo Magazines and Clips" = list(
		new /datum/data/stalker_equipment("Makeshift 5.45x39mm Magazine",						"Кустарный магазин 5.45x39мм",			/obj/item/ammo_box/magazine/stalker/makeshift,			1800,	ROOKIE),
		new /datum/data/stalker_equipment("Bastard Magazine",					"Магазин к Ублюдку",			/obj/item/ammo_box/magazine/metro/bastard,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("PM magazine",	"Магазин к ПМ",		/obj/item/ammo_box/magazine/stalker/m9x18pm,				1200,	ROOKIE),
		new /datum/data/stalker_equipment("PPSh Magazine",					"Магазин к ППШ",			/obj/item/ammo_box/magazine/stalker/ppsh,			4000,	ROOKIE),
		new /datum/data/stalker_equipment("SKS Magazine",					"Магазин к СКС",			/obj/item/ammo_box/magazine/metro/sks,			2000,	EXPERIENCED)
		),

	"Suits" = list(
		///////////////////////////////  Броня  /////////////////////////////////////////
		new	/datum/data/stalker_equipment("Grey jacket",					"Серая куртка",				/obj/item/clothing/suit/metro/puffer,								5000,	ROOKIE),
		new /datum/data/stalker_equipment("Bandits duster",				"Пальто контрабандиста",		/obj/item/clothing/suit/metro/banditduster,						10000,	ROOKIE),
		new /datum/data/stalker_equipment("Light armored vest",					"Лёгкий самодельный бронежилет",				/obj/item/clothing/suit/metro/armvestlight,			14000,	ROOKIE),
		new /datum/data/stalker_equipment("Medium armored vest",				"Средний самодельный бронежилет",				/obj/item/clothing/suit/metro/armvestmedium,		18000,	ROOKIE),
		new /datum/data/stalker_equipment("Heavy custom-made armor",			"Т&#x44F;жёла&#x44F; кустарна&#x44F; брон&#x44F;",						/obj/item/clothing/suit/metro/heavycustomarmor,		30000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Millitary armored vest",			"Армейский бронежилет",						/obj/item/clothing/suit/metro/armveststandart,		25000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Heavy armor",					"Т&#x44F;жёла&#x44F; армейска&#x44F; брон&#x44F;",						/obj/item/clothing/suit/metro/banditsheavyarmor,								40000,	EXPERIENCED),
		new	/datum/data/stalker_equipment("Civilian bio-suit",			"Гражданский защитный костюм",					/obj/item/clothing/suit/hooded/sealed/radsuit,				40000,	EXPERT),
		new	/datum/data/stalker_equipment("Stalker's upgraded bio-suit",			"Улучшенный защитный костюм",					/obj/item/clothing/suit/hooded/sealed/radsuit/upgraded,				70000,	EXPERIENCED)
		),

	"Masks and Helmets" = list(
		////////////////////////////	Маски, Шлемы	/////////////////////////////////////
		new /datum/data/stalker_equipment("Gasmask",					"Противогаз",					/obj/item/clothing/mask/gas/metro,							2500,	ROOKIE),
		new /datum/data/stalker_equipment("Stalkers gasmask",				"Продвинутый сталкерский противогаз",			/obj/item/clothing/mask/gas/stalker/mercenary,					5000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Steel helmet",				"Стальна&#x44F; каска",				/obj/item/clothing/head/metro/steel,									7500,	ROOKIE),
		new /datum/data/stalker_equipment("Tactical helmet",		"Тактический шлем",		/obj/item/clothing/head/metro/tactical,					15000,	EXPERIENCED)
		),

	"Medicine" = list(
		///////////////////////////////	Медикаменты	/////////////////////////////////////////
		new /datum/data/stalker_equipment("Medkit",						"Аптечка",							/obj/item/weapon/storage/fancy/civilian_medkit,			2800,	ROOKIE),
		new /datum/data/stalker_equipment("Army medkit",				"Армейска&#x44F; аптечка",			/obj/item/weapon/storage/fancy/army_medkit,				3500,	ROOKIE),
		new /datum/data/stalker_equipment("Scientific medkit",			"Научна&#x44F; аптечка",			/obj/item/weapon/storage/fancy/scientific_medkit,		5000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Bandage",					"Бинт",								/obj/item/stack/medical/bintik,											750,	ROOKIE),
		new /datum/data/stalker_equipment("Azure",					"Зелёнка",				/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/zelionka,		3500,	ROOKIE),
		new /datum/data/stalker_equipment("IFAK",			"ИФАК",			/obj/item/weapon/storage/box/metro/ifak,		2000,	ROOKIE),
		new /datum/data/stalker_equipment("Car medical kit",						"Автомобильна&#x44F; аптечка",							/obj/item/stack/medical/carkit,			1800,	ROOKIE),
		new /datum/data/stalker_equipment("Professional first aid kit",			"Профессиональный полевой мед-набор",			/obj/item/stack/medical/grizzly,		4000,	EXPERIENCED)
		),

	"Food" = list(
		/////////////////////////////////	Еда	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Canned stew",				"Тушенка",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,				550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",				"Шпроты",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti,		750,	ROOKIE),
		new /datum/data/stalker_equipment("Vodka \"Kazaki\"",			"Водка \"Казаки\"",			/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki,			1500,	ROOKIE),
		new /datum/data/stalker_equipment("Energy drink \"NonStop\"",	"Энергетик \"NonStop\"",	/obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic,			500,	ROOKIE),
		new /datum/data/stalker_equipment("Condensed milk",				"Сгущёнка",					/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/sguha,			600,	ROOKIE),
		new /datum/data/stalker_equipment("Salami",						"Колбаса",					/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,				500,	ROOKIE),
		new /datum/data/stalker_equipment("Bread",						"Батон",					/obj/item/weapon/reagent_containers/food/snacks/stalker/baton,					400,	ROOKIE)
		),

	"Bacpacks" = list(
		new /datum/data/stalker_equipment("Cheap satchel",					"Дешева&#x44F; сумка",		/obj/item/weapon/storage/backpack/satchel/stalker/civilian,					2500,	ROOKIE),
		new /datum/data/stalker_equipment("Cheap backpack",					"Дешевый рюкзак",			/obj/item/weapon/storage/backpack/stalker/civilian,							2500,	ROOKIE),
		new /datum/data/stalker_equipment("Tourist backpack",				"Рюкзак туриста",			/obj/item/weapon/storage/backpack/stalker/tourist,							6000,	ROOKIE),
		new /datum/data/stalker_equipment("Professional backpack",			"Рюкзак профессионала",		/obj/item/weapon/storage/backpack/stalker/professional,						11000,	ROOKIE)
		),

	"Misc" = list(
		/////////////////////////////////	Другое	/////////////////////////////////////////////
		new /datum/data/stalker_equipment/stalker_pda("PDA",					"КПК",													/obj/item/device/stalker_pda,								4000,	ROOKIE),
		new /datum/data/stalker_equipment("Radio",								"Раци&#x44F;",											/obj/item/device/radio,										7000,	ROOKIE),
		new /datum/data/stalker_equipment("Repair-kit for suits and helmets",	"Рем. комплект дл&#x44F; бронекостюмов и шлемов",		/obj/item/device/repair_kit/clothing,						10000,	ROOKIE),
		new /datum/data/stalker_equipment("Repair-kit for guns",				"Рем. комплект дл&#x44F; огнестрельного оружи&#x44F;",	/obj/item/device/repair_kit/gun,							4000,	ROOKIE),
		new /datum/data/stalker_equipment("Guitar",								"Гитара",												/obj/item/device/instrument/guitar,							3000,	ROOKIE),
		new /datum/data/stalker_equipment("Geiger counter",						"Дозиметр",												/obj/item/device/geiger_counter,							3000,	ROOKIE),
		new /datum/data/stalker_equipment("Flashlight",							"Фонарик",												/obj/item/device/flashlight/seclite,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Matches",							"Спички",												/obj/item/weapon/storage/box/matches,						1000,	ROOKIE),
		new /datum/data/stalker_equipment("Simple lighter",						"Пластикова&#x44F; зажигалка",							/obj/item/weapon/lighter/greyscale,							3000,	ROOKIE),
		new /datum/data/stalker_equipment("Zippo lighter",						"Зажигалка \"Зиппо\"",									/obj/item/weapon/lighter,									5000,	ROOKIE),
		new /datum/data/stalker_equipment("Cigarettes \"Maxim\"",				"Сигареты \"Maxim\"",									/obj/item/weapon/storage/fancy/cigarettes/cigpack/maxim,	2500,	ROOKIE),
		new /datum/data/stalker_equipment("Cigars",								"Сигары",												/obj/item/weapon/storage/fancy/cigarettes/cigars,			10000,	ROOKIE),
		new /datum/data/stalker_equipment("Violin",								"Скрипка",												/obj/item/device/instrument/violin,							10000,	ROOKIE, sale_price = 1250),
		),

	"Clothing" = list(
		new /datum/data/stalker_equipment("Farm suit",								"Одежда фермера",										/obj/item/clothing/under/metro/civilian_fatigues,						500,	ROOKIE),
		new /datum/data/stalker_equipment("Adventurer clothing",							"Костюм приключенца",								/obj/item/clothing/under/metro/civilian_fatigues2,					500,	ROOKIE),
		new /datum/data/stalker_equipment("Civilian suit",							"Обычный гражданский костюм",										/obj/item/clothing/under/metro/civilian_fatigues3,					500,	ROOKIE),
		new /datum/data/stalker_equipment("SU uniform",							"Исследовательский костюм",									/obj/item/clothing/under/metro/civilian_fatigues4,			500,	ROOKIE),
		new /datum/data/stalker_equipment("Worn out army boots",				"Поношенные берцы",										/obj/item/clothing/shoes/jackboots/warm,					800,	ROOKIE),
		new /datum/data/stalker_equipment("Green shirt",								"Клетчата&#x44F; рубаха",										/obj/item/clothing/under/metro/civilian_fatigues5,						500,	ROOKIE),
		new /datum/data/stalker_equipment("White shirt",								"Бела&#x44F; рубаха",										/obj/item/clothing/under/metro/civilian_fatigues6,						500,	ROOKIE),
		new /datum/data/stalker_equipment("Fingerless gloves",					"Перчатки без пальцев",									/obj/item/clothing/gloves/fingerless,						600,	ROOKIE),
		new /datum/data/stalker_equipment("Balaclava",							"Балаклава",											/obj/item/clothing/mask/balaclava,							700,	ROOKIE)
		),

	"Attachments" = list(
		/////////////////////////////////	Аттачменты	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Universl suppressor",	"Универсальный глушитель",					/obj/item/weapon/attachment/suppressor,				2000,	ROOKIE),
		new /datum/data/stalker_equipment("PSU-1",					"ПСУ-1",									/obj/item/weapon/attachment/scope/PS/U1,			6000,	EXPERIENCED),
		new /datum/data/stalker_equipment("PSO-1",					"ПСО-1",									/obj/item/weapon/attachment/scope/PS/O1,			10000,	EXPERIENCED),
		new /datum/data/stalker_equipment("Riflescope",	"Прицел дл&#x44F; винтовок",		/obj/item/weapon/attachment/scope/rifle,			8000,	ROOKIE)
		///////////////////////////////////////////////////////////////////////////////////////////
		),

	"Unbuyable" = list(
		new /datum/data/stalker_equipment("Canned soup",					"Консервированный Суп",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/soup,				900,	ROOKIE),
		new /datum/data/stalker_equipment("Canиed beans",					"Консервированные Бобы",		/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/bobi,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Canned stew",					"Тушенка",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/govyadina2,		900,	ROOKIE),
		new /datum/data/stalker_equipment("Canned fish",					"Консервированна&#x44F; рыба",	/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/fish,				750,	ROOKIE),
		new /datum/data/stalker_equipment("Cream cheese",					"Плавленый сыр",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/sirok,		400,	ROOKIE),
		new /datum/data/stalker_equipment("Chocolate bar",					"Плитка шоколада",				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/snack/chocolate,	600,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"Галеты",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		new /datum/data/stalker_equipment("Cerreal",						"Каша",							/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/kasha,				550,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"Тушенка",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva1,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat",					"Тушенка",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva2,		700,	ROOKIE),
		new /datum/data/stalker_equipment("Canned meat with vegetables",	"Тушенка с овощами",			/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/MREkonserva3,		850,	ROOKIE),
		new /datum/data/stalker_equipment("Biscuits",						"Галеты",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/galets,			400,	ROOKIE),
		new /datum/data/stalker_equipment("Condensed milk",						"Сгущёнка",						/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/sguha,			600,	ROOKIE),
		/////////////////////////////////	Лут с мутантов	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Песий хвост",					"Песий хвост",			/obj/item/weapon/stalker/loot/dog_tail,			2500,		ROOKIE, sale_price = 1250),
		new /datum/data/stalker_equipment("Глаз упыря",					"Плотий глаз",			/obj/item/weapon/stalker/loot/flesh_eye,		1800,		ROOKIE, sale_price = 900),
		new /datum/data/stalker_equipment("Кабаний ног",					"Кабаний ног",			/obj/item/weapon/stalker/loot/boar_leg,			6000,		ROOKIE, sale_price = 3000),
		new /datum/data/stalker_equipment("Cноркий рук",					"Снорукий рук",			/obj/item/weapon/stalker/loot/snork_leg,		7000,		ROOKIE, sale_price = 3500),
		new /datum/data/stalker_equipment("Кровососий щупалец",				"Кровососий щупалец",	/obj/item/weapon/stalker/loot/bloodsucker,		16000,		ROOKIE, sale_price = 8000),
		new /datum/data/stalker_equipment("Паучий хвост",				"Псевдопесий хвост",	/obj/item/weapon/stalker/loot/pseudo_tail,		8000,		ROOKIE, sale_price = 4000),
		new /datum/data/stalker_equipment("Контроллерий мозг",				"Контроллерий мозг",	/obj/item/weapon/stalker/loot/controller_brain,	40000,		ROOKIE, sale_price = 20000),
		/////////////////////////////////	Находки	///////////////////////////////////////////
		new /datum/data/stalker_equipment("Наручные часы",				"Наручные часы",							/obj/item/weapon/metro/loot/saleble/wristwatch,					500,	ROOKIE,	sale_price = 500),
		new /datum/data/stalker_equipment("Плюшевый медведь",	"Плюшевый медведь",					/obj/item/weapon/metro/loot/saleble/medved,				400,	ROOKIE,	sale_price = 400),
		new /datum/data/stalker_equipment("Проигрыватель",		"Проигрыватель",					/obj/item/weapon/metro/loot/saleble/vinilplayer,				15000,	EXPERIENCED,	sale_price = 15000),
		new /datum/data/stalker_equipment("Винилова&#x44F; пластинка",				"Винилова&#x44F; пластинка",								/obj/item/weapon/metro/loot/saleble/plastine,						8000,	ROOKIE,	sale_price = 8000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Старое радио",			"Старое радио",							/obj/item/weapon/metro/loot/saleble/radio,					8000,	ROOKIE,	sale_price = 8000),
		new /datum/data/stalker_equipment("Бумбокс",		"Бумбокс",						/obj/item/weapon/metro/loot/saleble/boombox,				6000,	ROOKIE,	sale_price = 6000),
		new /datum/data/stalker_equipment("Запчасти",			"Запчасти",							/obj/item/weapon/metro/loot/saleble/parts,				4000,	ROOKIE,	sale_price = 4000),
		new /datum/data/stalker_equipment("Запчасти",			"Запчасти",						/obj/item/weapon/metro/loot/saleble/parts2,					4000,	ROOKIE,	sale_price = 4000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Запчасти",		"Запчасти",						/obj/item/weapon/metro/loot/saleble/parts3,					4000,	ROOKIE,	sale_price = 4000),
		new /datum/data/stalker_equipment("Плазма",		"Плазма",						/obj/item/weapon/metro/loot/saleble/plasma,					6000,	ROOKIE,	sale_price = 6000),
		new /datum/data/stalker_equipment("Карта",			"Карта",							/obj/item/weapon/metro/loot/saleble/map,					25000,	EXPERIENCED,	sale_price = 25000),
		new /datum/data/stalker_equipment("Продвинута&#x44F; карта",		"Продвинута&#x44F; карта",						/obj/item/weapon/metro/loot/saleble/map2,				40000,	VETERAN,	sale_price = 40000),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Секретные документы",	"Секретные документы",				/obj/item/weapon/metro/loot/saleble/metro_2_code,				60000,	VETERAN,	sale_price = 60000),
		/////////////////////////////////	Мусор	//////////////////////////////////////////////
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva,							400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/MREkonserva1,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/MREkonserva2,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/MREkonserva3,				200,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/bobi,						400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/fish,						500,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/govyadina,					400,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/shproti,					600,	ROOKIE),
		new /datum/data/stalker_equipment("Konserva",			"Консерва",							/obj/item/trash/konserva/soup,						500,	ROOKIE),
		///////////////////////////////////////////////////////////////////////////////////////////
		new /datum/data/stalker_equipment("Metall",				"Металлолом",							/obj/item/weapon/metro/loot/craft/metall,						50,		ROOKIE,	sale_price = 50),
		new /datum/data/stalker_equipment("Powder",				"Порох",							/obj/item/weapon/metro/loot/craft/powder,						100,	ROOKIE,	sale_price = 100),
		new /datum/data/stalker_equipment("Alcohol",				"Спирт",							/obj/item/weapon/metro/loot/craft/spirt,						200,	ROOKIE,	sale_price = 200),
		new /datum/data/stalker_equipment("Cloth",			"Ткань",							/obj/item/weapon/metro/loot/craft/tryapka,					50,	ROOKIE,	sale_price = 50)
		)
	)

/obj/machinery/stalker
	icon = 'icons/stalker/decor.dmi'

/obj/machinery/stalker/sidormat
	name = "SYCHEMAT"
	desc = "An equipment vendor for beginning stalkers."
	icon_state = "radio"
	density = 1
	anchored = 1
	var/itemloc = null
	var/itemloc2 = null
	var/balance = 0
	var/rating = 0
	var/switches = BUY_STUFF
	var/real_assorment = list()
	var/list/special_factions = list("Loners", "Bandits")
	var/path_ending = null
	//Faction Locker
	var/obj/item/device/assembly/control/door_device = null

/datum/data/stalker_equipment
	//var/name = "generic"
	var/name_ru = "generic"
	var/equipment_path = null
	var/cost = 0
	var/rating = 0
	var/faction = "Everyone"
	var/sale_price = 0
	var/assortment_level = 0

/datum/data/stalker_equipment/New(name, name_ru, path, cost, rating, faction = "Everyone", sale_price = 0, assortment_level = 0)
	src.name = name
	src.name_ru = name_ru
	src.equipment_path = path
	src.cost = cost
	src.rating = rating
	src.faction = faction
	if(sale_price)
		src.sale_price = sale_price
	else
		src.sale_price = cost/2
	src.assortment_level = assortment_level
	switch(cost)
		if(0 to TRASH_TIER_COST)
			trash_tier_sidormatitems += src

		if(0 to LOW_TIER_COST)
			low_tier_sidormatitems += src

		if(0 to MEDIUM_TIER_COST)
			medium_tier_sidormatitems += src

		if(LOW_TIER_COST to HIGH_TIER_COST)
			high_tier_sidormatitems += src
	real_sidormat_items += src

/datum/data/stalker_equipment/proc/GetCost()
	return src.sale_price

/datum/data/stalker_equipment/stalker_pda/GetCost(var/obj/item/device/stalker_pda/KPK)
	var/cost_ = src.sale_price
	if(KPK.owner && (KPK.owner.stat == DEAD))
		var/rank_ = Clamp(KPK.profile.fields["rating"], ROOKIE, ZONE_LEGEND)
		cost_ += GetCostBasedOnReputation(KPK.profile.fields["reputation"])
		cost_ += rank_*2
	return cost_

/proc/GetCostBasedOnReputation(var/rep_)
	switch(rep_)
		if(AMAZING to INFINITY)
			return ((NEUTRAL - rep_) * 20)
		if(VERYGOOD to AMAZING)
			return ((NEUTRAL - rep_) * 10)
		if(GOOD to VERYGOOD)
			return ((NEUTRAL - rep_) * 5)
		if(BAD to GOOD)
			return 0
		if(VERYBAD to BAD)
			return ((NEUTRAL - rep_) * 5)
		if(DISGUSTING to VERYBAD)
			return ((NEUTRAL - rep_) * 10)
		if(-INFINITY to DISGUSTING)
			return ((NEUTRAL - rep_) * 20)

/obj/machinery/stalker/sidormat/New()
	itemloc = locate(x - 1, y, z)
	itemloc2 = locate(x + 1, y, z)

	sleep(10)

	if(path_ending && !door_device)
		door_device = new /obj/item/device/assembly/control(src)
		door_device.id = path_ending

/obj/machinery/stalker/sidormat/attack_hand(mob/user)
	balance = 0
	if(..())
		return

	if(!ishuman(user))
		say("You are not a human.")
		return

	var/mob/living/carbon/human/H = user

	interact(H)


/obj/machinery/stalker/sidormat/interact(mob/living/carbon/human/H)

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		return

	//find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id
	var/datum/data/record/sk = KPK.profile

	if(!sk || !KPK.owner)
		say("Activate your KPK profile.")
		return

	if(KPK.owner != H)
		say("No access.")
		return

	H.set_machine(src)
	balance = sk.fields["money"]
	rating = sk.fields["rating"]

	var/dat
	if(H.client.prefs.chat_toggles & CHAT_LANGUAGE)

	///////////////////////////////////////////////////////////АНГЛИЙСКИЙ СИДОРОМАТ///////////////////////////////////////////////////////////////////////

		dat +="<div class='statusDisplay'>"
		dat += "Balance: [num2text(balance, 8)] RU<br>"
		dat += "<br><br>INSTRUCTION: Put habar for sale on the <b>left</b> table.<br>" // Забирать деньги и купленные вещи - на <b>правом</b>.
		if(switches & BUY_STUFF)
			dat +="<A href='?src=\ref[src];choice=take'><b>Sell habar</b></A><br>"
		if(door_device && sk.fields["degree"])
			dat +="<A href='?src=\ref[src];basement_toggle=1'><b>Toggle basement door</b></A><br>"
		dat += "</div>"
		dat += "<div class='lenta_scroll'>"
		dat += "<BR><table border='0' width='400'>" //<b>Item list:</b>
		for(var/L in global_sidormat_list)
			if(L == "Unbuyable" && !(switches & SELL_UNBUYABLE))
				continue
			dat += "<tr><td><center><big><b>[L]</b></big></center></td><td></td><td></td></tr>"
			for(var/datum/data/stalker_equipment/prize in global_sidormat_list[L])
				if((sk.fields["faction_s"] == prize.faction && ((sk.fields["faction_s"] in special_factions) || (switches & SHOW_FACTION_EQUIPMENT))) || prize.faction == "Everyone")
					//if(rating >= prize.rating)
					if(get_assortment_level(H) >= prize.assortment_level)
						dat += "<tr><td>[prize.name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Buy</A></td></tr>"

		dat += "</table>"
		dat += "</div>"

	else

		///////////////////////////////////////////////////////////РУССКИЙ СИДОРОМАТ///////////////////////////////////////////////////////////////////////

		dat +="<div class='statusDisplay'>"
		dat += "На счету: [num2text(balance, 8)] RU<br>"
		dat += "<br><br>ИНСТРУКЦИЯ: Хабар складывать - на <b>левом</b> столе.<br>" //Забирать деньги и купленные вещи - на <b>правом</b>.
		if(switches & BUY_STUFF)
			dat +="<A href='?src=\ref[src];choice=take'><b>Сбыть хабар</b></A><br>"
		if(door_device && sk.fields["degree"])
			dat +="<A href='?src=\ref[src];basement_toggle=1'><b>Открыть/Закрыть хранилище</b></A><br>"
		dat += "</div>"
		dat += "<div class='lenta_scroll'>"
		dat += "<BR><table border='0' width='400'>" //<b>Список предметов:</b>
		for(var/L in global_sidormat_list)
			if(L == "Unbuyable" && !(switches & SELL_UNBUYABLE))
				continue
			dat += "<tr><td><center><b>[L]</b></center></td><td></td><td></td></tr>"
			for(var/datum/data/stalker_equipment/prize in global_sidormat_list[L])
				if((sk.fields["faction_s"] == prize.faction && ((sk.fields["faction_s"] in special_factions) || (switches & SHOW_FACTION_EQUIPMENT))) || prize.faction == "Everyone")
					//if(rating >= prize.rating)
					if(get_assortment_level(H) >= prize.assortment_level)
						dat += "<tr><td>[prize.name_ru]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];purchase=\ref[prize]'>Купить</A></td></tr>"
		dat += "</table>"
		dat += "</div>"

	var/datum/browser/popup = new(H, "miningvendor", "SIDORMAT 3000", 450, 700)
	popup.set_content(dat)
	popup.open()
	return

/proc/get_assortment_level(var/mob/living/carbon/human/owner)
	var/datum/data/record/sk = find_record("sid", owner.sid, data_core.stalkers)
	var/assortment_level = 0


	for(var/obj/machinery/stalker/sidorpoint/cp in cps)
		if(cp.controlled_by == sk.fields["faction_s"] && cp.control_percent == 100)
			assortment_level++

	return assortment_level

/obj/machinery/stalker/sidormat/Topic(href, href_list)
	if(..())
		return

	var/mob/living/carbon/human/H = usr

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		updateUsrDialog()
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id


	if(!sk)
		say("Activate your KPK profile.")
		updateUsrDialog()
		return

	if(!KPK.owner || (KPK.owner != H))
		say("No access.")
		updateUsrDialog()
		return

	if(href_list["choice"])
		if(href_list["choice"] == "take")
			SellItems()

	if(href_list["purchase"])
		var/datum/data/stalker_equipment/prize = locate(href_list["purchase"])

		if (!prize)
			updateUsrDialog()
			return

		if(prize.cost > sk.fields["money"])
			say("You don't have enough money to buy [prize.name].")
			updateUsrDialog()
			return

		sk.fields["money"] -= prize.cost
		balance = sk.fields["money"]
		//PoolOrNew(prize.equipment_path, itemloc2)
		new prize.equipment_path(itemloc2)

	if(href_list["basement_toggle"])
		door_device.pulsed()

	//updateUsrDialog()
	return


/obj/machinery/stalker/sidormat/proc/SellItems()
	var/mob/living/carbon/human/H = usr
	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		say("Put on your KPK.")
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	var/obj/item/device/stalker_pda/KPK = H.wear_id

	if(!sk)
		say("Activate your profile in KPK.")
		return

	if(KPK.sid != H.sid)
		say("No access.")
		return

	var/list/atom/movable/ontable = GetItemsOnTable()
	var/total_cost = GetOnTableCost(ontable)

	if(total_cost < 100)
		say("Habar was not sold.")

	for(var/atom/movable/I in ontable)
		if(I.loc != itemloc)
			continue

		sk.fields["money"] += GetCost(I)
		balance = sk.fields["money"]

		say("[I] was sold for [GetCost(I)].")

		PlaceInPool(I)
		CHECK_TICK

	if(total_cost)
		say("<b>Habar was successfully sold for [total_cost].</b>")

	updateUsrDialog()
	return

/obj/machinery/stalker/sidormat/proc/GetItemsOnTable()
	var/list/ontable = list()
	for(var/atom/movable/AM in itemloc)
		if(GetCost(AM) <= 0)
			continue

		if(istype(AM, /obj/item/clothing))
			var/obj/item/clothing/C = AM
			if((C.durability / initial(C.durability)) * 100 < 80)
				say("[AM] is too broken for sale.")
				continue

		if(istype(AM, /obj/item/weapon/storage/backpack) && AM.contents.len)
			say("Empty [AM] before selling.")
			continue

		if(istype(AM, /obj/item/ammo_box))
			var/obj/item/ammo_box/AB = AM
			if(AB.stored_ammo.len < AB.max_ammo)
				say("Fill [AB] before selling.")
				continue

		//if(istype(AM, /obj/item/weapon/reagent_containers))
		//	say("[AM] can't be sold!")
		//	continue

		ontable += AM

	return ontable

/obj/machinery/stalker/sidormat/proc/GetOnTableCost(var/list/ontable)
	//var/list/ontable = GetItemsOnTable()
	var/total_cost = 0

	for(var/atom/movable/item_on_table in ontable)
		var/cost = GetCost(item_on_table)
		if(cost)
			total_cost += cost
	return total_cost

/obj/machinery/stalker/sidormat/proc/GetCost(var/obj/item/I)
	for(var/datum/data/stalker_equipment/se in real_sidormat_items)
		if(I.type == se.equipment_path)
			return se.GetCost(I)
	return 0

/obj/machinery/stalker/sidormat/ex_act(severity, target)
	return