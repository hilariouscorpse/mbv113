/obj/structure/radobject
	name = "base radiation dispenser"
	icon = 'icons/emoji.dmi'
	icon_state = "pika"
	var/dose = 2
	var/radius = 3

/obj/structure/radobject/New()
	SSobj.processing |= src
	return ..()

/obj/structure/radobject/Destroy()
	SSobj.processing.Remove(src)
	return ..()

/obj/structure/radobject/process()
	for(var/mob/living/carbon/M in oview(radius, src))
		if(M.stat != DEAD)
			M.rad_act(dose)
		for(var/obj/item/device/geiger_counter/G in M.contents)
			G.radiation_count+= dose
	for(var/obj/item/device/geiger_counter/C in oview(radius, src))
		C.radiation_count+= dose
	return