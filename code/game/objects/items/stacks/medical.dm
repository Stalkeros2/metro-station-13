/obj/item/stack/medical
	name = "medical pack"
	singular_name = "medical pack"
	icon = 'icons/obj/items.dmi'
	amount = 6
	max_amount = 6
	w_class = 1
	throw_speed = 3
	throw_range = 7
	burn_state = FLAMMABLE
	burntime = 5
	var/heal_brute = 0
	var/heal_burn = 0
	var/stop_bleeding = 0
	var/self_delay = 50
	var/toggle_sound = 'sound/stalker/objects/bint2.ogg'

/obj/item/stack/medical/attack(mob/living/M, mob/user)

	if(M.stat == 2)
		var/t_him = "it"
		if(M.gender == MALE)
			t_him = "him"
		else if(M.gender == FEMALE)
			t_him = "her"
		user << "<span class='danger'>\The [M] is dead, you cannot help [t_him]!</span>"
		return

	if(!istype(M, /mob/living/carbon) && !istype(M, /mob/living/simple_animal))
		user << "<span class='danger'>You don't know how to apply \the [src] to [M]!</span>"
		return 1

	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(stop_bleeding)
			if(H.bleedsuppress)
				user << "<span class='warning'>[H]'s bleeding is already bandaged!</span>"
				return
			else if(!H.blood_max)
				user << "<span class='warning'>[H] isn't bleeding!</span>"
				return

	if(isliving(M))
		if(!M.can_inject(user, 1))
			return

	if(user)
		if (M != user)
			if (istype(M, /mob/living/simple_animal))
				var/mob/living/simple_animal/critter = M
				if (!(critter.healable))
					user << "<span class='notice'> You cannot use [src] on [M]!</span>"
					return
				else if (critter.health == critter.maxHealth)
					user << "<span class='notice'> [M] is at full health.</span>"
					return
				else if(src.heal_brute < 1)
					user << "<span class='notice'> [src] won't help [M] at all.</span>"
					return
			user.visible_message("<span class='green'>[user] applies [src] on [M].</span>", "<span class='green'>You apply [src] on [M].</span>")
		else
			var/t_himself = "itself"
			if(user.gender == MALE)
				t_himself = "himself"
			else if(user.gender == FEMALE)
				t_himself = "herself"
			user.visible_message("<span class='notice'>[user] starts to apply [src] on [t_himself]...</span>", "<span class='notice'>You begin applying [src] on yourself...</span>")
			if(!do_mob(user, M, self_delay))	return
			user.visible_message("<span class='green'>[user] applies [src] on [t_himself].</span>", "<span class='green'>You apply [src] on yourself.</span>")


	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		var/obj/item/organ/limb/affecting = H.get_organ(check_zone(user.zone_sel.selecting))
		if(stop_bleeding)
			if(!H.bleedsuppress) //so you can't stack bleed suppression
				H.suppress_bloodloss(stop_bleeding)
		if(affecting.status == ORGAN_ORGANIC) //Limb must be organic to be healed - RR
			if(affecting.heal_damage(src.heal_brute, src.heal_burn, 0))
				H.update_damage_overlays(0)

			M.updatehealth()
		else
			user << "<span class='notice'>Medicine won't work on a robotic limb!</span>"
	else
		M.heal_organ_damage((src.heal_brute/2), (src.heal_burn/2))
/*
	//Карма
	if(M != user)
		StalkerKarma.SetKarma(user.ckey, GetKarma(user.ckey) + 5)
		M.hostiles[user.ckey] -= 5
		user.karma += 5
*/
	use(1)



/obj/item/stack/medical/bruise_pack
	name = "bruise pack"
	singular_name = "bruise pack"
	desc = "A theraputic gel pack and bandages designed to treat blunt-force trauma."
	icon_state = "brutepack"
	heal_brute = 40
	origin_tech = "biotech=1"

/obj/item/stack/medical/gauze
	name = "medical gauze"
	desc = "A roll of elastic cloth that is extremely effective at stopping bleeding, but does not heal wounds."
	gender = PLURAL
	singular_name = "medical gauze"
	icon_state = "gauze"
	stop_bleeding = 1800
	self_delay = 20

/obj/item/stack/medical/gauze/improvised
	name = "improvised gauze"
	singular_name = "improvised gauze"
	desc = "A roll of cloth roughly cut from something that can stop bleeding, but does not heal wounds."
	stop_bleeding = 900

/obj/item/stack/medical/gauze/cyborg/
	materials = list()
	is_cyborg = 1
	cost = 250

/obj/item/stack/medical/ointment
	name = "ointment"
	desc = "Used to treat those nasty burn wounds."
	gender = PLURAL
	singular_name = "ointment"
	icon_state = "ointment"
	heal_burn = 40
	origin_tech = "biotech=1"

/obj/item/stack/medical/carkit
	name = "car medical kit"
	singular_name = "car medical kit"
	icon = 'icons/stalker/metro-2/storage.dmi'
	desc = "Простой набор, созданный дл&#255; быстрого оказани&#255; первой медицинской помощи. Помогает обработать лёгкие ранени&#255; и частично остановить кровотечение."
	amount = 2
	max_amount = 2
	icon_state = "bdw_faid"
	heal_brute = 40
	heal_burn = 20
	self_delay = 60
	origin_tech = "biotech=1"


/obj/item/stack/medical/grizzly
	name = "professional first aid kit"
	singular_name = "professional first aid kit"
	icon = 'icons/stalker/metro-2/storage.dmi'
	desc = "Профессиональный мед-комплект. Такие, до войны, использовались полевыми медиками и санитарами. Может использоватьс&#255; дл&#255; полноценных полевых операций."
	amount = 3
	max_amount = 3
	icon_state = "summedsan"
	heal_brute = 90
	heal_burn = 40
	self_delay = 100
	origin_tech = "biotech=1"


/obj/item/stack/medical/thread
	name = "thread"
	singular_name = "thread"
	icon = 'icons/stalker/metro-2/Items2.dmi'
	icon_state = "Thread"
	desc = "Старый, немного гр&#255;зный набор дл&#255; шить&#255;. Таким можно заштопать и себ&#255; в случае чего."
	heal_brute = 15
	self_delay = 80

/obj/item/stack/medical/bintik
	name = "gauze"
	singular_name = "gauze"
	desc = "Финцевый бинт, способствующий заживлению и обеззараживанию."
	icon = 'icons/stalker/some_stuff/medical.dmi'
	icon_state = "bint"
	heal_brute = 30
	amount = 2
	max_amount = 2
	self_delay = 50
	origin_tech = "biotech=1"