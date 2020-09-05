import crafttweaker.item.IIngredient;

recipes.addShaped("goldsmore", <contenttweaker:smore_gold>,
	[[<ore:ingotGold>, <ore:ingotChocolate>, null],
	[<ore:ingotMarshmallow>, <ore:ingotGold>, null],
	[null, null, null]]);
	
recipes.addShapeless("thmore", <contenttweaker:thmore>,
	[<nuclearcraft:graham_cracker>, <ore:ingotThorium>, <ore:ingotMarshmallow>, <nuclearcraft:graham_cracker>]);
	
recipes.addShapeless("caramelsmore", <contenttweaker:smore_caramel>,
	[<nuclearcraft:smore>, <contenttweaker:caramel>]);
	
mods.nuclearcraft.Assembler.addRecipe(<minecraft:egg>*2, <minecraft:milk_bucket>, <ore:dustWheat>, <nuclearcraft:cocoa_butter>, <contenttweaker:pancakes>*8);
mods.nuclearcraft.Manufactory.addRecipe(<minecraft:sugar>, <contenttweaker:caramel>);

val blades = {steelcake: <nuclearcraft:turbine_rotor_blade_steel>, extremecake: <nuclearcraft:turbine_rotor_blade_extreme>,
sicsiccmcake: <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>} as IIngredient[string];

for name, ingr in blades {
	recipes.addShaped(name ~ "blade", itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ name),
	[[<contenttweaker:pancakes>, <contenttweaker:pancakes>, <contenttweaker:pancakes>],
	[<contenttweaker:pancakes>, ingr, <contenttweaker:pancakes>],
	[<contenttweaker:pancakes>, <contenttweaker:pancakes>, <contenttweaker:pancakes>]]);
	}
