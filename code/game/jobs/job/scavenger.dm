/*
Scavenger
*/
/datum/job/scavenger
	title = "Scavenger"
	flag = SCAVENGER
	department_flag = CIVILIAN
	faction = "Desert" //desert faction shall disable appearing as scavenger after readying
	total_positions = -1
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/scavenger

/datum/outfit/job/scavenger
	name = "Scavenger"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/scavenger/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/pj/red,\
		/obj/item/clothing/under/pj/blue,\
		/obj/item/clothing/under/waiter,\
		/obj/item/clothing/under/f13/settler,\

		/obj/item/clothing/under/f13/mercadv,\
		/obj/item/clothing/under/f13/springm,\
		/obj/item/clothing/under/f13/caravaneer,\
		/obj/item/clothing/under/f13/roving)
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/kitchen/knife,\
			/obj/item/weapon/storage/toolbox/mechanical,\
			/obj/item/weapon/twohanded/spear)


	if (prob(100))
		back = /obj/item/weapon/storage/backpack
		backpack = /obj/item/weapon/storage/backpack
		satchel = /obj/item/weapon/storage/backpack/satchel_norm
		backpack_contents = pick(list(/obj/item/weapon/melee/classic_baton/telescopic=1), \
			list(/obj/item/weapon/reagent_containers/food/drinks/nukacola = 3), \
			list(/obj/item/weapon/reagent_containers/pill/patch/styptic), \
			list(/obj/item/weapon/reagent_containers/syringe/stimulants))

/datum/job/scavenger/medic
	title = "Wasteland medic"

/datum/outfit/job/scavenger/medic/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/f13/doctor
	back = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack = /obj/item/weapon/storage/backpack
	backpack_contents = pick(list(/obj/item/weapon/storage/firstaid/brute = 1,/obj/item/weapon/scalpel = 1),\
								list(/obj/item/weapon/storage/firstaid/fire = 1, /obj/item/weapon/cautery = 1))


/datum/job/scavenger/trader
	title = "Trader"

/datum/outfit/job/scavenger/trader/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/f13/brahmin
	back = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack = /obj/item/weapon/storage/backpack
	l_hand = /obj/item/weapon/storage/backpack/dufflebag
	backpack_contents = /obj/item/weapon/storage/wallet