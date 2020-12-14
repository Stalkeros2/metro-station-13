#if !defined(MAP_FILE)

		#include "map_files\Metro\metro_under1.dmm"
		#include "map_files\Metro\metro_under2.dmm"
		#include "map_files\Metro\metro_under3.dmm"
		#include "map_files\Metro\metro_under4.dmm"
		#include "map_files\Metro\metro_under5.dmm"

		#define MAP_FILE "metro_under1.dmm"
		#define MAP_NAME "Metro"
		#define MAP_TRANSITION_CONFIG list(MAIN_STATION = CROSSLINKED, CENTCOMM = SELFLOOPING)
#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring metro_under1.dmm.

#endif