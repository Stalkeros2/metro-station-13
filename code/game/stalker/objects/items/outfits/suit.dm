/obj/item/clothing
	var/durability = -1

/obj/item/clothing/suit
	var/obj/item/weapon/storage/internal_slot/internal_slot = null

/obj/item/clothing/examine(mob/user)
	..()

/obj/item/clothing/head/examine(mob/user)
	..()
	if(durability)
		var/percentage = (durability / (initial(durability)))*100
		if(percentage >= 50)
			user << "<span class='notice'>Durability - [percentage]%</span>"
		else
			user << "<span class='warning'>Durability - [percentage]%</span>"

/obj/item/clothing/mask/examine(mob/user)
	..()
	if(durability)
		var/percentage = (durability / (initial(durability)))*100
		if(percentage >= 50)
			user << "<span class='notice'>Durability - [percentage]%</span>"
		else
			user << "<span class='warning'>Durability - [percentage]%</span>"


/obj/item/clothing/suit/examine(mob/user)
	..()
	if(durability)
		var/percentage = (durability / (initial(durability)))*100
		if(percentage >= 50)
			user << "<span class='notice'>Durability - [percentage]%</span>"
		else
			user << "<span class='warning'>Durability - [percentage]%</span>"

/obj/item/clothing/update_icon()
	..()
	overlays.Cut()

	if(unique)
		overlays += image('icons/stalker/projectile_overlays32x32.dmi', "unique", layer = FLOAT_LAYER)

/obj/item/clothing/New()
	..()
	update_icon()

/obj/item/clothing/suit/MouseDrop(atom/over_object)
	if(!usr || (loc != usr))
		return
	src.throwing = 0
	if (loc == usr)
		if(!usr.unEquip(src))
			return

	pickup(usr)
	add_fingerprint(usr)
	if(!usr.put_in_active_hand(src))
		dropped(usr)
	return

/obj/item/clothing/suit/attack_hand(mob/user)
	if(!ishuman(user))
		return ..()

	var/mob/living/carbon/human/H = user

	if(!internal_slot || H.wear_suit != src)
		return ..()

	internal_slot.attack_hand(user)

/////////////////////////////////////////////////////////////////////ØËÅÌÛ ÍÎ×ÍÎÃÎ ÂÈÄÅÍÜß, ÂÍÓÒÐÅÍÍÈÅ ÕÐÀÍÈËÈÙÀ È Ò.Ä./////////////////////////////////////////////////////////////////////////////////////////

/obj/item/clothing
	var/obj/item/nightvision/nvg = null

/obj/item/nightvision
	var/vision_flags = 0
	var/darkness_view = 4//Base human is 2
	var/invis_view = SEE_INVISIBLE_LIVING
	action_button_name = "Toggle Night Vision"
	var/active = 0
	var/list/colour_matrix = NIGHTVISION_MATRIX_I

/obj/item/nightvision/advanced
	colour_matrix = NIGHTVISION_MATRIX_II

/obj/item/nightvision/New(var/newloc)
	//..()
	/*
	if(newloc)
		loc = newloc
		if(loc.loc && istype(loc.loc, /obj/item/clothing/suit/hooded/sealed))
			var/obj/item/clothing/suit/hooded/sealed/S = loc.loc
			S.modifications["visor_suit"] = 1
		else if(istype(newloc, /obj/item/clothing/head))
			var/obj/item/clothing/head/H = newloc
			H.modifications["visor_head"] = 1
		else if(istype(newloc, /obj/item/clothing/mask))
			var/obj/item/clothing/mask/M = newloc
			//M.modifications["visor_mask"] = 1
			M.modifications["visor_head"] = 1
	*/
	if(istype(newloc, /obj/item/clothing))
		var/obj/item/clothing/C = newloc
		C.nvg = src
		C.action_button_name = action_button_name

/obj/item/nightvision/advanced/New(var/newloc)
	if(newloc)
		loc = newloc
		if(loc.loc && istype(loc.loc, /obj/item/clothing/suit/hooded/sealed))
			var/obj/item/clothing/suit/hooded/sealed/S = loc.loc
			S.modifications["visor_suit"] = 2
		else if(istype(newloc, /obj/item/clothing/head))
			var/obj/item/clothing/head/H = newloc
			H.modifications["visor_head"] = 2
		else if(istype(newloc, /obj/item/clothing/mask))
			var/obj/item/clothing/mask/M = newloc
			//M.modifications["visor_mask"] = 2
			M.modifications["visor_head"] = 2
	if(istype(newloc, /obj/item/clothing))
		var/obj/item/clothing/C = newloc
		C.nvg = src
		C.action_button_name = action_button_name

/obj/item/nightvision/attack_self(mob/user)

	if(!loc || !loc.loc || !istype(loc.loc, /mob/living/carbon))
		return

	var/mob/living/carbon/C = loc.loc

	if(C.head != src.loc && C.wear_mask != src.loc)
		return


	if(active)
		active = 0
		playsound(usr, 'sound/stalker/nv_off.ogg', 50, 1, -1)
		usr << "You deactivate the optical matrix on the [src]."
		//if(istype(usr, /mob/living/carbon/human))
			//var/mob/living/carbon/human/H = usr
			//H.nightvision.alpha = 0
		//overlay = null
		invis_view = SEE_INVISIBLE_LIVING
		//sleep(5)
	else
		active = 1
		playsound(usr, 'sound/stalker/nv_start.ogg', 50, 1, -1)
		usr << "You activate the optical matrix on the [src]."
		//if(istype(usr, /mob/living/carbon/human))
			//var/mob/living/carbon/human/H = usr
			//H.nightvision.alpha = 125
		//overlay = global_hud.nvg
		invis_view = SEE_INVISIBLE_MINIMUM
		sleep(5)

/obj/item/nightvision/proc/TurnOff(mob/user)
	if(active)
		active = 0
		playsound(usr, 'sound/stalker/nv_off.ogg', 50, 1, -1)
		user << "You deactivate the optical matrix on the [src]."
		//if(istype(usr, /mob/living/carbon/human))
		//	var/mob/living/carbon/human/H = user
		//	H.nightvision.alpha = 0
		invis_view = SEE_INVISIBLE_LIVING

/obj/item/clothing/ui_action_click()
	if(nvg)
		nvg.attack_self()
	else
		..()

/obj/item/nightvision/ui_action_click()
	attack_self()

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/item/clothing/suit/hooded/kozhanka
	name = "leather jacket"
	desc = "Îáû÷íà&#255; ïëîòíà&#255; êîæàíà&#255; êóðòêà, êàêèõ ìíîãî. Ñëåãêà óñèëèâàåò ïðîòèâîïóëåâóþ è îñêîëî÷íóþ çàùèòó. Íåýôôåêòèâíà ïðîòèâ àíîìàëüíûõ è äðóãèõ âîçäåéñòâèé."
	eng_desc = "Common grab of a novice stalker. It won’t save you from bullets or anomalies, but it’s still better than nothing."
	icon_state = "kozhanka"
	item_state = "det_suit"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	armor = list(melee = 10, bullet = 10, laser = 10,burn = 10, bomb = 10, bio = 10, rad = 10, electro = 10, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	hooded = 1
	action_button_name = "Toggle Hood"
	unacidable = 1
	hoodtype = /obj/item/clothing/head/winterhood/stalker/kozhanka
	durability = 75
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/stalker
	name = "hood"
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags = NODROP//|BLOCKHEADHAIR
	durability = -1

/obj/item/clothing/head/winterhood/stalker/kozhanka
	icon_state = "winterhood_kozhanka"
	armor = list(melee = 10, bullet = 0, laser = 10,burn = 10, bomb = 0, bio = 10, rad = 10, electro = 10, psy = 0)

/obj/item/clothing/suit/hooded/kozhanka/white
	icon_state = "kozhanka_wh"
	item_state = "labcoat"
	hoodtype = /obj/item/clothing/head/winterhood/stalker/kozhanka_wh

/obj/item/clothing/head/winterhood/stalker/kozhanka_wh
	armor = list(melee = 10, bullet = 0, laser = 10,burn = 10, bomb = 0, bio = 10, rad = 10, electro = 10, psy = 0)
	icon_state = "winterhood_kozhanka_wh"

/obj/item/clothing/suit/hooded/kozhanka/banditka
	name = "bandit jacket"
	desc = "Òðàäèöèîííà&#255; îäåæäà áàíäèòà - êîæàíà&#255; êóðòêà ñî âøèòûìè áðîíåâûìè ýëåìåíòàìè. Äà¸ò çàùèòó, êðàéíå íåäîñòàòî÷íóþ â æ¸ñòêèõ óñëîâè&#255;õ Çîíû."
	eng_desc = "Traditional bandit clothing - a leather jacket with armor pieces sewed in. The protection it provides is completely inadequate for the harsh conditions of the Zone. Does not hold any artifacts by default, but can be upgraded to hold one artifact."
	icon_state = "banditka"
	item_state = "ro_suit"
	armor = list(melee = 15, bullet = 15, laser = 15,burn = 5, bomb = 15, bio = 5, rad = 5, electro = 5, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/banditka
	durability = 75

/obj/item/clothing/head/winterhood/stalker/banditka
	armor = list(melee = 15, bullet = 0, laser = 15,burn = 5, bomb = 0, bio = 5, rad = 5, electro = 5, psy = 0)
	icon_state = "winterhood_banditka"

/obj/item/clothing/suit/hooded/kozhanka/banditka/unique
	name = "chain-mail jacket"
	desc = "Îáû÷íûé ñëàáåíüêèé áàíäèòñêèé áðîíåæèëåò, íî â ïîäêëàäêó âøèòî êîëü÷óæíîå ïîëîòíî. Ñäåëàòü òàêîé ïîä ñèëó ïî÷òè êàæäîìó, íî òåðïåíè&#255; õâàòèò äàëåêî íå âñåì."
	//icon_state = "banditka_unique"
	armor = list(melee = 15, bullet = 28, laser = 15,burn = 5, bomb = 15, bio = 5, rad = 5, electro = 5, psy = 0)
	unique = 1

/obj/item/clothing/suit/hooded/kozhanka/unique
	name = "anomaly jacket"
	desc = "Ýòó êóðòêó ñí&#255;ëè ñ òðóïà îäíîãî èç ñòàëêåðîâ, óìåðøèõ â àíîìàëèè 'êèñåëü'. Ïðîëåæàâ äîëãîå âðåì&#255; â àíîìàëèè, êóðòêà îáðåëà ñâîéñòâî óñêîð&#255;òü ìåòàáîëèçì."
	//icon_state = "kozhanka_unique"
	armor = list(melee = 10, bullet = 10, laser = 10,burn = 10, bomb = 20, bio = 20, rad = 10, electro = 10, psy = 0)
	unique = 0

/obj/item/clothing/suit/hooded/kombez
	name = "sunrise"
	desc = "Ïðîèçâîäèìûé 'íàðîäíûìè óìåëüöàìè' êîìáèíåçîí ñòàëêåðà ïðåäñòàâë&#255;åò ñîáîé ýôôåêòèâíîå ñî÷åòàíèå ë¸ãêîãî àðìåéñêîãî áðîíåæèëåòà è êîìáèíåçîíà èç ïðîðåçèíåíîé òêàíè. Óñèëåí çà ñ÷¸ò âñòðîåííûõ êåâëàðîâûõ ïëàñòèí. Íåïëîõî çàùèùàåò îò ñëàáîãî ñòðåëêîâîãî îðóæè&#255;. Â öåëîì êðàéíå íåäîñòàòî÷åí äë&#255; ãëóáîêèõ ðåéäîâ è ñåðü¸çíûõ îïåðàöèé â óçëàõ Çîíû."
	eng_desc = "This DIY stalker bodysuit is a combination of a bodysuit of twin-layered rubberized cloth with plexiglass lining and built-in body armor. Despite the fact that the body armor is incapable of protecting the wearer from even pistol bullets, the suit enjoys great popularity due to its low cost and modification potential. Comes with built-in artifact containers."
	icon_state = "kombez"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	hooded = 1
	action_button_name = "Toggle Hood"
	unacidable = 1
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 35, bullet = 25, laser = 50,burn = 50, bomb = 30, bio = 50, rad = 50, electro = 50, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/kombez
	durability = 200
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/stalker/kombez
	armor = list(melee = 35, bullet = 	0, laser = 50,burn = 50, bomb = 0, bio = 50, rad = 50, electro = 50, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_kombez"

/obj/item/clothing/suit/jacket/sidor
	name = "old vest"
	desc = "Êîøåãíà&#255; æèëåòêà, ñäåëàííà&#255; èç êîæè õèìåðû."
	icon_state = "sidor_vest"
	item_state = "det_suit"
	burn_state = FIRE_PROOF
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank/internals/emergency_oxygen,/obj/item/toy,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/gun/projectile/automatic/pistol,/obj/item/weapon/gun/projectile/revolver,/obj/item/weapon/gun/projectile/revolver/detective,/obj/item/weapon/kitchen/knife/tourist)

/obj/item/clothing/suit/hooded/kozhanka/banditka/coat
	name = "trenchcoat"
	desc = "Îáû÷íûé ïëàù èç ÷¸ðíîé êîæè. Îñîáåííîé çàùèòû íîñèòåëþ íå îáåñïå÷èâàåò, ðàçâå ÷òî íå äàñò çàì¸ðçíóòü íî÷üþ è ñì&#255;ã÷èò óêóñ ñëåïîé ñîáàêè. Äîñòàòî÷íî íåóäîáåí, íî, òåì íå ìåíåå, ÷àñòî èñïîëüçóåòñ&#255; áàíäèòàìè - âîçìîæíî, èñêëþ÷èòåëüíî èç-çà âíåøíåãî âèäà."
	eng_desc = "A regular black leather trench coat. Has no special purpose other than to keep the wearer warm at night or protect from a blind dog bite. Although the trench coat is not particularly comfortable, it is often used by Bandits in the Zone - either because it allows them to hide in the dark or simply due to its \"cool\" appearance."
	icon_state = "banditcoat"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 20, bullet = 15, laser = 15,burn = 30, bomb = 0, bio = 10, rad = 10, electro = 30, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/bandit
	durability = 150

/obj/item/clothing/head/winterhood/stalker/bandit
	armor = list(melee = 15, bullet = 0, laser = 15,burn = 30, bomb = 10, bio = 10, rad = 10, electro = 30, psy = 0)
	icon_state = "winterhood_banditcoat"

/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown
	icon_state = "banditcoatbrown"
	desc = "Îáû÷íûé ïëàù èç êîðè÷íåâîé êîæè. Îñîáåííîé çàùèòû íîñèòåëþ íå îáåñïå÷èâàåò, ðàçâå ÷òî íå äàñò çàì¸ðçíóòü íî÷üþ è ñì&#255;ã÷èò óêóñ ñëåïîé ñîáàêè. Äîñòàòî÷íî íåóäîáåí, íî, òåì íå ìåíåå, ÷àñòî èñïîëüçóåòñ&#255; áàíäèòàìè - âîçìîæíî, èñêëþ÷èòåëüíî èç-çà âíåøíåãî âèäà."
	eng_desc = "A regular brown leather trench coat. Has no special purpose other than to keep the wearer warm at night or protect from a blind dog bite. Although the trench coat is not particularly comfortable, it is often used by Bandits in the Zone - either because it allows them to hide in the dark or simply due to its \"cool\" appearance."
	hoodtype = /obj/item/clothing/head/winterhood/stalker/banditbrown

/obj/item/clothing/head/winterhood/stalker/banditbrown
	armor = list(melee = 20, bullet = 0, laser = 15,burn = 30, bomb = 0, bio = 10, rad = 10, electro = 30, psy = 0)
	icon_state = "winterhood_banditcoatbrown"

/obj/item/clothing/suit/hooded/sealed
	name = "test"
	desc = "Êîñòþì ñ ñèåìòîé çàìêíóòîãî äûõàíè&#255;."
	eng_desc = "Sealed suit."
	icon_state = "kombez"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	hooded = 1
	action_button_name = "Toggle Hood"
	unacidable = 1
	strip_delay = 80
	put_on_delay = 60
//	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 90, bullet = 25, laser = 50,burn = 50, bomb = 30, bio = 50, rad = 50, electro = 50, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/sealed
	durability = 200
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)
/*
/obj/item/clothing/head/winterhood/stalker/sealed
	modifications = list("visor_suit" = 0)
*/
/obj/item/clothing/suit/hooded/sealed/ToggleHood()
	if(!suittoggled)
		if(ishuman(src.loc))
			var/mob/living/carbon/human/H = src.loc
			if(H.wear_suit != src)
				H << "<span class='warning'>You must be wearing [src] to put up the hood!</span>"
				return
			if(H.head || H.wear_mask)
				H << "<span class='warning'>You're already wearing something on your head!</span>"
				return
			else
				H.equip_to_slot_if_possible(hood,slot_head,0,0,1)
				suittoggled = 1
				src.icon_state = "[initial(icon_state)]_t"
				H.update_inv_wear_suit()
	else
		RemoveHood()

/obj/item/clothing/suit/hooded/sealed/New()
	..()
	//spawn(10)
	//	if(hood)
	//		modifications += hood.modifications
	//if(hood.nvg)
	//	if(hood.nvg.colour_matrix == NIGHTVISION_MATRIX_I)
	//		modifications += "visor"
	//	else if(hood.nvg.colour_matrix == NIGHTVISION_MATRIX_II)
	//		modifications += "visor"

/obj/item/clothing/suit/hooded/sealed/ecolog
	name = "SSP-99"
	desc = "Ñîçäàííûé äë&#255; ðàáîòû â óñëîâè&#255;õ Çîíû êîñòþì çàùèòû ÑÑÏ-99. Èñïîëüçóåòñ&#255; ýêñïåäèöè&#255;ìè ó÷¸íûõ è ñîòðóäíè÷àþùèõ ñ íèìè ñòàëêåðîâ-ýêîëîãîâ. Âñòðîåííà&#255; ñèñòåìà ôèëüòðàöèè âîçäóõà è êîíäèöèîíèðîâàíè&#255;. Íå ðàññ÷èòàí íà âåäåíèå áîåâûõ äåéñòâèé."
	eng_desc = "A SSP-99 chemical protection suit specially designed for the Zone conditions. It is used by scientific expeditions and the eco-stalkers who cooperate with them. It has an integrated air-filtering and air-conditioning system. It is heat and electricity resistant, provides good protection from radiation and biological anomalies. It is resistant to chemically aggressive environments. It is not designed for combat, so it provides neither bullet, nor splinter protection."
	icon_state = "ecolog"
	item_state = "syndicate-orange"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 15, bullet = 15, laser = 90, burn = 90, bomb = 40, bio = 90, rad = 95, electro = 90, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/sealed/ecolog
	burn_state = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/stalker/sealed/ecolog
	name = "SSP-99 helmet"
	armor = list(melee = 15, bullet = 15, laser = 90, burn = 90, bomb = 40, bio = 90, rad = 95, electro = 90, psy = 20)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR
	icon_state = "ecolog_helmet"

obj/item/clothing/head/winterhood/stalker/ecolog/New()
	..()
	nvg = new /obj/item/nightvision(src)

/obj/item/clothing/suit/hooded/sealed/ecologm
	name = "SSP-99M"
	desc = "Âûñîêîêà÷åñòâåííûé ìîäèôèöèðîâàííûé êîìáèíåçîí ÑÑÏ-99. Äîáàâëåíà çàùèòà òîðñà îò ïóëåâîãî è îñêîëî÷íîãî ïîâðåæäåíè&#255;. Ïðåäíàçíà÷åí äë&#255; ýêèïèðîâêè îõðàíû íàó÷íûõ ýêñïåäèöèé. Ýôôåêòèâíà&#255; çàùèòà îò ðàäèàöèè è áèîëîãè÷åñêèõ àíîìàëèé. Ñòîéêèé ê õèìè÷åñêè-àãðåññèâíûì ñðåäàì è äðóãèì âðåäíûì äë&#255; îðãàíèçìà âîçäåéñòâè&#255;ì."
	eng_desc = "High quality modified SSP-99 suit. It provides increased body protection from bullet and splinter damage. It is designed for the guards working with scientific expeditions. It provides good protection from radiation and biological anomalies. It is resistant to chemically aggressive environments and other effects dangerous to the body."
	icon_state = "ecologg"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 40, bullet = 30, laser = 90,burn = 90, bomb = 60, bio = 90, rad = 90, electro = 90, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/sealed/ecologm
	burn_state = FIRE_PROOF
	durability = 250
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/stalker/sealed/ecologm
	name = "SSP-99M helmet"
	armor = list(melee = 40, bullet = 30, laser = 90,burn = 90, bomb = 60, bio = 90, rad = 90, electro = 90, psy = 25)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR
	icon_state = "ecologg_helmet"
	burn_state = FIRE_PROOF

/obj/item/clothing/head/winterhood/stalker/sealed/ecologm/New()
	..()
	nvg = new /obj/item/nightvision(src)

/obj/item/clothing/suit/hooded/sealed/seva
	name = "SEVA"
	desc = "Ïðîèçâîäèìûé îäíèì èç îáîðîííûõ êèåâñêèõ ÍÈÈ äàííûé êîìáèíåçîí ïðåäîñòàâë&#255;åò îòëè÷íóþ àëüòåðíàòèâó äðóãèì ñòàëêåðîâñêèì êîìáèíåçîíàì, èçãîòîâëåííûì â êóñòàðíûõ óñëîâè&#255;õ. Ïðåäñòàâë&#255;åò èç ñåá&#255; îòëè÷íîå ñî÷åòàíèå áðîíèðîâàííîãî êîìáèíåçîíà, ñèñòåìû äûõàíè&#255; ñ çàìêíóòûì öèêëîì, à òàêæå âñòðîåííîé ñèñòåìîé ïîäàâëåíè&#255; äåéñòâè&#255; àíîìàëüíûõ ïîëåé. Çà ñ÷¸ò óäà÷íîãî ïîäáîðà ìàòåðèàëîâ &#255;âë&#255;åòñ&#255; õîðîøèì âûáîðîì. Åäèíñòâåííûé íåäîñòàòîê - åãî öåíà."
	eng_desc = "This bodysuit, intended for conducting research in the Zone, combines a closed-cycle respiratory module and an external isolation coating, resulting in excellent protection from anomalies. Due to poor protection from physical impact, the suit is not a good defense against bullet and fragmentation damage. It comes with a built-in artifact transportation container."
	icon_state = "seva"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 60, bullet = 60, laser = 80,burn = 80, bomb = 50, bio = 70, rad = 80, electro = 80, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/sealed/seva
	burn_state = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/stalker/sealed/seva
	name = "SEVA helmet"
	armor = list(melee = 60, bullet = 50, laser = 80,burn = 80, bomb = 50, bio = 70, rad = 80, electro = 80, psy = 15)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR
	icon_state = "seva_helmet"
	burn_state = FIRE_PROOF

/obj/item/clothing/head/winterhood/stalker/sealed/seva/New()
	..()
	nvg = new /obj/item/nightvision(src)

/obj/item/clothing/suit/hooded/sealed/seva/orange
	icon_state = "sevao"
	hoodtype = /obj/item/clothing/head/winterhood/stalker/sealed/seva/orange

/obj/item/clothing/head/winterhood/stalker/sealed/seva/orange
	icon_state = "sevao_helmet"
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR

/obj/item/clothing/suit/hooded/sealed/psz9md
	name = "PSZ-9MD"
	desc = "Îòëè÷íûé çàùèòíûé êîñòþì äë&#255; Çîíû. Ñòàëêåðû öåí&#255;ò åãî çà ñî÷åòàíèå îòëè÷íûõ ïðîòèâîàíîìàëüíûõ êà÷åñòâ è ïðîòèâîïóëåâîé çàùèòû. Â ñîñòàâå: êîìáèíåçîí ÏÑÇ-9ä, ñèñòåìà äûõàíè&#255; ñ çàìêíóòûì öèêëîì, âñòðîåííà&#255; ñèñòåìà ïîäàâëåíè&#255; äåéñòâè&#255; àíîìàëüíûõ ïîëåé. Ïðåäîñòàâë&#255;åò êà÷åñòâåííóþ çàùèòó îò ïóëåâîãî è îñêîëî÷íîãî ïîïàäàíè&#255;."
	eng_desc = "A wonderful protective suit for the Zone. Stalkers appreciate it because it combines excellent anomaly-proof and bullet-proof qualities. It includes the PSZ-9d suit, a closed cycle breathing system and an integrated system of anomalous field suppression. It provides quality bullet and splinter protection."
	icon_state = "psz9md"
	item_state = "syndicate-black-red"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 50, bullet = 50, laser = 80,burn = 75, bomb = 50, bio = 50, rad = 75, electro = 75, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/sealed/psz9md
	burn_state = FIRE_PROOF
	durability = 150
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/stalker/sealed/psz9md
	name = "PSZ-9MD helmet"
	armor = list(melee = 50, bullet = 50, laser = 80,burn = 65, bomb = 50, bio = 50, rad = 70, electro = 65, psy = 20)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR
	icon_state = "psz9md_helmet"
	burn_state = FIRE_PROOF

/obj/item/clothing/head/winterhood/stalker/sealed/psz9md/New()
	..()
	nvg = new /obj/item/nightvision(src)

/obj/item/clothing/suit/hooded/sealed/exoskelet
	name = "exoskelet"
	desc = "Ýêñïåðèìåíòàëüíûé îáðàçåö âîåííîãî ýêçîñêåëåòà. Â ñåðèéíîå ïðîèçâîäñòâî òàê è íå ïîïàë, â âèäó ÷ðåçâû÷àéíîé äîðîãîâèçíû è íåêîòîðûõ îøèáîê â ïðîåêòèðîâàíèè. Íå ñìîòð&#255; íà ýòî, âûïóñêàåòñ&#255; ìàëûìè ïàðòè&#255;ìè íà ïîäïîëüíûõ ïðåäïðè&#255;òè&#255;õ çà ïðåäåëàìè Óêðàèíû. Äàííûé ýêçîñêåëåò îòíîñèòñ&#255; ê òðåòüåìó ïîêîëåíèþ. Â íåì óñòðàíåíû êîíñòðóêòèâíûå íåäîñòàòêè, êàðäèíàëüíî ñíèæàâøèå ïîäâèæíîñòü, à òàêæå óñèëåíà áðîí&#255;. Ïðåäîñòàâë&#255;åò âåëèêîëåïíóþ çàùèòó îò ïóëåâîãî è îñêîëî÷íîãî ïîïàäàíè&#255;, íî íå ãàðàíòèðóåò ñòîéêîñòè ê àíîìàëè&#255;ì."
	eng_desc = "An experimental sample of a military exoskeleton. Was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its ability to take on the weight of all carried equipment, and therefore small batches are made in underground facilities outside Ukraine. Comes with a built-in artifact container."
	icon_state = "exoskelet"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 80, bullet = 80, laser = 50,burn = 30, bomb = 80, bio = 50, rad = 30, electro = 30, psy = 0)
	hooded = 1
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/winterhood/stalker/sealed/exoskelet
	durability = 200

/obj/item/clothing/head/winterhood/stalker/sealed/exoskelet
	name = "Exoskeleton helmet"
	armor = list(melee = 80, bullet = 80, laser = 50,burn = 30, bomb = 80, bio = 50, rad = 30, electro = 30, psy = 15)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR
	icon_state = "exoskelet_helmet"

/obj/item/clothing/suit/army
	name = "army armor"
	desc = "Ñòàíäàðòíûé àðìåéñêèé áðîíåæèëåò, âûäàâàåìûé âñåì âîåííîñëóæàùèì, îõðàí&#255;þùèì ïåðèìåòð Çîíû. Ïðåäîñòàâë&#255;åò íåïëîõóþ çàùèòó îò ïóëü è õîëîäíîãî îðóæè&#255;, àáñîëþòíî íåïðèãîäåí äë&#255; âûëàçîê âãëóáü Çîíû, òàê êàê íå èìååò ïî÷òè íèêàêîé çàùèòû îò âîçäåéñòâè&#255; àíîìàëüíûõ ïîëåé."
	icon_state = "army_armor1"
	item_state = "armor"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	unacidable = 1
	armor = list(melee = 30, bullet = 40, laser = 10,burn = 25, bomb = 10, bio = 0, rad = 15, electro = 25, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 125
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/*
/obj/item/clothing/suit/army/army2
	icon_state = "army_armor2"
*/
/obj/item/clothing/suit/army/New()
	..()
	icon_state = "army_armor[rand(1, 2)]"

/obj/item/clothing/suit/berill
	name = "berill-5M"
	desc = "Ìîäèôèöèðîâàííà&#255; äë&#255; ðàáîòû â óñëîâè&#255;õ Çîíû, ýêèïèðîâêà àðìåéñêîãî ñïåöíàçà."
	eng_desc = "This item comprises military PS5 series body armor with beryllium sputter modified for use in the Zone. Designed for assault operations in highly radioactive areas, it is ineffective in areas of high anomalous activity. The suit makes its way to stalkers through the military, who exchange it for loot. Does not come with an artifact container."
	icon_state = "berill_5m"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 40, bullet = 60, laser = 30,burn = 30, bomb = 40, bio = 30, rad = 30, electro = 30, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 150
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/kombez/monolith
	name = "monolith armor"
	desc = "Êîìáèíåçîí ñòàëêåðà ãðóïïèðîâêè 'Ìîíîëèò'. Ïðîèçâîäèòåëü íåèçâåñòåí. Ïî çàùèòíûì õàðàêòåðèñòèêàì íåìíîãî óñòóïàåò àðìåéñêîìó áðîíåæèëåòó ñåðèè ÏÑ3-9à. Ïî ñòðóêòóðå íàïîìèíàåò øèðîêî ðàñïðîñòðàíåííûå ñðåäè íåéòðàëüíûõ ñòàëêåðîâ êîìáèíåçîíû, â êîòîðûõ áðîíåæèëåò ñîåäèí&#255;åòñ&#255; ñ êîñòþìîì ïðîòèâîðàäèàöèîííîé çàùèòû. Íåïëîõî çàùèùàåò îò ñëàáîãî ñòðåëêîâîãî îðóæè&#255;. Óðîâåíü çàùèòû îò àíîìàëüíîé àêòèâíîñòè îñòàâë&#255;åò æåëàòü ëó÷øåãî èç-çà îòñóòñòâè&#255; ñèñòåìû ôèëüòðàöèè âîçäóõà."
	eng_desc = "Stalker suit from the Monolith faction. The producer is unknown. Its protective properties are slightly worse then those of the PSZ-9a military bulletproof vest. Its structure is similar to the suit popular with neutral stalkers which combines a bulletproof vest and a radiation protection suit. It provides good protection from gunfire. Its level of anomaly protection is low due to the absence of an air filtering system."
	icon_state = "monolit"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 35, bullet = 35, laser = 50,burn = 30, bomb = 40, bio = 30, rad = 30, electro = 30, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/monolith
	durability = 150

/obj/item/clothing/head/winterhood/stalker/monolith
	armor = list(melee = 35, bullet = 0, laser = 50,burn = 50, bomb = 0, bio = 50, rad = 30, electro = 50, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_monolit"

/obj/item/clothing/suit/hooded/sealed/monolith
	name = "monolith scientific suit"
	desc = "Ïðîèçâîäèìûé îäíèì èç îáîðîííûõ êèåâñêèõ ÍÈÈ äàííûé êîìáèíåçîí ïðåäîñòàâë&#255;åò îòëè÷íóþ àëüòåðíàòèâó äðóãèì ñòàëêåðîâñêèì êîìáèíåçîíàì, èçãîòîâëåííûì â êóñòàðíûõ óñëîâè&#255;õ. Ïðåäñòàâë&#255;åò èç ñåá&#255; îòëè÷íîå ñî÷åòàíèå áðîíèðîâàííîãî êîìáèíåçîíà, ñèñòåìû äûõàíè&#255; ñ çàìêíóòûì öèêëîì, à òàêæå âñòðîåííîé ñèñòåìîé ïîäàâëåíè&#255; äåéñòâè&#255; àíîìàëüíûõ ïîëåé. Çà ñ÷¸ò óäà÷íîãî ïîäáîðà ìàòåðèàëîâ &#255;âë&#255;åòñ&#255; õîðîøèì âûáîðîì. Åäèíñòâåííûé íåäîñòàòîê - åãî öåíà."
	eng_desc = "This bodysuit, intended for conducting research in the Zone, combines a closed-cycle respiratory module and an external isolation coating, resulting in excellent protection from anomalies. Due to poor protection from physical impact, the suit is not a good defense against bullet and fragmentation damage. It comes with a built-in artifact transportation container."
	icon_state = "monolith_scientific"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_SUIT_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
	armor = list(melee = 45, bullet = 50, laser = 45, burn = 45, bomb = 45, bio = 65, rad = 75, electro = 60, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/sealed/monolith
	burn_state = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/stalker/sealed/monolith
	name = "monolith scientific suit helmet"
	armor = list(melee = 50, bullet = 50, laser = 45, burn = 45, bomb = 45, bio = 65, rad = 75, electro = 60, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR
	icon_state = "monolith_scientific_helmet"
	burn_state = FIRE_PROOF

/obj/item/clothing/suit/skat
	name = "SKAT-M9"
	desc = "Àðìåéñêèé áðîíåêîñòþì ÑÊÀÒ-9Ì ñîçäàí äë&#255; ïðîâåäåíè&#255; øòóðìîâûõ îïåðàöèé â çîíàõ àêòèâíîñòè àíîìàëèé. Â ñîñòàâå: ò&#255;æ¸ëûé àðìåéñêèé áðîíåêîñòþì ñåðèè ÏÑ3-12ï, âñòðîåííûé êîìïåíñàöèîííûé êîñòþì. Ïðåäîñòàâë&#255;åò âåëèêîëåïíóþ çàùèòó îò ïóëåâîãî è îñêîëî÷íîãî ïîïàäàíè&#255;, ïðè ýòîì íå ñíèæà&#255; ïîäâèæíîñòè ñîëäàòà. Â íàëè÷èè ñáàëàíñèðîâàííà&#255; ñèñòåìà çàùèòû îò àíîìàëüíîãî âîçäåéñòâè&#255;."
	eng_desc = "This Skat-9M bulletproof military suit is designed for assault operations in areas of anomalous activity. It includes a PSZ-12p heavy military bulletproof suit, an integrated compensation suit and a Sphere-12M helmet. It provides perfect protection from bullets and splinters and it doesn't decrease the soldier's mobility. It has a balanced system of anomaly protection."
	icon_state = "skat"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	unacidable = 1
	armor = list(melee = 60, bullet = 70, laser = 60,burn = 50, bomb = 70, bio = 35, rad = 35, electro = 50, psy = 0)
	durability = 200
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/kombez/ps5m
	name = "PS5-M"
	desc = "Ñîâðåìåííà&#255; ìîäåëü êîìáèíåçîíà Äîëãà. Áîëüøå ïîäõîäèò íîâîáðàíöàì èç ñòàëêåðîâ, êîòîðûå ïðèâûêëè ê îòíîñèòåëüíî ëåãêèì êîñòþìàì. Â îòëè÷èå îò ÏÑÇ, îáåñïå÷èâàåò õîðîøóþ çàùèòó îò àíîìàëüíîãî âîçäåéñòâè&#255; è ïðè ýòîì ñïîñîáåí îñòàíîâèòü ïèñòîëåòíóþ ïóëþ è íåêîòîðûå àâòîìàòíûå ïóëè."
	eng_desc = "This modern version of the Duty bodysuit is better suited for stalker recruits who are used to lightweight suits. Unlike the PSZ series, this suit provides good protection against anomalies while also being capable of stopping a pistol bullet. The suit cannot be modified with an artifact container, but may be upgraded with a combat support system instead."
	icon_state = "ps5m"
	item_state = "syndicate-black-red"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 30, bullet = 35, laser = 50,burn = 35, bomb = 30, bio = 30, rad = 30, electro = 35, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/ps5m
	durability = 200

/obj/item/clothing/head/winterhood/stalker/ps5m
	armor = list(melee = 30, bullet = 0, laser = 50,burn = 35, bomb = 0, bio = 30, rad = 30, electro = 35, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_psz9d"

/obj/item/clothing/suit/psz9d
	name = "PSZ-9D"
	desc = "Ñîâðåìåííà&#255; ìîäåëü áîåâîé áðîíè Äîëãà. Îòëè÷íî ïîäõîäèò äë&#255; ÷àñòî âñòóïàþùèõ â ïåðåñòðåëêè ÷ëåíîâ ãðóïïèðîâêè. Â îòëè÷èå îò ÏÑ5, èìååò ìíîãî÷èñëåííûå öèðêîíèåâûå çàùèòíûå ïëàñòèíû â íàãðóäíèêå, ñïîñîáíûå îñòàíîâèòü àâòîìàòíóþ ïóëþ íà èçëåòå."
	eng_desc = "Produced by one of Kiev's defence research institutes and commissioned by the Duty faction. It is as simple and reliable as the standard PSZ-9 model, but due to the new materials, it provides good protection from various harmful impacts, including firearm damage. The vest still needs some work because it has no breathing protection system."
	icon_state = "psz9d"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	unacidable = 1
	armor = list(melee = 75, bullet = 65, laser = 50,burn = 40, bomb = 80, bio = 35, rad = 45, electro = 40, psy = 0)
	durability = 200
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/kombez/mercenary
	name = "mercenary armor"
	desc = "Êîìáèíåçîí ñòàëêåðà èç ãðóïïèðîâêè 'Íà¸ìíèêè'. Çà îñíîâó âç&#255;òû îáðàçöû ýêèïèðîâêè ñïåöíàçà çàïàäíûõ àðìèé. Çà ñ÷¸ò ñïåöèàëüíîé îáðàáîòêè òêàíè óñèëåíà óñòîé÷èâîñòü áðîíè ïðè ôèçè÷åñêîì ñìåùåíèè ïëàñòèí. Ïî çàùèòíûì õàðàêòåðèñòèêàì íåìíîãî ïðåâîñõîäèò àðìåéñêèå áðîíåæèëåòû ñåðèè ÏÑ3-7."
	eng_desc = "Stalker suit from the Merc faction. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "mercenary"
	item_state = "syndicate-black"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 20, bullet = 45, laser = 10,burn = 15, bomb = 10, bio = 0, rad = 10, electro = 15, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/mercenary
	durability = 150

/obj/item/clothing/head/winterhood/stalker/mercenary
	armor = list(melee = 20, bullet = 0, laser = 10,burn = 15, bomb = 50, bio = 0, rad = 10, electro = 15, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_mercenary"

/obj/item/clothing/suit/hooded/kombez/veter
	name = "wind of freedom"
	desc = "Ïðîèçâîäèìûé ðåìåñëåííèêàìè ãðóïïèðîâêè «Ñâîáîäà» îáëåã÷åííûé êîìáèíåçîí ñòàëêåðà. Ëåãêèé àðìåéñêèé áðîíåæèëåò ïëþñ íàêëàäíûå óñèëèâàþùèå êåâëàðîâûå ýëåìåíòû. Ñïîñîáåí çàùèòèòü îò ñëàáîãî ñòðåëêîâîãî îðóæè&#255;. Òêàíü êîñòþìà îáðàáîòàíà ñïåöèàëüíûì ñîñòàâîì, ïîâûøàþùèì ñîïðîòèâëåíèå àíîìàëüíîé àêòèâíîñòè."
	eng_desc = "This lightweight stalker bodysuit is made by Freedom craftsmen. The suit's fabric is treated with Horizon, a special solution developed by the faction by trial and error to increase resistance to anomalies. Like the Sunrise suit, the Wind of Freedom comes with built-in body armor and artifact containers."
	icon_state = "veter"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 25, bullet = 25, laser = 50,burn = 65, bomb = 30, bio = 50, rad = 40, electro = 65, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/veter
	durability = 200

/obj/item/clothing/head/winterhood/stalker/veter
	armor = list(melee = 25, bullet = 0, laser = 50,burn = 45, bomb = 0, bio = 20, rad = 40, electro = 45, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_strazh"

/obj/item/clothing/suit/strazh
	name = "guardian of freedom"
	desc = "Ìîäèôèöèðîâàííà&#255; äë&#255; ðàáîòû â óñëîâè&#255;õ Çîíû, ýêèïèðîâêà àðìåéñêîãî ñïåöíàçà. Ïîêðàøåííà&#255; â &#255;ðêèé êàìóôë&#255;æ Ñâîáîäû è îáëåã÷åííà&#255; äë&#255; óëó÷øåíè&#255; ïîäâèæíîñòè, ýòà âåðñè&#255; Áåðèëëà áûëà îáðàáîòàíà ñïåöèàëüíûìè ðåàãåíòàìè, îñëàáë&#255;þùèìè âðåä îò àíîìàëüíûõ óãðîç."
	eng_desc = "This stalker bodysuit with reinforced body armor made by Freedom craftsmen represents a good compromise between combat and anomaly protection. The built-in body armor comprises armor plating and ten Kevlar layers, capable of stopping a pistol bullet. The suit uses the relatively expensive Sovereign compound for anomaly protection. Comes with an artifact container."
	icon_state = "strazh"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 50, bullet = 50, laser = 30,burn = 50, bomb = 40, bio = 50, rad = 40, electro = 50, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 150
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/assaultmerc
	name = "mercenary heavy armor"
	desc = "Ò&#255;æåëà&#255; êîìáèíèðîâàííà&#255; áðîí&#255;, âêëþ÷àþùà&#255; â ñåá&#255; ìíîãîñëîéíûé áàëëèñòè÷åñêèé æèëåò ñ âîðîòíèêîì è çàùèòîé ïðåäïëå÷èé, à òàêæå ïî ïàðå íåîïðåíîâî-ïëàñòèêîâûõ íàðó÷åé è íàãîëåííèêîâ äë&#255; çàùèòû îò óêóñîâ ìåñòíîé æèâíîñòè. Âû íå óâåðåíû, ÷òî òàêîé êîñòþì õîðîøî çàùèòèò îò àíîìàëèé, íî äë&#255; óñëîâèé çîíû ñëîæíî íàéòè áîåâóþ áðîíþ ïîëó÷øå."
	icon_state = "assaultmerc"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 50, bullet = 65, laser = 40,burn = 20, bomb = 80, bio = 20, rad = 25, electro = 20, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 250
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/kombez/kombez_bandit
	name = "bandit armor"
	desc = "Êîìáèíåçîí ñòàëêåðà èç ãðóïïèðîâêè 'Áàíäèòû'. Çà îñíîâó âç&#255;òû îáðàçöû ýêèïèðîâêè ñïåöíàçà çàïàäíûõ àðìèé. Çà ñ÷¸ò ñïåöèàëüíîé îáðàáîòêè òêàíè óñèëåíà óñòîé÷èâîñòü áðîíè ïðè ôèçè÷åñêîì ñìåùåíèè ïëàñòèí. Ïî çàùèòíûì õàðàêòåðèñòèêàì íåìíîãî ïðåâîñõîäèò àðìåéñêèå áðîíåæèëåòû ñåðèè ÏÑ3-7."
	eng_desc = "Stalker suit from the Bandits faction. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "combez_bandit"
	item_state = "syndicate-orange"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 20, bullet = 45, laser = 10,burn = 15, bomb = 10, bio = 0, rad = 10, electro = 15, psy = 0)
	hoodtype = /obj/item/clothing/head/winterhood/stalker/kombez_bandit
	durability = 150

/obj/item/clothing/head/winterhood/stalker/kombez_bandit
	armor = list(melee = 20, bullet = 0, laser = 10,burn = 15, bomb = 50, bio = 0, rad = 10, electro = 15, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_combez_bandit"


/obj/item/clothing/suit/hooded/kombez/mercenary/leader
	name = "mercenary leader armor"
	desc = "Îáû÷íà&#255; áðîí&#255; íàåìíèêà ñ íàáðîøåííûì ïîâåðõ ïëàùîì â âåñüìà ïîòðåïàííîì ñîñòî&#255;íèè. Âû çàäóìûâàåòåñü, ïî÷åìó íèêòî äðóãîé íå äîäóìàëñ&#255; ðàíåå íîñèòü ïëàù ïîâåðõ ëåãêîé áðîíè... íåóæåëè ýòîìó ÷òî-òî ìåøàåò?"
	icon_state = "mercleader"
	item_state = "syndicate-black"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	put_on_delay = 60
	flags_inv = HIDEJUMPSUIT
	armor = list(melee = 20, bullet = 45, laser = 10,burn = 15, bomb = 10, bio = 0, rad = 10, electro = 15, psy = 0)
	durability = 150


/obj/item/clothing/suit/metro/banditsheavyarmor
	name = "Heavy Armor"
	desc = "Íàèáîëåå ðàñïðîñòðàí¸ííà&#255; â ìåòðî ìîäåëü ò&#255;æ¸ëîé áàëëèñòè÷åñêîé áðîíè, âïåðâûå ïî&#255;âèâøà&#255;ñ&#255; íà Êóçíåöêîé. Áëàãîäàð&#255; ñâîèì êà÷åñòâàì(àêà íàä¸æíîñòü, äåøåâèçíà è ë¸ãêîñòü ïî÷èíêè), óæå â ïåðâûå ìåñ&#255;öû ïðèîáðåëà îãðîìíóþ ïîïóë&#255;ðíîñòü ñðåäè áàíäèòîâ è ïðî÷èõ îáèòàòåëåé ìåòðî."
	eng_desc = "Heavy ballistic armor"
	icon_state = "heavyarmor"
	item_state = "heavyarmor"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 40, bullet = 70, laser = 0,burn = 30, bomb = 50, bio = 30, rad = 0, electro = 10, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 200
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/metro/banditduster
	name = "Bandits Duster"
	desc = "Ë¸ãêèé, íå îñîáî õîðîøî çàùèùàþùèé ïëàù, ñ ïàðîé ìåòàëëè÷åñêèõ ïëàò è âñòðîåííîé ðàçãðóçêîé. Òàêîé ÷àñòî èñïîëüçóþò êîíòðàáàíäèñòû."
	eng_desc = "Duster"
	icon_state = "bumcoat"
	item_state = "bumcoat"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS|HANDS
	cold_protection = CHEST|GROIN|ARMS|HANDS
	heat_protection = CHEST|GROIN|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 20, bullet = 30, laser = 0,burn = 10, bomb = 0, bio = 0, rad = 0, electro = 0, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 70
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/metro/armvestlight
	name = "Armored vest"
	desc = "Ë¸ãêèé áðîíåæèëåò, ñäåëàííûé èç ïîäðó÷íûõ ìàòåðèàëîâ. Â í¸ì âèäíååòñ&#255; ïàðà äûð."
	eng_desc = "Light armored vest"
	icon_state = "insecure"
	item_state = "insecure"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 20, bullet = 20, laser = 0,burn = 20, bomb = 20, bio = 0, rad = 0, electro = 0, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 80
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/metro/armveststandart
	name = "Millitary armored vest"
	desc = "Îáùåâîéñêîâûé, ñðåäíå-íàä¸æíûé áðîíåæèëåò. Îäèí èç òåõ íåìíîãèõ ýêçåìïë&#255;, ÷òî óöåëåëè ïîñëå &#255;äåðíûõ óäàðîâ. Ðàðèòåò, èìååò âñòðîåííóþ ðàçãðóçêó. Ñäåëàí èç äîñòàòî÷íî õîðîøî ãîð&#255;ùåãî ìàòåðèàëà."
	eng_desc = "Millitary armored vest"
	icon_state = "opvest"
	item_state = "opvest"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 40, bullet = 60, laser = 0,burn = 0, bomb = 50, bio = 0, rad = 0, electro = 0, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 180
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/metro/armvestmedium
	name = "Armored vest"
	desc = "Ñðåäíèé áðîíåæèëåò, ñäåëàííûé èç ïîäðó÷íûõ ìàòåðèàëîâ. Âûãë&#255;äèò äîñòàòî÷íî íàä¸æíî."
	eng_desc = "Armored vest"
	icon_state = "bulletproofvest"
	item_state = "bulletproofvest"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	heat_protection = CHEST|GROIN|ARMS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 30, bullet = 40, laser = 0,burn = 20, bomb = 30, bio = 0, rad = 0, electro = 0, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 150
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/metro/puffer
	name = "Grey jacket"
	desc = "Äîâîåííàÿ, ê óäèâëåíèþ õîðîøî ñîõðàíèâøàÿñÿ êóðòêà. Îò ïóëü íå çàùèòèò, äà è íå îò ÷åãî äðóãîãî. Íî çàòî â íåé òåïëî."
	eng_desc = "Puffer."
	icon_state = "butler"
	item_state = "butler"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	heat_protection = CHEST|GROIN|ARMS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 10, bullet = 5, laser = 0,burn = 20, bomb = 0, bio = 0, rad = 0, electro = 0, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 60
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/metro/armyvest
	name = "6B3"
	desc = "Îòå÷åñòâåííûé áðîíåæèëåò, ïðèëåòåâøèé ê íàì ïð&#255;ìèêîì èç ïåðèîäà Àôãàíñêîé âîéíû. Ê óäèâëåíèþ - äîñòàòî÷íî õîðîøî ñîõðàíèëñ&#255;. È îáåñïå÷èâàåò íåïëîõóþ çàùèòó áîëüøåé ÷àñòè òåëà. Áûñòðî èçíàøèâàåòñ&#255;."
	eng_desc = "Russian armored vest"
	icon_state = "6b3"
	item_state = "6b3"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS
	cold_protection = CHEST|GROIN|LEGS
	heat_protection = CHEST|GROIN|LEGS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 40, bullet = 80, laser = 0,burn = 20, bomb = 50, bio = 0, rad = 0, electro = 0, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 100
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/metro/heavycustomarmor
	name = "Heavy Armor"
	desc = "Êîìïëåêò òÿæ¸ëîé áðîíè, ñäåëàííîé èç ïîäðó÷íûõ ìàòåðèàëîâ. ×óòü áîëåå ïðîñòîðíà è ìàí¸âðåíà â ñðàâíåíèè ñ òîé æå áàíäèòñêîé, îäíàêî è çàùèùàåò íåñêîëüêî õóæå."
	eng_desc = "Heavy custom-made armor"
	icon_state = "mercwebvest"
	item_state = "mercwebvest"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 40, bullet = 80, laser = 0,burn = 20, bomb = 50, bio = 10, rad = 0, electro = 0, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 160
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/metro/labcoat
	name = "Blue labcoat"
	desc = "Ïîòð¸ïàííûé ëàáîðàòîðíûé õàëàò. Ñëàáî çàùèùàåò îò õèìè÷åñêîãî óðîíà. Äðóãèõ îñîáåííîñòåé, ïîìèìî êëàññíîãî âèäà, óâû - íå èìååò."
	eng_desc = "Old doctors labcoat."
	icon_state = "medlabcoat"
	item_state = "medlabcoat"
	togglename = "buttons"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	heat_protection = CHEST|GROIN|ARMS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	//flags_inv = HIDEJUMPSUIT
	armor = list(melee = 10, bullet = 0, laser = 0,burn = 30, bomb = 0, bio = 40, rad = 30, electro = 0, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 60
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/sealed/radsuit
	name = "Bio-suit"
	desc = "Ñòàðûé ïðîòèâî-ðàäèàöèîííûé êîñòþì, íå èìåþùèé êàêîé-òî ñâåðõúåñòåñòâåííîé çàùèòû îò ïóëü, íî õîðîøî ñïàñàþùèé îò ðàäèàöèè."
	eng_desc = "Old rad-suit."
	icon_state = "bio_custom"
	item_state = "bio_custom"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
//	flags_inv = HIDEJUMPSUIT
	hoodtype = /obj/item/clothing/head/winterhood/metro/sealed/bio
	armor = list(melee = 10, bullet = 10, laser = 0, burn = 90, bomb = 10, bio = 90, rad = 100, electro = 50, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 80
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/metro/sealed/bio
	name = "Bio-helmet"
	armor = list(melee = 10, bullet = 10, laser = 0, burn = 90, bomb = 10, bio = 90, rad = 100, electro = 50, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR
	icon_state = "bio_helmet"

/obj/item/clothing/suit/hooded/sealed/radsuit/upgraded
	name = "Upgraded bio-suit"
	desc = "Ìîäèôèöèðîâàííûé çàùèòíûé êîñòþì, ñîçäàííûé ñïåöèàëüíî äë&#255; ðàáîòû â óñëîâè&#255;õ ïîâûøåííîãî ðàäèàöèîííîãî ôîíà. Íåñêîëüêî ìåòàëëè÷åñêèõ ïëèò, óñòàíîâëåííûõ ìàñòåðàìè Êóçíåöêîé - íå òîëüêî îòðàæàþò íåêîòîðå âíåøíåå èçëó÷åíèå, íî è íåïëîõî çàùèùàþò îò ëþáîãî âèäà êèíåòè÷åñêîãî óðîíà."
	eng_desc = "Upgraded rad-suit."
	icon_state = "bombsuit_custom"
	item_state = "bombsuit_custom"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags = STOPSPRESSUREDMAGE | THICKMATERIAL
//	flags_inv = HIDEJUMPSUIT
	hoodtype = /obj/item/clothing/head/winterhood/metro/sealed/bomb
	armor = list(melee = 40, bullet = 40, laser = 0, burn = 90, bomb = 30, bio = 95, rad = 100, electro = 50, psy = 0)
	allowed = list(/obj/item/weapon/gun/projectile,/obj/item/weapon/gun/projectile/shotgun/automatic/combat,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/weapon/restraints/handcuffs,/obj/item/device/flashlight/seclite,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/lighter,/obj/item/weapon/kitchen/knife/tourist)
	durability = 120
	//ÌÎÄÈÔÈÊÀÖÈÈ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/winterhood/metro/sealed/bomb
	name = "Bombsuit-helmet"
	armor = list(melee = 40, bullet = 40, laser = 0, burn = 90, bomb = 30, bio = 95, rad = 100, electro = 50, psy = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_HELM_MAX_TEMP_PROTECT
	flags = NODROP|BLOCKHAIR|BLOCKFACIALHAIR
	icon_state = "bombsuit_helmet"
