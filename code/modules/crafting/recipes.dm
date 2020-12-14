
/datum/table_recipe
	var/name = "" //in-game display name
	var/reqs[] = list() //type paths of items consumed associated with how many are needed
	var/result //type path of item resulting from this craft
	var/tools[] = list() //type paths of items needed but not consumed
	var/time = 30 //time in deciseconds
	var/parts[] = list() //type paths of items that will be placed in the result
	var/chem_catalysts[] = list() //like tools but for reagents
	var/category = CAT_NONE //where it shows up in the crafting UI

/datum/table_recipe/bint
	name = "Guaze"
	result = /obj/item/stack/medical/bintik
	reqs = list(/obj/item/weapon/metro/loot/craft/spirt = 1,
	/obj/item/weapon/metro/loot/craft/tryapka = 1)
	time = 25
	category = CAT_MEDICAL

/datum/table_recipe/metro/pammo
	name = "15x pistol ammo"
	result = /obj/item/ammo_box/stalker/bmag44
	reqs = list(/obj/item/weapon/metro/loot/craft/metall = 1,
	/obj/item/weapon/metro/loot/craft/powder = 1)
	time = 50
	category = CAT_AMMO

/datum/table_recipe/metro/sammo
	name = "8x shotgun ammo"
	result = /obj/item/ammo_box/stalker/b12x70
	reqs = list(/obj/item/weapon/metro/loot/craft/metall = 1,
	/obj/item/weapon/metro/loot/craft/powder = 2)
	time = 50
	category = CAT_AMMO

/datum/table_recipe/metro/rammo
	name = "9x rifle ammo"
	result = /obj/item/ammo_box/stalker/b545
	reqs = list(/obj/item/weapon/metro/loot/craft/metall = 2,
	/obj/item/weapon/metro/loot/craft/powder = 2)
	time = 50
	category = CAT_AMMO

/datum/table_recipe/metro/flare
	name = "Flare"
	result = /obj/item/device/flashlight/flare
	reqs = list(/obj/item/weapon/metro/loot/craft/metall = 1,
	/obj/item/weapon/metro/loot/craft/powder = 3)
	time = 30
	category = CAT_MISC

/datum/table_recipe/metro/ashotdouble
	name = "Ashot double-barrel modification"
	reqs = list(/obj/item/weapon/metro/loot/craft/barrel = 2,
	/obj/item/weapon/metro/loot/craft/metall = 1,
	/obj/item/device/repair_kit/gun = 1)
	result = /obj/item/weapon/gun/projectile/revolver/metro/ashotdouble
	time = 90
	category = CAT_WEAPON

/datum/table_recipe/metro/barrel
	name = "Barrel"
	result = /obj/item/weapon/metro/loot/craft/barrel
	reqs = list(/obj/item/weapon/metro/loot/craft/metall = 3)
	time = 30
	category = CAT_MISC