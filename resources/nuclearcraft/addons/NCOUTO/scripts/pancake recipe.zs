import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.AlloyFurnace;
import crafttweaker.item.IItemStack;

var currentblade = <minecraft:iron_ingot> as IItemStack;
var currentpancake = <minecraft:iron_ingot> as IItemStack;

recipes.addShapeless("goldsmore", <contenttweaker:smore_gold>,
	[<ore:ingotGold>, <ore:ingotChocolate>,	<ore:ingotMarshmallow>, <ore:ingotGold>]);
	
recipes.addShapeless("thmore", <contenttweaker:thmore>,
	[<nuclearcraft:graham_cracker>, <ore:ingotThorium>, <ore:ingotMarshmallow>, <nuclearcraft:graham_cracker>]);
	
recipes.addShapeless("caramelsmore", <contenttweaker:smore_caramel>,
	[<nuclearcraft:smore>, <contenttweaker:caramel>]);
	
Assembler.addRecipe(<minecraft:egg>*2, <minecraft:milk_bucket>, <ore:dustWheat>, <nuclearcraft:cocoa_butter>, <contenttweaker:pancakes>*8);
Manufactory.addRecipe(<minecraft:sugar>, <contenttweaker:caramel>);

val alloy_blades = {hc: <ore:ingotHardCarbon>, tc: <ore:ingotThermoconducting>, tough: <ore:ingotTough>, feb: <ore:ingotFerroboron>,
mgb2: <ore:ingotMagnesiumDiboride>, zircaloy: <ore:ingotZircaloy>, limno2: <ore:ingotLithiumManganeseDioxide>} as IIngredient[string];
for blade, ingot in alloy_blades {
	recipes.addShaped("ncouto" ~ blade ~ "blade", itemUtils.getItem("contenttweaker:blade_"~ blade)*4, [
	[ingot, <ore:ingotHSLASteel>, ingot],
	[ingot, <ore:ingotHSLASteel>, ingot],
	[ingot, <ore:ingotHSLASteel>, ingot]
	]);
	}

val ttblades = [<contenttweaker:pancake_core>, <contenttweaker:blade_hc>, <contenttweaker:blade_tc>, <contenttweaker:blade_feb>,
<contenttweaker:blade_tough>, <contenttweaker:blade_zircaloy>, <contenttweaker:blade_mgb2>, <contenttweaker:blade_limno2>] as IIngredient[];
for blade in ttblades {
	blade.addTooltip(format.italic("Crafting Ingredient."));
	}


Assembler.addRecipe(<nuclearcraft:turbine_rotor_blade_steel>*4, <nuclearcraft:turbine_rotor_blade_extreme>*4, <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>*4,
<contenttweaker:pancakes>*32, <contenttweaker:pancake_core>*4, 8.0, 4.0, 0.0);

val pancake_blades = { "steel": "steelcake", "extreme": "extremecake", "sic_sic_cmc": "sicsiccmcake",
"hc": "hccake", "tc": "tccake", "tough": "toughcake", "feb": "febcake", "limno2": "limno2cake", "mgb2": "mgb2cake", "zircaloy": "zircaloycake"} as string[string];

for baseblade, pancakeblade in pancake_blades {
	if (baseblade == "steel" | baseblade == "extreme" | baseblade == "sic_sic_cmc") {
		currentblade = itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ baseblade);
	}
	else {
		currentblade = itemUtils.getItem("contenttweaker:blade_" ~ baseblade);
	}
	currentpancake = itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ pancakeblade);
	recipes.addShaped("ncoutoblade" ~ pancakeblade, currentpancake*4, [
	[currentblade, <contenttweaker:pancake_core>, currentblade],
	[<contenttweaker:pancake_core>, <ore:ingotHSLASteel>, <contenttweaker:pancake_core>],
	[currentblade, <contenttweaker:pancake_core>, currentblade]
	]);
}



