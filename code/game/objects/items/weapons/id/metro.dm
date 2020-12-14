/obj/item/weapon/card/id/metro
	name = "civilian identification card"
	desc = "Карто-подобный паспорт, используемый в метро практически повсеместно. На нём также виднеетс&#255; пункт с местом прописки. По всей видимости - это гражданский с одной из независимых станций."
	icon = 'icons/stalker/lohweb/items.dmi'
	icon_state = "documents"
	item_state = "card-id"
	registered_name = "Civilian"
	slot_flags = SLOT_ID
	assignment = "Civilian"

/obj/item/weapon/card/id/metro/trc
	name = "TRC identification card"
	desc = "Карто-подобный паспорт, используемый в метро практически повсеместно. На нём также виднеетс&#255; пункт с местом прописки. Если судить по нему, то его владелец прописан на одной из станций Коалиции Радом."
	icon = 'icons/stalker/lohweb/items.dmi'
	icon_state = "pdocuments"
	item_state = "card-id"
	registered_name = "TRC dweller"
	slot_flags = SLOT_ID
	assignment = "TRC dweller"

/obj/item/weapon/card/id/metro/stalker
	name = "stalkers dogtag"
	desc = "Маленький металлический жетон. Такие обычно нос&#255;т сталкеры и проводники."
	icon = 'icons/Unsorted/mistakes (1).dmi'
	icon_state = "dogtag"
	item_state = "card-id"
	registered_name = "Stalker"
	slot_flags = SLOT_ID
	assignment = "Stalker"

/obj/item/weapon/card/id/metro/trc_key
	name = "key"
	desc = "Маленький ключик."
	icon = 'icons/stalker/some_stuff/items.dmi'
	icon_state = "key1"
	item_state = "card-id"
	registered_name = null
	slot_flags = SLOT_ID
	assignment = null
	access = list(access_security)

/obj/item/weapon/card/id/metro/bandosi_key
	name = "key"
	desc = "Маленький ключик."
	icon = 'icons/stalker/some_stuff/items.dmi'
	icon_state = "key2"
	item_state = "card-id"
	registered_name = null
	slot_flags = SLOT_ID
	assignment = null
	access = list(access_emergency_storage)

