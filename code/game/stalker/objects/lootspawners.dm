///////////////////////////////////////////////Одноразовый лутспавнер////////////////////////////////////////////////////////////////////////////////
/obj/effect/spawner/lootdrop/khabar_low
	name = "khabar loot spawner"
	lootdoubles = 1
	lootcount = 5

	loot = list(
				/obj/item/weapon/reagent_containers/hypospray/medipen/stalker/zelionka = 20,
				/obj/item/weapon/storage/fancy/civilian_medkit = 20,
				/obj/item/weapon/gun/projectile/automatic/metro/bastard = 1,
				/obj/item/weapon/gun/projectile/revolver/metro/douplet = 6,
				/obj/item/weapon/gun/projectile/revolver/metro/ashot = 3,
				/obj/item/ammo_box/stalker/b12x70 = 10,
				/obj/item/ammo_box/stalker/b12x70P = 10,
				/obj/item/weapon/storage/box/metro/shotgun_b12x70 = 5,
				/obj/item/weapon/storage/box/metro/shotgun_b12x70p = 5,
				/obj/item/weapon/metro/loot/saleble/map = 1,
				/obj/item/weapon/metro/loot/saleble/map2 = 1,
				/obj/item/weapon/metro/loot/saleble/plasma = 5,
				/obj/item/weapon/metro/loot/saleble/metro_2_code = 1,
				/obj/item/weapon/metro/loot/saleble/medved = 10,
				/obj/item/weapon/metro/loot/saleble/boombox = 5,
				/obj/item/weapon/metro/loot/saleble/wristwatch = 20,
				/obj/item/weapon/metro/loot/saleble/radio = 5,
				/obj/item/weapon/metro/loot/saleble/parts = 10,
				/obj/item/weapon/metro/loot/saleble/parts2 = 10,
				/obj/item/weapon/metro/loot/saleble/parts3 = 10,
				/obj/item/weapon/metro/loot/saleble/plastine = 5,
				/obj/item/weapon/metro/loot/saleble/vinilplayer = 5,
				/obj/item/weapon/metro/loot/craft/spirt = 10,
				/obj/item/weapon/metro/loot/craft/tryapka = 10,
				/obj/item/weapon/metro/loot/craft/metall = 5,
				/obj/item/weapon/metro/loot/craft/powder = 5,
				/obj/item/clothing/suit/metro/armvestmedium = 1,
				/obj/item/clothing/suit/metro/armveststandart = 1,
				/obj/item/clothing/suit/metro/banditsheavyarmor = 1,
				/obj/item/clothing/suit/metro/banditduster = 2,
				/obj/item/clothing/suit/metro/armvestlight = 2,
				/obj/item/clothing/mask/gas/metro = 4,
				/obj/nothing = 10
				)

/obj/effect/spawner/lootdrop/khabar_medium
	name = "khabar loot spawner"
	lootdoubles = 1
	lootcount = 4

	loot = list(
				/obj/structure/closet/crate/stalker/blue = 1,
				/obj/nothing = 11
				)

/obj/effect/spawner/lootdrop/khabar_high
	name = "khabar loot spawner"
	lootdoubles = 1
	lootcount = 3

	loot = list(
				/obj/structure/closet/crate/stalker/blue = 1,
				/obj/nothing = 11
				)

///////////////////////////////////////////////Лутспавнер с кулдауном и бесконечным сроком работы////////////////////////////////////////////////////

/obj/effect/spawner/lootdrop/stalker
	name = "stalker lootspawner"
	invisibility = 101
	lootcount = 2
	var/max_spawned = 3
	var/radius = 10 //Радиус разброса лута
	var/cooldown = 10000 //Кол-во минут * 1000 кд шитспавна
	var/list/spawned_loot = new()
	loot = list(/obj/item/stack/medical/gauze/bint = 75,
				/obj/item/trash/can = 25)

/obj/effect/spawner/lootdrop/stalker/weapon
	lootcount = 1
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/cora = 85,
				/obj/item/trash/can = 15)

/obj/effect/spawner/lootdrop/stalker/New()
	SpawnLoot()

/obj/effect/spawner/lootdrop/stalker/proc/SpawnLoot(enable_cooldown = 1)
	if(!loot || !loot.len)
		return

	for(var/k = 0, k < lootcount, k++)

		if(!loot.len)
			return

		var/lootspawn = pickweight(loot)

		if(!lootspawn || lootspawn == /obj/nothing)
			continue

		spawned_loot.Add(lootspawn)

		var/turf/T = get_turf(src)
		var/obj/O = new lootspawn(T)

		RandomMove(O)
	////////////////////////////////////////////
	sleep(rand(cooldown, cooldown + cooldown/2))
	////////////////////////////////////////////
	SpawnLoot()
	return

/obj/effect/spawner/lootdrop/stalker/proc/CanSpawn()
	var/count = 0

	for(var/I in spawned_loot)

		var/obj/O = I

		if(!(O.loc in range(7, src)))
			count++
		else
			spawned_loot.Remove(I)

	return Clamp(lootcount - count, 0, lootcount)


/obj/effect/spawner/lootdrop/stalker/proc/RandomMove(spawned)
	if(spawned)
		var/turf/T = get_turf(src)
		var/obj/O = spawned
		var/new_x = T.x + rand(-radius, radius)
		var/new_y = T.y + rand(-radius, radius)
		O.Move(new_x, new_y, T.z)

	return spawned

/obj/effect/spawner/lootdrop/stalker/weapon/pistols
	name = "stalker pistols"
	loot = list(/obj/item/weapon/gun/projectile/automatic/pistol/cora = 10,
				/obj/item/weapon/gun/projectile/revolver/metro/revolver = 5,
				/obj/nothing = 30)

/obj/effect/spawner/lootdrop/stalker/weapon/rifles_and_shotguns
	name = "stalker rifles_and_shotguns"
	loot = list(/obj/item/weapon/gun/projectile/revolver/metro/douplet = 25,
				/obj/item/weapon/gun/projectile/revolver/metro/ashot = 35,
				/obj/item/weapon/gun/projectile/automatic/metro/saiga12 = 20,
				/obj/item/weapon/gun/projectile/automatic/ak74 = 25,
				/obj/item/weapon/gun/projectile/automatic/aksu74 = 35,
				/obj/nothing = 50)

/obj/effect/spawner/lootdrop/stalker/weapon/smgs
	name = "stalker smgs"
	loot = list(/obj/item/weapon/gun/projectile/automatic/metro/bastard = 30,
				/obj/item/weapon/gun/projectile/automatic/aksu74 = 20,
				/obj/nothing = 60)

/obj/effect/spawner/lootdrop/stalker/medicine
	name = "stalker medicine"
	lootcount = 1
	loot = list(/obj/item/weapon/storage/fancy/civilian_medkit = 30,
				/obj/item/weapon/storage/fancy/army_medkit = 15,
				/obj/item/weapon/storage/fancy/scientific_medkit = 5,
				/obj/item/weapon/reagent_containers/pill/stalker/injector/sj1 = 40,
				/obj/item/weapon/reagent_containers/pill/stalker/injector/etg_c = 20,
				/obj/item/weapon/reagent_containers/pill/stalker/injector/sj6 = 10,
				/obj/item/stack/medical/carkit = 30,
				/obj/item/stack/medical/grizzly = 5,
				/obj/item/weapon/metro/loot/craft/spirt = 15,
				/obj/item/weapon/metro/loot/craft/tryapka = 15,
				/obj/nothing = 60)

/obj/effect/spawner/lootdrop/stalker/food
	name = "stalker food"
	lootcount = 1
	loot = list(/obj/item/weapon/reagent_containers/food/snacks/stalker/baton = 50,
				/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa = 30,
				/obj/item/weapon/reagent_containers/food/snacks/stalker/konserva = 20)


/obj/effect/spawner/lootdrop/stalker/gravy
	name = "stalker gravity"
	radius = 3
	lootcount = 1
	cooldown = 4500
	loot = list(/obj/item/weapon/artifact/meduza = 12,
				/obj/item/weapon/artifact/stoneflower = 6,
				/obj/item/weapon/artifact/nightstar = 3,
				/obj/item/weapon/artifact/maminibusi = 1,
				/obj/nothing = 80)

/obj/effect/spawner/lootdrop/stalker/electra
	name = "stalker electra"
	radius = 3
	lootcount = 1
	cooldown =4500
	loot = list(/obj/nothing = 100)

/obj/effect/spawner/lootdrop/stalker/fire
	name = "stalker fire"
	radius = 3
	lootcount = 1
	cooldown = 4500
	loot = list(/obj/item/weapon/artifact/droplet = 13,
				/obj/item/weapon/artifact/fireball = 6,
				/obj/item/weapon/artifact/crystal = 3,
				/obj/nothing = 80)

/obj/nothing
	name = "nothing"
	invisibility = 101
/*
obj/nothing/New()
	qdel(src)
*/