/obj/machinery/door/airlock/stalker
	icon = 'icons/obj/doors/door_sidor.dmi'
	overlays_file = 'icons/obj/doors/door_sidor.dmi'
	autoclose = 0

/obj/machinery/door/airlock/stalker/New()
	..()

/obj/machinery/door/airlock/do_animate(animation)
	switch(animation)
//		if("opening")
//			update_icon(AIRLOCK_OPENING)
//		if("closing")
//			update_icon(AIRLOCK_CLOSING)
		if("deny")
			update_icon(AIRLOCK_DENY)
			sleep(6)
			update_icon(AIRLOCK_CLOSED)
			icon_state = "closed"

/obj/machinery/door/airlock/stalker/sidor
	name = "door"
	icon_state = "closed"

/obj/machinery/door/poddoor/sidor
	name = "door"
	desc = "A heavy duty blast door that opens mechanically."
	icon = 'icons/obj/doors/door_sidor.dmi'
	icon_state = "closed"
	id = null
	auto_close = 0 // Time in seconds to automatically close when opened, 0 if it doesn't

/obj/machinery/door/poddoor/metro/woodd
	name = "door"
	desc = "Door with primitive access panel. That opens mechanically."
	icon = 'icons/stalker/some_stuff/wooddoor.dmi'
	icon_state = "door1"
	id = null
	auto_close = 0

/obj/machinery/door/poddoor/metro/prison
	name = "door"
	desc = "Door with primitive access panel. That opens mechanically."
	icon = 'icons/stalker/lohweb/door_prison.dmi'
	icon_state = "door1"
	opacity = 0
	id = null
	auto_close = 0

/obj/machinery/door/poddoor/metro/woodglass
	name = "door"
	desc = "Door with primitive access panel. That opens mechanically."
	icon = 'icons/stalker/some_stuff/key_door.dmi'
	icon_state = "door1"
	opacity = 0
	id = null
	auto_close = 0

/obj/machinery/door/poddoor/metro
	name = "door"
	desc = "Door with primitive access panel. That opens mechanically."
	icon = 'icons/stalker/lohweb/door_cave.dmi'
	icon_state = "door1"
	id = null
	auto_close = 0

/obj/machinery/door/poddoor/sidor/skadovsk
	icon = 'icons/obj/doors/door_sidor2.dmi'
	icon_state = "closed"

/obj/machinery/door/poddoor/sidor/skadovsk/special
	icon = 'icons/obj/doors/door_sidor2.dmi'
	icon_state = "closed"
	auto_close = 50