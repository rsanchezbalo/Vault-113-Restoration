/*
Regulator
*/
/datum/job/regulator
	title = "Regulator"
	flag = REGULATOR
	department_flag = CIVILIAN
	faction = "Desert" //desert faction shall disable appearing as scavenger after readying
	total_positions = 4
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/regulator

/datum/outfit/job/regulator
	name = "Regulator"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/regulator/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/cowboyb,\
		/obj/item/clothing/under/f13/cowboyg)
	shoes = /obj/item/clothing/shoes/workboots
	suit = /obj/item/clothing/suit/armor/vest/det_suit
	head = /obj/item/clothing/head/fluff/cowboy
	//suit_store = /obj/item/weapon/gun/projectile/automatic/pistol/m1911
	suit_store = /obj/item/weapon/gun/projectile/shotgun/boltaction
	back = /obj/item/weapon/storage/backpack
	backpack = /obj/item/weapon/storage/backpack
	satchel = /obj/item/weapon/storage/backpack/satchel_norm
	backpack_contents = list(/obj/item/weapon/restraints/handcuffs=1, \
	/obj/item/weapon/storage/wallet=1, \
	/obj/item/stack/coin/coins = 1, \
	/obj/item/ammo_box/magazine/internal/boltaction = 1)

	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/gun/projectile/shotgun,\
			/obj/item/weapon/melee/classic_baton)
