/obj/effect/landmark
	name = "landmark"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "x2"
	anchored = 1
	unacidable = 1

/obj/effect/landmark/New()
	..()
	tag = text("landmark*[]", name)
	invisibility = 101
	landmarks_list += src

	switch(name)			//some of these are probably obsolete
		if("monkey")
			monkeystart += loc
			qdel(src)
			return
		if("start")
			newplayer_start += loc
			qdel(src)
			return
		if("wizard")
			wizardstart += loc
			qdel(src)
			return
		if("JoinLate")
			latejoin += loc
			qdel(src)
			return
		if("prisonwarp")
			prisonwarp += loc
			qdel(src)
			return
		if("Holding Facility")
			holdingfacility += loc
		if("tdome1")
			tdome1	+= loc
		if("tdome2")
			tdome2 += loc
		if("tdomeadmin")
			tdomeadmin	+= loc
		if("tdomeobserve")
			tdomeobserve += loc
		if("prisonsecuritywarp")
			prisonsecuritywarp += loc
			qdel(src)
			return
		if("blobstart")
			blobstart += loc
			qdel(src)
			return
		if("secequipment")
			secequipment += loc
			qdel(src)
			return
		if("Emergencyresponseteam")
			emergencyresponseteamspawn += loc
			qdel(src)
			return
		if("xeno_spawn")
			xeno_spawn += loc
			qdel(src)
			return
	return 1

/obj/effect/landmark/Destroy()
	landmarks_list -= src
	return ..()

/obj/effect/landmark/start
	name = "start"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "x"
	anchored = 1

/obj/effect/landmark/start/New()
	..()
	tag = "start*[name]"
	invisibility = 101
	start_landmarks_list += src
	return 1

/obj/effect/landmark/start/Destroy()
	start_landmarks_list -= src
	return ..()

//Costume spawner landmarks

/obj/effect/landmark/costume/New() //costume spawner, selects a random subclass and disappears

	var/list/options = typesof(/obj/effect/landmark/costume)
	var/PICK= options[rand(1,options.len)]
	new PICK(src.loc)
	qdel(src)

//SUBCLASSES.  Spawn a bunch of items and disappear likewise
/obj/effect/landmark/costume/chicken/New()
	new /obj/item/clothing/suit/chickensuit(src.loc)
	new /obj/item/clothing/head/chicken(src.loc)
	new /obj/item/weapon/reagent_containers/food/snacks/egg(src.loc)
	qdel(src)

/obj/effect/landmark/costume/gladiator/New()
	new /obj/item/clothing/under/gladiator(src.loc)
	new /obj/item/clothing/head/helmet/gladiator(src.loc)
	qdel(src)

/obj/effect/landmark/costume/madscientist/New()
	new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/suit/toggle/labcoat/mad(src.loc)
	new /obj/item/clothing/glasses/gglasses(src.loc)
	qdel(src)

/obj/effect/landmark/costume/elpresidente/New()
	new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/mask/cigarette/cigar/havana(src.loc)
	new /obj/item/clothing/shoes/jackboots(src.loc)
	qdel(src)

/obj/effect/landmark/costume/nyangirl/New()
	new /obj/item/clothing/under/female/schoolgirl(src.loc)
	new /obj/item/clothing/head/kitty(src.loc)
	new /obj/item/clothing/glasses/sunglasses/blindfold(src.loc)
	qdel(src)

/obj/effect/landmark/costume/maid/New()
	new /obj/item/clothing/under/female/blackskirt(src.loc)
	var/CHOICE = pick( /obj/item/clothing/head/beret , /obj/item/clothing/head/rabbitears )
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/sunglasses/blindfold(src.loc)
	qdel(src)

/obj/effect/landmark/costume/butler/New()
	new /obj/item/clothing/tie/waistcoat(src.loc)
	new /obj/item/clothing/under/suit_jacket(src.loc)
	new /obj/item/clothing/head/that(src.loc)
	qdel(src)

/obj/effect/landmark/costume/highlander/New()
	new /obj/item/clothing/under/kilt(src.loc)
	new /obj/item/clothing/head/beret(src.loc)
	qdel(src)

/obj/effect/landmark/costume/prig/New()
	new /obj/item/clothing/tie/waistcoat(src.loc)
	new /obj/item/clothing/glasses/monocle(src.loc)
	var/CHOICE= pick( /obj/item/clothing/head/bowler, /obj/item/clothing/head/that)
	new CHOICE(src.loc)
	new /obj/item/clothing/shoes/sneakers/black(src.loc)
	new /obj/item/weapon/cane(src.loc)
	new /obj/item/clothing/under/sl_suit(src.loc)
	new /obj/item/clothing/mask/fakemoustache(src.loc)
	qdel(src)

/obj/effect/landmark/costume/plaguedoctor/New()
	new /obj/item/clothing/suit/bio_suit/plaguedoctorsuit(src.loc)
	new /obj/item/clothing/head/plaguedoctorhat(src.loc)
	new /obj/item/clothing/mask/gas/plaguedoctor(src.loc)
	qdel(src)

/obj/effect/landmark/costume/nightowl/New()
	new /obj/item/clothing/suit/toggle/owlwings(src.loc)
	new /obj/item/clothing/under/owl(src.loc)
	new /obj/item/clothing/mask/gas/owl_mask(src.loc)
	qdel(src)

/obj/effect/landmark/costume/thegriffin/New()
	new /obj/item/clothing/suit/toggle/owlwings/griffinwings(src.loc)
	new /obj/item/clothing/shoes/griffin(src.loc)
	new /obj/item/clothing/under/griffin(src.loc)
	new /obj/item/clothing/head/griffin(src.loc)
	qdel(src)

/obj/effect/landmark/costume/waiter/New()
	new /obj/item/clothing/under/waiter(src.loc)
	var/CHOICE= pick( /obj/item/clothing/head/kitty, /obj/item/clothing/head/rabbitears)
	new CHOICE(src.loc)
	new /obj/item/clothing/suit/apron(src.loc)
	qdel(src)

/obj/effect/landmark/costume/pirate/New()
	new /obj/item/clothing/under/pirate(src.loc)
	new /obj/item/clothing/suit/pirate(src.loc)
	var/CHOICE = pick( /obj/item/clothing/head/pirate , /obj/item/clothing/head/bandana )
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/eyepatch(src.loc)
	qdel(src)

/obj/effect/landmark/costume/commie/New()
	new /obj/item/clothing/under/soviet(src.loc)
	new /obj/item/clothing/head/ushanka(src.loc)
	qdel(src)

/obj/effect/landmark/costume/imperium_monk/New()
	new /obj/item/clothing/suit/imperium_monk(src.loc)
	if (prob(25))
		new /obj/item/clothing/mask/gas/cyborg(src.loc)
	qdel(src)

/obj/effect/landmark/costume/holiday_priest/New()
	new /obj/item/clothing/suit/holidaypriest(src.loc)
	qdel(src)

/obj/effect/landmark/costume/marisawizard/fake/New()
	new /obj/item/clothing/shoes/sandal/marisa(src.loc)
	new /obj/item/clothing/head/wizard/marisa/fake(src.loc)
	new/obj/item/clothing/suit/wizrobe/marisa/fake(src.loc)
	qdel(src)

/obj/effect/landmark/costume/cutewitch/New()
	new /obj/item/clothing/under/female/sundress(src.loc)
	new /obj/item/clothing/head/witchwig(src.loc)
	new /obj/item/weapon/staff/broom(src.loc)
	qdel(src)

/obj/effect/landmark/costume/fakewizard/New()
	new /obj/item/clothing/shoes/sandal(src.loc)
	new /obj/item/clothing/suit/wizrobe/fake(src.loc)
	new /obj/item/clothing/head/wizard/fake(src.loc)
	new /obj/item/weapon/staff/(src.loc)
	qdel(src)

/obj/effect/landmark/costume/sexyclown/New()
	new /obj/item/clothing/mask/gas/sexyclown(src.loc)
	new /obj/item/clothing/under/rank/clown/sexy(src.loc)
	qdel(src)

/obj/effect/landmark/costume/sexymime/New()
	new /obj/item/clothing/mask/gas/sexymime(src.loc)
	new /obj/item/clothing/under/female/sexymime(src.loc)
	qdel(src)

/obj/effect/landmark/lootgenerator
	var/list/loot
	var/max = 6
	var/amount = 1

/obj/effect/landmark/lootgenerator/New()
	var/howmuch = rand(1,max)
	var/PICK = pick(loot)
	for(var/i = 1 to howmuch)
		new PICK(src.loc)
	qdel(src)

/obj/effect/landmark/lootgenerator/food
	name = "food landmark"
	loot = list(
	/obj/item/weapon/reagent_containers/food/snacks/beans,
	/obj/item/weapon/reagent_containers/food/drinks/nukacola,
	/obj/item/weapon/reagent_containers/food/drinks/beer)

/obj/effect/landmark/lootgenerator/buildmat
	name = "buildmat landmark"
	max = 10
	loot = list(
	/obj/item/stack/sheet/mineral/gold,
	/obj/item/stack/sheet/mineral/silver,
	/obj/item/stack/sheet/mineral/diamond,
	/obj/item/stack/sheet/mineral/uranium,
	/obj/item/stack/sheet/metal{amount = 50},
	/obj/item/stack/sheet/plasteel{amount = 20},
	/obj/item/stack/sheet/glass{amount = 50},
	/obj/item/stack/sheet/rglass{amount = 20})

/obj/effect/landmark/lootgenerator/seeds
	name = "seeds landmark"
	max = 15
	loot = list(/obj/item/seeds)

/obj/effect/landmark/lootgenerator/crazy
	name = "crazy landmark"
	max = 1
	loot =list(
	/obj/item/weapon/reagent_containers/food/drinks/golden_cup/tournament_26_06_2011,
	/obj/item/clothing/suit/armor/f13/kit,
	/obj/item/weapon/stock_parts/cell/hyper)

/obj/effect/landmark/radmark
	name = "Radiation field"
	icon_state = "x3"
	var/dose = 2
	var/radius = 0

/obj/effect/landmark/radmark/process()
	for(var/mob/living/carbon/M in oview(radius, src))
		if(M.stat != DEAD)
			M.rad_act(dose)
		for(var/obj/item/device/geiger_counter/G in M.contents)
			G.radiation_count+= dose
	for(var/obj/item/device/geiger_counter/C in oview(radius, src))
		C.radiation_count+= dose
	return
/obj/effect/landmark/radmark/New()
	SSobj.processing |= src
	return ..()
/obj/effect/landmark/radmark/Destroy()
	SSobj.processing.Remove(src)
	return ..()

/obj/effect/landmark/minespawn
	name = "spawn mine"
	var/chance = 10
/obj/effect/landmark/minespawn/New()
	var/S = /obj/item/mine/explosive{active = 1}
	new S(src.loc)
	..()


//Department Security spawns

/obj/effect/landmark/start/depsec
	name = "department_sec"

/obj/effect/landmark/start/depsec/New()
	..()
	department_security_spawns += src

/obj/effect/landmark/start/depsec/Destroy()
	department_security_spawns -= src
	return ..()

/obj/effect/landmark/start/depsec/supply
	name = "supply_sec"

/obj/effect/landmark/start/depsec/medical
	name = "medical_sec"

/obj/effect/landmark/start/depsec/engineering
	name = "engineering_sec"

/obj/effect/landmark/start/depsec/science
	name = "science_sec"

/obj/effect/landmark/latejoin
	name = "JoinLate"