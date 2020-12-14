/*
Assistant
*/
/datum/job/bandit
	title = "Bandit"
	faction_s = "Bandits"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 10
	spawn_positions = 10
	supervisors = "Pahan"
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	limit_per_player = 0
	outfit = /datum/outfit/job/bandit

/datum/job/bandit_pahan
	title = "Bandit Pahan"
	faction_s = "Bandits"
	faction = "Station"
	total_positions = 1
	locked = 1
	spawn_positions = 1
	supervisors = ""
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access(
	whitelist_only = 1
	outfit = /datum/outfit/job/bandit_pahan
	real_rank = "Lieutenant"

/datum/job/bandit_barman
	title = "Bandit Barman"
	faction_s = "Bandits"
	faction = "Station"
	total_positions = 1
	locked = 1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()
	whitelist_only = 1
	limit_per_player = 0
	outfit = /datum/outfit/job/bandit_barman

/datum/outfit/job/bandit
	name = "Bandit"
	faction_s = "Bandits"

/datum/outfit/job/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/metro/bandits_uniform
	suit = /obj/item/clothing/suit/metro/armvestlight
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	head = /obj/item/clothing/head/metro/steel
	mask = /obj/item/clothing/mask/balaclava
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1,
							/obj/item/weapon/storage/box/matches = 1,
							/obj/item/device/radio = 1)
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/cora
	l_pocket = /obj/item/weapon/stalker/bolts

/datum/outfit/job/bandit_pahan
	name = "Bandit Pahan"
	faction_s = "Bandits"

/datum/outfit/job/bandit_pahan/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/metro/bandits_uniform
	suit = /obj/item/clothing/suit/metro/banditduster
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/gun/projectile/automatic/metro/bastard
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1,
							/obj/item/device/radio = 1,
							/obj/item/weapon/card/id/metro/bandosi_key = 2)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/cora

/datum/outfit/job/bandit_barman
	name = "Bandit Barman"
	faction_s = "Bandits"

/datum/outfit/job/bandit_barman/pre_equip(mob/living/carbon/human/H)
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/metro/banditduster
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/gun/projectile/revolver/metro/ashot
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	head = /obj/item/clothing/head/gopcap
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/ammo_box/stalker/b12x70 = 1,
						/obj/item/device/flashlight/seclite = 1,
						/obj/item/device/radio = 1)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	r_pocket = /obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki

/datum/outfit/bandit  // For select_equipment
	name = "Bandit"
	faction_s = "Bandits"

	uniform = /obj/item/clothing/under/metro/bandits_uniform
	suit = /obj/item/clothing/suit/metro/armvestlight
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	head = /obj/item/clothing/head/metro/steel
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 =  2)
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/cora

/datum/outfit/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/gauze/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
