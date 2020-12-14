/obj/item/weapon/gun/projectile/revolver
	modifications = list("barrel_shotgun" = 0, "frame_shotgun" = 0, "grip_shotgun" = 0)

/obj/item/weapon/gun/projectile/revolver/bm16  // Горизонталка
	name = "BM-16"
	desc = "Охотничье ружьё - горизонталка. Довольно мощное, в самый раз дл&#255; охоты."
	eng_desc = "The original Bm16 rifle. Heavy and dangerous two barrel rifle, and its effective in high range too."
	icon_state = "bm16"
	item_state = "bm16"
	w_class = 4
	force = 15
	flags = CONDUCT
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/stalker/bm16
	recoil = 1
	durability = 150
	sawn_desc = "Значительно компактней и легче новой двустволки, но эффективен только в ближнем бою. Один из самых распространённых видов оружи&#255; у новичков."
	randomspread = 0
	spread = 12
	damagelose = 0.3
	distro = 25
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'sound/stalker/weapons/bm16_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/obrez_load.ogg'
	opensound = 'sound/stalker/weapons/unload/obrez_open.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/revolver/bm16/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/ammo_box) || istype(A, /obj/item/ammo_casing))
		//playsound(user, loadsound, 50, 1)
		chamber_round()
	if(istype(A, /obj/item/weapon/melee/energy))
		var/obj/item/weapon/melee/energy/W = A
		if(W.active)
			sawoff(user)
	if(istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/gun/energy/plasmacutter))
		sawoff(user)

/obj/item/weapon/gun/projectile/revolver/bm16/attack_self(mob/living/user)
	var/num_unloaded = 0
	while (get_ammo() > 0)
		var/obj/item/ammo_casing/CB
		CB = magazine.get_round(0)
		chambered = null
		CB.loc = get_turf(src.loc)
		CB.update_icon()
		num_unloaded++
	if (num_unloaded)
		playsound(user, opensound, 50, 1)
		user << "<span class='notice'>You break open \the [src] and unload [num_unloaded] shell\s.</span>"
	else
		user << "<span class='warning'>[src] is empty!</span>"

/obj/item/weapon/gun/projectile/revolver/bm16/toz34  //  Вертикалка
	name = "TOZ-34"
	desc = "Внутрикурковое двуствольное охотничье ружье с вертикально расположенными стволами. Широко распространённое и ничем особо не примечательное охотничье ружьё - 'вертикалка'."
	eng_desc = "This extremely common over-and-under hunting shotgun can offer better protection against mutants than a pistol, thanks to its accuracy and stopping power. Used mostly by rookies on the outskirts of the Zone."
	icon_state = "toz34"
	item_state = "toz34"
	recoil = 0.6
	force = 15
	durability = 150
	spread = 6
	damagelose = 0.15
	distro = 10
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM

/obj/item/weapon/gun/projectile/shotgun
	modifications = list("barrel_shotgun" = 0, "frame_shotgun" = 0, "grip_shotgun" = 0)

/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff
	name = "sawed-off BM-16"
	desc = "Значительно компактней и легче новой двустволки, но эффективен только в ближнем бою. Один из самых распространённых видов оружи&#255; у новичков."
	eng_desc = "A sawed-off hunting shotgun with two side-by-side barrels, making it lighter and more compact than a full shotgun. One of the most popular weapons among bandits due to its combination of ease of concealment and extreme effectiveness in close combat."
	sawn_state = SAWN_OFF
	weapon_weight = WEAPON_LIGHT
	item_state = "gun"
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = 3
	durability = 75
	force = 15
	spread = 20
	recoil = 2.5
	damagelose = 0.45
	distro = 35

/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff/New()
	..()
	update_icon()

///////////////////////////// Винтовки //////////////////////////////////////////

/obj/item/weapon/gun/projectile/shotgun/boltaction/enfield
	name = "Lee Enfield"
	desc = ""
	eng_desc = ""
	icon_state = "enfield"
	item_state = "enfield"
	durability = 200
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/enfield
	recoil = 1
	w_class = 4
	randomspread = 0
	spread = 3
	force = 15
	damagelose = 0.1
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'sound/stalker/weapons/enfield_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/bolt_load.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'
	can_scope = 1

/obj/item/weapon/gun/projectile/revolver/metro/douplet
	name = "Doublet"
	desc = "Собранный местными 'мастерами' двухствольный дробовик. Наименован таким словом как 'Дуплет'."
	eng_desc = "Makeshift doublebarrel shotgun, named 'Doublet'."
	icon_state = "duplet"
	item_state = "duplet"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/stalker/bm16
	fire_sound = 'sound/stalker/weapons/spsa_shot.ogg'
	weapon_weight = WEAPON_LIGHT
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = 3
	durability = 140
	force = 15
	spread = 10
	recoil = 1.0
	damagelose = 0.20
	distro = 35
	loadsound = 'sound/stalker/weapons/load/obrez_load.ogg'
	opensound = 'sound/stalker/weapons/unload/obrez_open.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/revolver/metro/douplet/New()
	..()
	update_icon()

/obj/item/weapon/gun/projectile/revolver/metro/ashot
	name = "Ashot"
	desc = "Несмотр&#255; на примитивность конструкции, этот массово производ&#255;щийс&#255; в Метро картечный пистолет &#255;вл&#255;етс&#255; мощным и надёжным оружием ближнего бо&#255;."
	eng_desc = "Makeshift onelebarrel shotgun, named 'Ashot'. Very effective in small distance."
	icon_state = "ashot"
	item_state = "ashot"
	fire_sound = 'sound/stalker/weapons/spsa_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/shot/metro/ashot
	weapon_weight = WEAPON_LIGHT
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = 2
	durability = 80
	force = 15
	spread = 12
	recoil = 2.0
	damagelose = 0.45
	distro = 35
	loadsound = 'sound/stalker/weapons/load/obrez_load.ogg'
	opensound = 'sound/stalker/weapons/unload/obrez_open.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/revolver/metro/ashot/New()
	..()
	update_icon()

/obj/item/weapon/gun/projectile/revolver/metro/ashotdouble
	name = "Ashot"
	desc = "Несмотр&#255; на примитивность конструкции, этот массово производ&#255;щийс&#255; в Метро картечный пистолет &#255;вл&#255;етс&#255; мощным и надёжным оружием ближнего бо&#255;."
	eng_desc = "Makeshift onelebarrel shotgun, named 'Ashot'. Very effective in small distance."
	icon_state = "ashotdouble"
	item_state = "ashot"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/metro/ashotdouble
	fire_sound = 'sound/stalker/weapons/spsa_shot.ogg'
	weapon_weight = WEAPON_LIGHT
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = 3
	burst_size = 2
	durability = 80
	force = 15
	spread = 15
	recoil = 2.5
	damagelose = 0.45
	distro = 35
	loadsound = 'sound/stalker/weapons/load/obrez_load.ogg'
	opensound = 'sound/stalker/weapons/unload/obrez_open.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/revolver/metro/ashotdouble/New()
	..()
	update_icon()