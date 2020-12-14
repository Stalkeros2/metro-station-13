/*
Assistant
*/
/datum/job/trc
	title = "TRC soldier"
	faction_s = "The Radom Coalition"
	faction = "Station"
	total_positions = 10
	spawn_positions = 10
	supervisors = "Major"
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/trc// /datum/outfit/job/duty

/datum/outfit/job/trc
	name = "TRC soldier"
	faction_s = "The Radom Coalition"

/datum/outfit/job/trc/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/metro/rsa_uniform
	suit = /obj/item/clothing/suit/metro/armveststandart
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/weapon/card/id/metro/trc
	suit_store = /obj/item/weapon/gun/projectile/automatic/ak74/makeshift
	shoes = /obj/item/clothing/shoes/jackboots/warm
	head = /obj/item/clothing/head/soft/black
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/makeshift = 1,
							/obj/item/device/flashlight/seclite = 1,
							/obj/item/device/stalker_pda = 1,
							/obj/item/device/radio = 1)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/trc  // For select_equipment
	name = "TRC Soldier"

	head = /obj/item/clothing/head/soft/black
	suit = /obj/item/clothing/suit/metro/armveststandart
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/weapon/card/id/metro/trc
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/ak74/makeshift
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/makeshift = 2,
							/obj/item/device/stalker_pda = 1,
							/obj/item/device/radio = 1)
	faction_s = "The Radom Coalition"

/datum/outfit/trc/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/metro/rsa_uniform
	suit = /obj/item/clothing/suit/metro/armveststandart
	//back2 = /obj/item/weapon/gun/projectile/automatic/aksu74
	ears = null
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/job/barman2
	title = "Barman2"
	faction_s = "Loners"
	locked = 1
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/barman2
	//faction_s = "Одиночки"

/datum/outfit/job/barman2
	name = "Barman"
	faction_s = "Traders"

/datum/outfit/job/barman2/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/jacket/sidor
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/cora
	id = /obj/item/device/stalker_pda
	shoes = /obj/item/clothing/shoes/sneakers/black
	back = null

/datum/job/trc_lieutenant
	title = "TRC Lieutenant"
	faction_s = "The Radom Coalition"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = 2
	supervisors = "Major"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 0
	outfit = /datum/outfit/job/trc_lieutenant
	real_rank = "Lieutenant"

/datum/outfit/job/trc_lieutenant
	name = "TRC Lieutenant"
	faction_s = "The Radom Coalition"

/datum/outfit/job/trc_lieutenant/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/metro/steel
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	uniform = /obj/item/clothing/under/metro/rsa_uniform
	suit = 	suit = /obj/item/clothing/suit/metro/armveststandart
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/weapon/card/id/metro/trc
	suit_store = /obj/item/weapon/gun/projectile/shotgun/automatic/combat
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1,
							 /obj/item/device/stalker_pda = 1,
							 /obj/item/device/radio = 1,
							 /obj/item/weapon/card/id/metro/trc_key = 2)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)