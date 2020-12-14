/mob/living/simple_animal/hostile/nanotrasen
	name = "Ñîëäàò ÊĞ"
	desc = "An officer part of Nanotrasen's private security force, he seems rather unpleased to meet you."
	icon = 'icons/stalker/metro-2/Metro_mobs.dmi'
	icon_state = "rsa_soldier"
	icon_living = "rsa_soldier"
	icon_dead = "soldier_dead"
	icon_gib = "syndicate_gib"
	speak_chance = 25
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 0
	stat_attack = 1
	robust_searching = 1
	maxHealth = 100
	health = 100
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 15
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = "harm"
	loot = list(/obj/effect/landmark/mobcorpse/nanotrasensoldier)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("syndicate")
	status_flags = CANPUSH
//speak = list("Îãîíü íà ïîäàâëåíèå!", "ÁÀÍÄÈÒÛ!", "ß ğàíåí! Íóæåí áèíò!", "Òû ÷òî-íèáóäü ñëûøàë?", "ÎÃÎÍÜ, ÎÃÎÍÜ!!!", "ÊÎÍÒÀÊÒ!!!", "ÓÃĞÎÇÀ ÍÀ ÄÂÅÍÀÄÖÀÒÜ!!!", "Ó ÍÀÑ ÄÂÓÕÑÎÒÛÉ!!!", "Ìóòàíòû!")
	search_objects = 1


///mob/living/simple_animal/nanotrasen/Aggro()
//	..()
//	summon_backup(15)
//	say("Âğàã!!!", "ÁÀÍÄÈÒÛ!", "Ìóòàíòû!")
//	faction = list("bot_friendly")


/mob/living/simple_animal/hostile/nanotrasen/ranged
	icon = 'icons/stalker/metro-2/Metro_mobs.dmi'
	icon_state = "rsa_soldier_range"
	icon_living = "rsa_soldier_range"
	icon_dead = "soldier_dead"
	faction = list("syndicate")
	ranged = 1
	retreat_distance = 3
	minimum_distance = 5
	casingtype = /obj/item/ammo_casing/c45
	projectilesound = 'sound/stalker/weapons/ak74_shot.ogg'
	loot = list(/obj/item/weapon/gun/projectile/automatic/ak74,
				/obj/effect/landmark/mobcorpse/nanotrasensoldier)


/mob/living/simple_animal/hostile/nanotrasen/ranged/smg
	icon_state = "nanotrasenrangedsmg"
	icon_living = "nanotrasenrangedsmg"
	rapid = 1
	casingtype = /obj/item/ammo_casing/c46x30mm
	projectilesound = 'sound/weapons/Gunshot_smg.ogg'
	loot = list(/obj/item/weapon/gun/projectile/automatic/wt550,
				/obj/effect/landmark/mobcorpse/nanotrasensoldier)