/obj/effect/decal
	name = "decal"
	icon = 'icons/effects/effects.dmi'

/obj/effect/decal/ex_act(severity, target)
	qdel(src)

//Fallout 13 decorations

/obj/effect/decal/decoration //Generic decoration. See decals.dmi - there are more things to choose the proper icon_state in map editor.
	name = "rag"
	desc = "It's a torn and dirty rag.<br>It could have been a curtain, or a bedsheet ages ago..."
	icon = 'icons/obj/decals.dmi'
	icon_state = "rag" //ventred, ventorange
	level = 4.2
/obj/effect/decal/singewhite_horizontal
	name = "white line horizontal"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_horizontal"
	level = 2.1
/obj/effect/decal/singewhite_vertical
	name = "white line vertical"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_vertical"
	level = 2.1
/obj/effect/decal/singewhite_cross
	name = "white line cross"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_cross"
	level = 2.1
/obj/effect/decal/singewhite_t1
	name = "white line t1"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_t1"
	level = 2.1
/obj/effect/decal/singewhite_t2
	name = "white line t2"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_t2"
	level = 2.1
/obj/effect/decal/singewhite_t3
	name = "white line t3"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_t3"
	level = 2.1
/obj/effect/decal/singewhite_t4
	name = "white line t4"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_t4"
	level = 2.1
/obj/effect/decal/singewhite_t11
	name = "white line t11"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_t11"
	level = 2.1
/obj/effect/decal/singewhite_t21
	name = "white line t21"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_t21"
	level = 2.1
/obj/effect/decal/singewhite_t31
	name = "white line t31"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_t31"
	level = 2.1
/obj/effect/decal/singewhite_t41
	name = "white line t41"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_t41"
	level = 2.1
/obj/effect/decal/singewhite_corner_1
	name = "parking line corner 1"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_corner_1"
	level = 2.1
/obj/effect/decal/singewhite_corner_2
	name = "parking line corner 2"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_corner_2"
	level = 2.1
/obj/effect/decal/singewhite_corner_3
	name = "parking line corner 3"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_corner_3"
	level = 2.1
/obj/effect/decal/singewhite_corner_4
	name = "parking line corner 4"
	icon = 'icons/obj/decals.dmi'
	icon_state = "singewhite_corner_4"
	level = 2.1
/obj/effect/decal/parkingline_n
	name = "parking line north"
	icon = 'icons/obj/decals.dmi'
	icon_state = "parkingline_n"
	level = 2.1
/obj/effect/decal/parkingline_s
	name = "parking line south"
	icon = 'icons/obj/decals.dmi'
	icon_state = "parkingline_s"
	level = 2.1
/obj/effect/decal/parkingline_e
	name = "parking line east"
	icon = 'icons/obj/decals.dmi'
	icon_state = "parkingline_e"
	level = 2.1
/obj/effect/decal/parkingline_w
	name = "parking line west"
	icon = 'icons/obj/decals.dmi'
	icon_state = "parkingline_w"
	level = 2.1
/obj/effect/decal/sign //Signs.
	name = "sign"
	desc = "It's a standart sign, intended to provide some important (or not so) information about the current location."
	icon = 'icons/obj/decals.dmi'
	icon_state = "vault_blank" //See decals.dmi for different icon states for different signs.
	level = 2.1

/obj/effect/decal/clock //Wall clocks.
	name = "clock"
	desc = "It's an ancient instrument to indicate, keep, and co-ordinate time.<br>This particular clock has stopped at 06:45 / 18:45<br>Why did it stop? The clock itself appears to be intact."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "clock"
	level = 2.1

/obj/effect/decal/clock/active
	name = "clock"
	desc = "It's an ancient instrument to indicate, keep, and co-ordinate time.<br>You can hear a quiet ticking coming from the clock."
	icon_state = "clock_act"

/obj/effect/decal/clock/old
	name = "\improper old clock"
	desc = "It's an ancient instrument to indicate, keep, and co-ordinate time.<br>The clock was stopped by a distant nuclear blast on October 23, 2077 at 09:49 a.m."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "old_clock"
	level = 2.1

/obj/effect/decal/clock/oldactive
	name = "\improper old clock"
	desc = "It's an ancient instrument to indicate, keep, and co-ordinate time.<br>Despite the age, this particular clock is still functional and you can hear a quiet ticking coming from it."
	icon = 'icons/obj/stationobjs.dmi'
	icon_state = "old_clock_act"
	level = 2.1

/obj/effect/decal/vent //Decorative vents for vaults and bunkers.
	name = "vent"
	desc = "Exhaust ventilation system to keep the air safe."
	icon = 'icons/obj/decals.dmi'
	icon_state = "ventblue" //ventred, ventorange
	level = 2.1

/obj/effect/decal/vent/rusty
	name = "rusty vent"
	desc = "It's very old and rusty.<br>You can hear some wierd sounds coming from the insides of the vent."
	icon_state = "ventrusty" //ventrustyalt

/obj/effect/decal/hatch //Road decorations
	name = "street water drain"
	desc = "It's the ancient drainage system to protect the roads from flooding."
	icon = 'icons/obj/decals.dmi'
	icon_state = "hatch" // hatchbroken
	level = 2.1

/obj/effect/decal/reflector
	name = "road reflector"
	desc = "It's one of road safety devices.<br>Here's how it works:<br>A reflective plate is reflecting the street and car lights ensuring the visibility of the road median separating the lanes.<br>The steel part makes a small regular bump along the median to wake the driver if he/she drifts across."
	icon = 'icons/obj/decals.dmi'
	icon_state = "reflectorvertical" //reflectorhorizontal
	level = 2.1

/obj/effect/decal/ruins //Ruin decorations - they overlap the player most of time, thus they provide a nearly perfect hiding spot.
	name = "ruins"
	desc = "Either the blast nearby was hard enough, or the decades of fallout and absence of maintenance did their part.<br>Be careful so that one of these don't fall on you from above."
	icon = 'icons/obj/decals.dmi'
	icon_state = "overlap" //See decals.dmi for different icon states for road markings.
	level = 4.2