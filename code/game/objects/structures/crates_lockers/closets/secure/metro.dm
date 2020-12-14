/obj/structure/closet/secure_closet/metro/trc
	name = "closet"
	desc = "Железный шкафчик с айди-локом. Дл&#255; открыти&#255; потребуетс&#255; син&#255;&#255; карта доступа."
	req_access = list(access_security)
	icon = 'icons/stalker/lohweb/closet.dmi'
	icon_state = "trc"
	burn_state = FLAMMABLE
	burntime = 20
	var/deconstructable = 0

/obj/structure/closet/secure_closet/metro/bandosi
	name = "closet"
	desc = "Железный шкафчик с айди-локом. Дл&#255; открыти&#255; потребуетс&#255; жёлта&#255; карта доступа."
	req_access = list(access_emergency_storage)
	icon = 'icons/stalker/lohweb/closet.dmi'
	icon_state = "bandits"
	burn_state = FLAMMABLE
	burntime = 20
	var/deconstructable = 0

/obj/structure/closet/crate/secure/metro/trc
	icon = 'icons/stalker/lohweb/storage.dmi'
	name = "crate"
	desc = "Обычный железный &#255;щик."
	icon_crate = "trc"
	icon_state = "trc"
	req_access = list(access_security)
	redlight = null
	greenlight = null
	sparks = null
	emag = null

/obj/structure/closet/crate/secure/metro/bandosi
	icon = 'icons/stalker/lohweb/storage.dmi'
	name = "crate"
	desc = "Обычный железный &#255;щик."
	icon_crate = "bandosi"
	icon_state = "bandosi"
	req_access = list(access_emergency_storage)
	redlight = null
	greenlight = null
	sparks = null
	emag = null