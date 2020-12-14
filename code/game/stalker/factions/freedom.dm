/datum/job/su
	title = "Scientists Union"
	faction_s = "Scientists Union"
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "Major"
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	limit_per_player = 4
	outfit = /datum/outfit/job/assistant// /datum/outfit/job/freedom

/datum/outfit/job/su
	name = "Scientists Union"
	faction_s = "SU"

/datum/outfit/job/su/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/metro/saiga12
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list()
	r_pocket = /obj/item/weapon/stalker/bolts
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/su  // For select_equipment
	name = "SU Soldier"
	head = null
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/metro/saiga12
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b55645 = 1,
							/obj/item/ammo_box/magazine/stalker/m556x45 = 2,)
	faction_s = "Scientists Union"

/datum/outfit/su/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/job/su_lieutenant
	title = "SU Lieutenant"
	faction_s = "Scientists Union"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = -1
	supervisors = "Major"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 2
	outfit = /datum/outfit/job/su_lieutenant
	real_rank = "Lieutenant"

/datum/outfit/job/su_lieutenant
	name = "SU Lieutenant"
	faction_s = "Scientists Union"

/datum/outfit/job/su_lieutenant/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/metro/bastard
	backpack_contents = list(/obj/item/ammo_box/stalker/b9x19 = 1,
							/obj/item/device/flashlight/seclite = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)