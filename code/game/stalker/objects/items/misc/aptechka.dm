/obj/item/weapon/reagent_containers/pill/stalker
	icon = 'icons/stalker/items.dmi'
	w_class = 2
	possible_transfer_amounts = list()
	volume = 60
	apply_type = PATCH
	apply_method = "apply"

/obj/item/weapon/reagent_containers/pill/stalker/aptechka
	name = "kit"
	desc = "Стара&#255; советска&#255; аптечка."

obj/item/weapon/reagent_containers/pill/stalker/afterattack(obj/target, mob/user , proximity)
	return // thanks inheritance again

obj/item/weapon/reagent_containers/pill/stalker/canconsume(mob/eater, mob/user)
	if(!iscarbon(eater))
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

/obj/item/weapon/reagent_containers/pill/stalker/injector
	name = "Injector"
	icon = 'icons/stalker/some_stuff/syringe.dmi'
	icon_state = "sj1"
	desc = "Наиболее распространённый в метро тип стимул&#255;торов. Легко поднимает человека на ноги, выводит из тела различного рода хим-&#255;ды(не касаетс&#255; радиоактивного излучени&#255;). В отличии от продвинутых версий не повышает свёртываемость крови, и никак не восстанавливает повреждени&#255; телесных покровов. Категорически запрещаетс&#255; примен&#255;ть более двух за раз. Минимальный промежуток времени между применени&#255;ми - 5 минут и более."
	eng_desc = "Small-effective combat stimulant. 15 units in one injector."
	item_state = "sj1"
	var/wrapped = 1
	list_reagents = list("cryoxadone" = 14)
	var/icon_state_opened = "sj1_open"
	var/desc_opened = "Открытый инжектор."

/obj/item/weapon/reagent_containers/pill/stalker/injector/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)
	else
		..()

/obj/item/weapon/reagent_containers/pill/stalker/injector/proc/Unwrap(mob/user)
	icon_state = icon_state_opened
	desc = desc_opened
	if(user.client && (user.client.prefs.chat_toggles & CHAT_LANGUAGE))
		user << "<span class='notice'>You open the package.</span>"
	else
		user << "<span class='notice'>Вы снимаете крышку.</span>"
	wrapped = 0

/obj/item/weapon/reagent_containers/pill/stalker/injector/sj1
	name = "SJ1"
	icon = 'icons/stalker/some_stuff/syringe.dmi'
	icon_state = "sj1"
	desc = "Наиболее распространённый в метро тип стимул&#255;торов. Легко поднимает человека на ноги, выводит из тела различного рода хим-&#255;ды(не касаетс&#255; радиоактивного излучени&#255;). В отличии от продвинутых версий не повышает свёртываемость крови, и никак не восстанавливает повреждени&#255; телесных покровов. Категорически запрещаетс&#255; примен&#255;ть более двух за раз. Минимальный промежуток времени между применени&#255;ми - 5 минут и более."
	eng_desc = "Small-effective combat stimulant. 15 units in one injector."
	item_state = "sj1"
	list_reagents = list("cryoxadone" = 14)
	icon_state_opened = "sj1_open"
	desc_opened = "Открытый инжектор."

/obj/item/weapon/reagent_containers/pill/stalker/injector/etg_c
	name = "eTG-c"
	icon = 'icons/stalker/some_stuff/syringe.dmi'
	icon_state = "etgc"
	desc = "Очень мощный боевой стимул&#255;тор, изобретённый буквально за год до начала войны дл&#255; использовани&#255; на фронте. Медленно восстанавливает все повреждени&#255; тканей, органов. Останавливает кровотечение и частично выводит из организма радионуклиды."
	eng_desc = "Really-effective combat stimulant."
	item_state = "etgc"
	list_reagents = list("cryoxadoneb" = 6)
	icon_state_opened = "etgc_open"
	desc_opened = "Открытый инжектор."

/obj/item/weapon/reagent_containers/pill/stalker/injector/sj6
	name = "SJ6"
	icon = 'icons/stalker/some_stuff/syringe.dmi'
	icon_state = "sj6"
	desc = "Прорывной образец боевых стимул&#255;торов, так и не получивший широкого распространени&#255; по пон&#255;тным причинам. Состоит из крайне сильных регенеративных веществ, помешанных с не менее сильными обезболивающими и вывод&#255;щими из организма &#255;ды химикатами. Крайне редкое и дорогое удовольствие."
	eng_desc = "Really-effective combat stimulant."
	item_state = "sj6"
	list_reagents = list("cryoxadoney" = 6)
	icon_state_opened = "sj6_open"
	desc_opened = "Открытый инжектор."

/obj/item/weapon/reagent_containers/pill/stalker/morphine_plus
	name = "morphine (+)"
	icon = 'icons/Unsorted/Pack11.dmi'
	icon_state = "14"
	desc = "Экспериментальна&#255; помесь двух мощных обезболивающих в одной пилюле. Дл&#255; должного эффекта - советуетс&#255; примен&#255;ть всю пластинку разом."
	eng_desc = "Experimental reagent."
	item_state = "pillpain"
	list_reagents = list("cryoxadone" = 8)

