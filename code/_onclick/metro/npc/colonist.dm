
/mob/living/simple_animal/npc/civilian
	name = "Civilian"
	desc = "Òèïè÷íûé æèòåëü ïîäçåìêè."
	icon = 'code/_onclick/metro/npc.dmi'
	icon_state = "caucasian2_m_s"
	emote_hear = list("coughs","sneezes","sniffs","clears their throat","whistles tunelessly","sighs deeply","yawns","gasps loudly")
	emote_see = list("shifts from side to side.","scratches their arm.","examines their nails.","stares at at the ground aimlessly.","looks bored.","places their hands in their pockets.","stares at you with a blank expression.")
	speak = list("Have you heard the latest news from Earth?",\
		"I'd love to visit Reach one day.",\
		"Do the UNSC really care about us? I haven't see them in years!",\
		"Did you hear the Insurrection are stealing UNSC ships? they've already stolen two so far!",\
		"If you ever want to visit a frontier world, check out the Draetheus V colony.",\
		"I hope the weather improves.",\
		"I hope this war ends soon",\
		"If I were you I'd leave this place before you end up dead.",\
		"The 111 Tauri System isn't like the inner colonies or Earth, we play by other rules out here!",\
		"Who knows the UEG might bless us with less taxes and more biofoam!",\
		"Oof.",\
		"I swear I hate KS7 nothing but snow and rocks, Geminus is a way better colony!",\
		"Sometimes the UNSC can be full of madlads.",\
		"Sometimes I think the Insurrection can do good for us outer colonist!",\
		"I swear that gun smuggler has the most awful prices",\
		"Will the UEG ever let KS7 rejoin them?",\
		"I really need a drink right now.",\
		"Anyone here got a smoke?",\
		"Just great I lost my credits!",\
		"I could care less about UNSC or Insurrection, I just want to fish!",\
		"Born to fish, forced to work.",\
		"I use to be a UNSC marine like you,then I took an bullet to the knee",\
		"I can't believe they took the kids after leaving me.",\
		"I met this guy named Blackburn and we hit it off, I hope he calls me back because I have some news to tell him.",\
		"The price of these UEG taxes is insane right now.",\
		"Did you hear about the colonies going dark?",\
		"Nah, that's all just propaganda about the colonies going dark.",\
		"Theres nothing like coffee in the morning, let me tell you,that stuff brings you back from the dead.",\
		"Did you hear about that ODST that murdered those civilians on the CCV Deliverance medical ship? I heard they're still on the run hiding in Geminus",\
		"Still can't believe it's been five years since Far Isle got nuked.",\
		"Have you heard the plans for the spaceport upgrade?",\
		"You heard the plans for the spaceport upgrade?",\
		"Let me tell you, Martian made means low quality knockoffs.",\
		"Hey did you hear that rumour of those big green walking tanks?",\
		"Bleh, this sucks, why does nothing interesting ever happen to this colony?",\
		"Been seeing a lot more traffic in these parts, I wonder why?",\
		"I use to be a soldier like you, then I took a landmine to the knee.",\
		"Use to live on Far Isle, still don’t know what happened to that place... wiped from existence.",\
		"Have you seen those uh... Helljumpers? In that sleek black armor? Man I wanna be one of them some day.",\
		"Hey, did you hear they reopened recruitment for the Hellbringers? I wonder what that’s all about.",\
		"Feels good to live on a free planet!",\
		"Went hunting last week, found me one of those ice-boar things, they may smell terrible but they taste pretty good!",\
		"Have you ever been to space? Sometimes I long for my chance.",\
		"Crayons actually taste pretty nice.",\
		"I heard Earth it quite beautiful this time of year. Maybe I’ll visit it one day.",\
		"Tried my hand at the International War Photography Prize last year, came in last place.",\
		"I have relatives on Harvest. I should really go visit them because I haven't heard from them for awhile.")
	speak_chance = 5
	jumpsuits = list(\
		/obj/item/clothing/under/metro/civilian_fatigues,\
		/obj/item/clothing/under/metro/civilian_fatigues2,\
		/obj/item/clothing/under/metro/civilian_fatigues3,\
		/obj/item/clothing/under/metro/civilian_fatigues4\
		)
	shoes = list(\
		/obj/item/clothing/shoes/sneakers/black,\
		/obj/item/clothing/shoes/sneakers/brown,\
		/obj/item/clothing/shoes/sneakers/white,\
		/obj/item/clothing/shoes/sneakers/red,\
		/obj/item/clothing/shoes/sneakers/orange,\
		/obj/item/clothing/shoes/sneakers/yellow,\
		/obj/item/clothing/shoes/sneakers/purple,\
		/obj/item/clothing/shoes/sneakers/green,\
		/obj/item/clothing/shoes/sneakers/blue,\
		/obj/item/clothing/shoes/combat,\
		/obj/item/clothing/shoes/jackboots\
		)
	hats = list(\
		/obj/item/clothing/head/beret,\
		/obj/item/clothing/head/flatcap,\
		/obj/item/clothing/head/ushanka,\
		/obj/item/clothing/head/soft/black,\
		/obj/item/clothing/head/soft/grey,\
		/obj/item/clothing/head/gopcap,\
		/obj/item/clothing/head/det_hat\
		)
	gloves = list(\
		/obj/item/clothing/gloves/fingerless,\
		/obj/item/clothing/gloves/combat\
	)
	suits = list(\
		/obj/item/clothing/suit/metro/puffer,\
		/obj/item/clothing/suit/metro/banditduster,\
		/obj/item/clothing/suit/metro/armvestlight,\
		/obj/item/clothing/suit/apron,\
		/obj/item/clothing/suit/apron/overalls,\
		/obj/item/clothing/suit/metro/armvestmedium\
	)
	glasses = list(/obj/item/clothing/glasses/regular,/obj/item/clothing/glasses/regular/hipster)
	glasses_chance = 20