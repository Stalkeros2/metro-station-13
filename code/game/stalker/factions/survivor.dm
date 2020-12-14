/*
Assistant
*/
/datum/job/assistant
	title = "Civilian"
	faction_s = "Civilian"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/assistant

/datum/job/umbrellasoldier
	title = "ERT Operative"
	faction_s = "Civilian"
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	supervisors = ""
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/umbrellasoldier

/datum/job/surv
	title = "Survivor"
	faction_s = "Civilian"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = ""
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/surv

/datum/job/oldstalker
	title = "Stalker"
	faction_s = "Civilian"
	faction = "Station"
	total_positions = 8
	spawn_positions = 8
	supervisors = ""
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/oldstalker

/*/datum/job/assistant/get_access()
	if((config.jobs_have_maint_access & ASSISTANTS_HAVE_MAINT_ACCESS) || !config.jobs_have_minimal_access) //Config has assistant maint access set
		. = ..()
		. |= list(access_maint_tunnels)
	else
		return ..()*/

/datum/job/assistant/config_check()
	if(config && !(config.assistant_cap == 0))
		total_positions = config.assistant_cap
		spawn_positions = config.assistant_cap
		return 1
	return 0


/datum/outfit/job/assistant
	name = "Civilian"
	faction_s = "Civilian"

/datum/outfit/job/assistant/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/metro/civilian_fatigues,/obj/item/clothing/under/metro/civilian_fatigues2,/obj/item/clothing/under/metro/civilian_fatigues3,/obj/item/clothing/under/metro/civilian_fatigues4,/obj/item/clothing/under/metro/civilian_fatigues5,/obj/item/clothing/under/metro/civilian_fatigues6)
	suit = pick(/obj/item/clothing/suit/metro/puffer,/obj/item/clothing/suit/metro/armvestlight,/obj/item/clothing/suit/metro/banditduster,/obj/item/clothing/suit/metro/labcoat)
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list()
	r_pocket =pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/gauze/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/stalker  // For select_equipment
	name = "Civilian"
	uniform = /obj/item/clothing/under/metro/civilian_fatigues
	suit = /obj/item/clothing/suit/metro/banditduster
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/weapon/storage/box/matches = 1)
	back = /obj/item/weapon/storage/backpack/stalker/civilian
	r_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa
	faction_s = "Loners"

/datum/outfit/job/oldstalker
	name = "Stalker"

/datum/outfit/job/oldstalker/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/metro/civilian_fatigues,/obj/item/clothing/under/metro/civilian_fatigues2,/obj/item/clothing/under/metro/civilian_fatigues3,/obj/item/clothing/under/metro/civilian_fatigues4)
	suit = /obj/item/clothing/suit/metro/armvestlight
	ears = null
	id = /obj/item/weapon/card/id/metro/stalker
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b12x70 = 3, /obj/item/weapon/reagent_containers/pill/stalker/injector/etg_c = 1, /obj/item/device/flashlight/seclite = 1, /obj/item/device/stalker_pda = 1)
	suit_store = /obj/item/weapon/gun/projectile/shotgun/automatic/combat
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	r_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva

/datum/outfit/stalkervolk  // For select_equipment
	name = "Stalker"
	uniform = /obj/item/clothing/under/metro/civilian_fatigues
	suit = /obj/item/clothing/suit/metro/armvestlight
	ears = null
	id = /obj/item/weapon/card/id/metro/stalker
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b12x70 = 3, /obj/item/weapon/reagent_containers/pill/stalker/injector/etg_c = 1, /obj/item/device/flashlight/seclite = 1, /obj/item/device/stalker_pda = 1)
	suit_store = /obj/item/weapon/gun/projectile/shotgun/automatic/combat
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	r_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva
	faction_s = "Civilian"

/datum/outfit/job/umbrellasoldier
	name = "ERT Operative"
	faction_s = "Civilian"

/datum/outfit/job/umbrellasoldier/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/metro/civilian_fatigues4
	suit = null
	ears = null
	id = /obj/item/device/stalker_pda
	belt = null
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	back = null

/datum/outfit/job/surv
	name = "Survivor"
	faction_s = "Civilian"

/datum/outfit/job/surv/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/metro/civilian_fatigues6
	suit = pick(/obj/item/clothing/suit/metro/armveststandart,/obj/item/clothing/suit/metro/labcoat)
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/storage/belt/metro/pouch/upgraded
	mask = /obj/item/clothing/mask/gas/metro
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	suit_store =pick(/obj/item/weapon/gun/projectile/revolver/metro/revolver, /obj/item/weapon/gun/projectile/automatic/pistol/cora, /obj/item/weapon/gun/projectile/revolver/metro/ashot)
	back = /obj/item/weapon/storage/backpack/satchel/stalker/civilian
	backpack_contents = list(/obj/item/weapon/storage/fancy/army_medkit = 1, /obj/item/weapon/storage/box/metro/pistol_44_mag = 2, /obj/item/stack/medical/bintik = 1, /obj/item/device/flashlight/seclite = 1)
	r_pocket =pick(/obj/item/ammo_box/stalker/b12x70,/obj/item/weapon/reagent_containers/pill/stalker/morphine_plus,/obj/item/weapon/reagent_containers/pill/stalker/injector/sj6,/obj/item/weapon/storage/box/metro/rifle_545x39_small,/obj/item/weapon/storage/box/MRE)
