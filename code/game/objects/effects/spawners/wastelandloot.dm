////WASTELAND LOOT/////////////
/obj/effect/landmark/wastelandloot
	name = "wasteland loot"
	var/list/poor
	var/list/common
	var/list/rare
	var/list/ultrarare
	var/max = 100
	var/item_amount = 1

/obj/effect/landmark/wastelandloot/New()
	var/x
	for(var/i = 0;i<item_amount;i++)
		x = rand(1,max)
		var/S
		switch(x)
			if(1 to 59)
				S = pick(poor)
			if(60 to 92)
				S = pick(common)
			if(93 to 97)
				S = pick(rare)
			if(98 to 100)
				S = pick(ultrarare)
		new S(src.loc)
	qdel(src)
//////////////////////////////////////////
/obj/effect/landmark/wastelandloot/superdupermart_food
	poor = list(/obj/item/weapon/reagent_containers/food/snacks/egg/green,/obj/item/trash/can,/obj/item/trash/cheesie,
				/obj/item/weapon/reagent_containers/food/snacks/cheesewedge)

	common = list(/obj/item/weapon/reagent_containers/food/snacks/burger/rat,
					/obj/item/weapon/reagent_containers/food/snacks/beans,
					/obj/item/weapon/reagent_containers/food/snacks/meat/slab/meatproduct,
					/obj/item/weapon/reagent_containers/food/snacks/meat/slab/bear)

	rare = list(/obj/item/weapon/reagent_containers/food/snacks/kebab)

	ultrarare = list(/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka)

