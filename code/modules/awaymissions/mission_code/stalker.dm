/area/stalker
	icon = 'icons/stalker/areas.dmi'
	name = "Strange Location"
	icon_state = "away"
	has_gravity = 1

/area/stalker/blowout
	requires_power = 1

/area/stalker/blowout/outdoor
	name = "Outdoor"
	icon = 'icons/stalker/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"
	requires_power = 1
	luminosity = 1
	open_space = TRUE
	dynamic_lighting = DYNAMIC_LIGHTING_ENABLED
	ambient_environment = list('sound/stalker/ambience/rnd_outdoor/rnd_bird_1.ogg','sound/stalker/ambience/rnd_outdoor/rnd_bird_2.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_bird_3.ogg','sound/stalker/ambience/rnd_outdoor/rnd_bird_4.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_bird_5.ogg','sound/stalker/ambience/rnd_outdoor/rnd_bird_6.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_bird_7.ogg','sound/stalker/ambience/rnd_outdoor/rnd_bird_8.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_bird_9.ogg','sound/stalker/ambience/rnd_outdoor/rnd_bird_10.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_bird_11.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_dog1.ogg','sound/stalker/ambience/rnd_outdoor/rnd_dog2.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_dog3.ogg','sound/stalker/ambience/rnd_outdoor/rnd_dog4.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_dog5.ogg','sound/stalker/ambience/rnd_outdoor/rnd_dog6.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_dog7.ogg','sound/stalker/ambience/rnd_outdoor/rnd_dog8.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_dog9.ogg','sound/stalker/ambience/rnd_outdoor/rnd_dog10.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_crow_1.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_2.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_crow_3.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_4.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_crow_5.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_6.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_crow_7.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_8.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_crow_9.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_10.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_crow_11.ogg','sound/stalker/ambience/rnd_outdoor/rnd_crow_12.ogg',
					'sound/stalker/ambience/rnd_outdoor/ambient_wind_1.ogg','sound/stalker/ambience/rnd_outdoor/ambient_wind_2.ogg',
					'sound/stalker/ambience/rnd_outdoor/ambient_wind_3.ogg','sound/stalker/ambience/rnd_outdoor/ambient_wind_4.ogg',
					'sound/stalker/ambience/rnd_outdoor/rnd_insect_8.ogg',
					)
	ambient_environment_night = list('sound/stalker/ambience/rnd_outdoor_night/rnd_moan.ogg','sound/stalker/ambience/rnd_outdoor_night/rnd_moan2.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/rnd_moan3.ogg','sound/stalker/ambience/rnd_outdoor_night/rnd_moan4.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/rnd_moan5.ogg','sound/stalker/ambience/rnd_outdoor_night/rnd_moan6.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/ambient_night_1.ogg','sound/stalker/ambience/rnd_outdoor_night/ambient_night_2.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/ambient_night_3.ogg','sound/stalker/ambience/rnd_outdoor_night/ambient_night_4.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/ambient_night_5.ogg','sound/stalker/ambience/rnd_outdoor_night/ambient_night_6.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/ambient_night_7.ogg','sound/stalker/ambience/rnd_outdoor_night/ambient_night_8.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/ambient_night_9.ogg','sound/stalker/ambience/rnd_outdoor_night/ambient_night_10.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_01.ogg','sound/stalker/ambience/rnd_outdoor_night/wolf_howl_02.ogg',
					'sound/stalker/ambience/rnd_outdoor_night/wolf_howl_03.ogg','sound/stalker/ambience/rnd_outdoor_night/wolf_howl_04.ogg',
					)
	ambient_environment_cooldown = 420
	ambient_background = list(null, null,'sound/stalker/ambience/rnd_outdoor_night/zat_bkg_tuman.ogg', 'sound/stalker/ambience/rnd_outdoor_night/ambient_night_11.ogg', null) // 'sound/stalker/ambience/rnd_outdoor/rnd_insect_5.ogg' - evening
	ambient_background_cooldown = list(null, null, 220, 420, null) //280 - evening
	environment = 15

/area/stalker/sidor
	name = "Sidorovich Basement"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "sidor"
	requires_power = 1
	ambient_music = list()
	ambient_background = list('sound/stalker/ambience/sidor_music2.ogg', 'sound/stalker/ambience/sidor_music2.ogg', 'sound/stalker/ambience/sidor_music2.ogg', 'sound/stalker/ambience/sidor_music2.ogg')//list('sound/stalker/ambience/sidor_music.ogg','sound/stalker/ambience/sidor_music2.ogg')
	ambient_background_cooldown = list(700, 700, 700, 700)
	environment = 5
	safezone = 1

/area/stalker/blowout/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings_blowout.dmi'
	icon_state = "buildings"
	requires_power = 1
	environment = 2

/area/stalker/buildings
	name = "Buildings"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "buildings"
	requires_power = 1
	environment = 5

/area/stalker/adminspace
	name = "Admin Space"
	icon = 'icons/stalker/areas_buildings.dmi'
	icon_state = "admin_space"
	requires_power = 1

///////////////////////Ã≈“–Œ////////////////////////////////////////////////////////////////////////////////////////////////////////////

/area/stalker/buildings/metro
	name = "Metro - Buildings \[NB\]"
	icon_state = "buildings"
	environment = 2

/area/stalker/blowout/buildings/metro
	name = "Metro - Stations"
	icon_state = "buildings"
	environment = 2

/area/stalker/blowout/outdoor/metro
	name = "Metro - Outdoor \[O\]"
	icon_state = "outdoor"
	environment = 19

////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ - —“¿Õ÷»ﬂ Õ¿«≈ÃÕŒ-ÃŒ–— Œ… Œ¡Œ–ŒÕ€///////////////////////
/area/stalker/buildings/metro/station1
	name = "Metro - Ground Defence Station \[NB\]"
	icon_state = "substation"
	environment = 5

/area/stalker/blowout/buildings/metro/station1
	name = "Backwater - Ground Defence Station"
	icon_state = "substation"

/area/stalker/blowout/outdoor/metro/station1
	name = "Backwater - Ground Defence Station \[O\]"
	icon_state = "substation"
////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ - œ–Œ’ŒƒÕ¿ﬂ/////////////////////////
/area/stalker/buildings/metro/station2
	name = "Metro - Checkpoint \[NB\]"
	icon_state = "skadovsk"
	environment = 0
	ambient_music = list()

/area/stalker/buildings/backwater/skadovsk_respawn
	name = "Backwater - Skadovsk (2nd floor) \[NB\]"
	icon_state = "skadovsk"
	environment = 0
	ambient_music = list()

/area/stalker/blowout/buildings/metro/station2
	name = "Metro - Checkpoint"
	icon_state = "skadovsk"
	environment = 0
	ambient_music = list()

/area/stalker/blowout/outdoor/metro/station2
	name = "Metro - Checkpoint \[O\]"
	icon_state = "skadovsk"
	environment = 19

/area/stalker/buildings/metro/station2/bar
	name = "Metro - Checkpoint Bar\[NB\]"
	icon_state = "skadovsk"
	environment = 0
	ambient_music = list()

////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ - —Œ¬≈“— ¿ﬂ/////////////////////////
/area/stalker/buildings/metro/station3
	name = "Metro - Soviet station \[NB\]"
	icon_state = "shevchenko"
	environment = 2

/area/stalker/blowout/buildings/metro/station3
	name = "Metro - Soviet station"
	icon_state = "shevchenko"
	environment = 2

/area/stalker/blowout/outdoor/metro/station3
	name = "Metro - Soviet station \[O\]"
	icon_state = "shevchenko"
////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ - œÀŒŸ¿ƒ‹ œŒ¡≈ƒ€//////////////////
/area/stalker/buildings/metro/station4
	name = "Metro - Victory square \[NB\]"
	icon_state = "burntfarm"

/area/stalker/blowout/buildings/metro/station4
	name = "Backwater - Victory square"
	icon_state = "burntfarm"

/area/stalker/blowout/outdoor/metro/station4
	name = "Backwater - Victory square \[O\]"
	icon_state = "burntfarm"

/area/stalker/buildings/metro/station4/bar
	name = "Metro - Victory square Bar\[NB\]"
	icon_state = "burntfarm"
////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ - œ–Œ—œ≈ “ Ã»–¿///////////////////
/area/stalker/buildings/metro/station6
	name = "Metro - Peace Avenue \[NB\]"
	icon_state = "ironforest"
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/metro/station6
	name = "Metro - Peace Avenue"
	icon_state = "ironforest"

/area/stalker/blowout/outdoor/metro/station6
	name = "Metro - Peace Avenue \[O\]"
	icon_state = "ironforest"
////////////////////////////////////////////////////////////////

///////////////////////«¿“ŒÕ - ¬Õ«  –”√///////////////////
/area/stalker/buildings/backwater/krug
	name = "Backwater - Krug Antenna Complex \[NB\]"
	icon_state = "krug"
	environment = 5
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/backwater/krug
	name = "Backwater - Krug Antenna Complex"
	icon_state = "krug"
	environment = 2

/area/stalker/blowout/outdoor/backwater/krug
	name = "Backwater - Krug Antenna Complex \[O\]"
	icon_state = "krug"
////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ - —“¿Õ÷»ﬂ »Ã. À≈Õ»Õ¿///////////////////
/area/stalker/buildings/metro/station5
	name = "Metro - Lenin station \[NB\]"
	icon_state = "sawmill"

/area/stalker/blowout/buildings/metro/station5
	name = "Metro - Lenin station"
	icon_state = "sawmill"

/area/stalker/blowout/outdoor/metro/station5
	name = "Metro - Lenin station \[O\]"
	icon_state = "sawmill"

/area/stalker/buildings/metro/station5/bar
	name = "Metro - Lenin station Bar\[NB\]"
	icon_state = "sawmill"
////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ -  ŒÀ‹÷≈¬¿ﬂ///////////////////
/area/stalker/buildings/metro/station7
	name = "Metro - Ring Station \[NB\]"
	icon_state = "ranger"

/area/stalker/blowout/buildings/metro/station7
	name = "Metro - Ring Station"
	icon_state = "ranger"

/area/stalker/blowout/outdoor/metro/station7
	name = "Metro - Ring Station \[O\]"
	icon_state = "ranger"

/area/stalker/buildings/metro/station7/bar
	name = "Metro - Ring Station Bar \[NB\]"
	icon_state = "ranger"
////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ -  ”«Õ≈÷ ¿ﬂ///////////////////
/area/stalker/buildings/metro/station8
	name = "Metro - Kuznetsky Station \[NB\]"
	icon_state = "waste"

/area/stalker/blowout/buildings/metro/station8
	name = "Metro - Kuznetsky Station"
	icon_state = "waste"

/area/stalker/blowout/outdoor/metro/station8
	name = "Metro - Kuznetsky Station \[O\]"
	icon_state = "waste"

////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ - “≈¿“–¿À‹Õ¿ﬂ///////////////////
/area/stalker/buildings/metro/station10
	name = "Metro - Theatrical \[NB\]"
	icon_state = "waste"

/area/stalker/blowout/buildings/metro/station10
	name = "Metro - Theatrical"
	icon_state = "waste"

/area/stalker/blowout/outdoor/metro/station10
	name = "Metro - Theatrical \[O\]"
	icon_state = "waste"

////////////////////////////////////////////////////////////////

///////////////////////Ã≈“–Œ - œﬂ“»À≈“ ¿///////////////////
/area/stalker/buildings/metro/station9
	name = "Metro - Pyatiletka \[NB\]"
	icon_state = "claw"

/area/stalker/blowout/buildings/metro/station9
	name = "Metro - Pyatiletka"
	icon_state = "claw"

/area/stalker/blowout/outdoor/metro/station9
	name = "Metro - Pyatiletka \[O\]"
	icon_state = "claw"
////////////////////////////////////////////////////////////////

///////////////////////«¿“ŒÕ - ﬁ∆ÕŒ≈ œÀ¿“Œ///////////////////
/area/stalker/buildings/backwater/plateau
	name = "Backwater - Southern Plateau \[NB\]"
	icon_state = "plateau"
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/backwater/plateau
	name = "Backwater - Southern Plateau"
	icon_state = "plateau"

/area/stalker/blowout/outdoor/backwater/plateau
	name = "Backwater - Southern Plateau \[O\]"
	icon_state = "plateau"
////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/// Œ–ƒŒÕ\\\


/area/stalker/kordon
	requires_power = 1

/area/stalker/kordon/buildings
	name = "Buildings"
	icon_state = "cellar"

/area/stalker/blowout/kordon/buildings
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/kordon/cellar
	name = "Cellar"
	icon_state = "cellar"

/area/stalker/kordon/tunnel
	name = "Tunnel"
	icon_state = "tunnel_s"
	environment = 13
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800

/area/stalker/blowout/kordon/tunnel
	name = "Tunnel"
	icon_state = "tunnel"


	///—¬¿À ¿\\\


/area/stalker/svalka
	requires_power = 1

/area/stalker/svalka/buildings
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/blowout/svalka/buildings
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/blowout/svalka/buildings/bar
	name = "Bar"
	icon_state = "buildings"

/area/stalker/svalka/cellar
	name = "Cellar"
	icon_state = "cellar"

/area/stalker/svalka/tunnel
	name = "Tunnel"
	icon_state = "tunnel_s"

/area/stalker/blowout/svalka/tunnel
	name = "Tunnel"
	icon_state = "tunnel"


	///¿√–Œœ–ŒÃ\\\


/area/stalker/agroprom
	requires_power = 1

/area/stalker/agroprom/buildings
	name = "Buildings_blowout"
	icon_state = "buildings"

/area/stalker/blowout/agroprom/buildings
	name = "Buildings"
	icon_state = "buildings_blowout"

/area/stalker/agroprom/cellar
	name = "Cellar"
	icon_state = "cellar"

/area/stalker/agroprom/tunnel
	name = "Tunnel"
	icon_state = "tunnel_s"

/area/stalker/blowout/agroprom/tunnel
	name = "Tunnel"
	icon_state = "tunnel"

/area/stalker/agroprom/caves
	name = "Caves"
	icon_state = "caves"
	requires_power = 1
	ambient_music = null
	ambient_background = list('sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg', 'sound/stalker/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','sound/stalker/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_drip_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drip_11.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_drone_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_drone_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_lab_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_lab_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_metal_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_metal_7.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_4.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_5.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_6.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_7.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_8.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_9.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_10.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_noise_11.ogg','sound/stalker/ambience/ugrnd/ugrnd_noise_12.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_1.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'sound/stalker/ambience/ugrnd/ugrnd_whispers_3.ogg','sound/stalker/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
	ambient_environment_cooldown = 800
	environment = 8

	///¡¿–, ﬂÕ“¿–‹, ƒ» ¿ﬂ “≈––»“Œ–»ﬂ///


/area/stalker/byadt
	requires_power = 1

/area/stalker/byadt/bar
	name = "Bar"
	icon_state = "realbar"

/area/stalker/byadt/buildings
	name = "Buildings"
	icon_state = "buildings_s"

/area/stalker/blowout/byadt/buildings
	name = "Buildings Blowout"
	icon_state = "buildings"

/area/stalker/byadt/buildings/mercenary
	name = "Mercenary"
	icon_state = "mercenary"
