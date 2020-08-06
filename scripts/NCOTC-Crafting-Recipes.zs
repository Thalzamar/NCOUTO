import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Infuser;


val material_map = {redstone: <ore:dustRedstone>, graphite: <ore:ingotGraphite>, lithium: <ore:ingotLithium>, lapis: <ore:gemLapis>,
emerald: <ore:gemEmerald>, diamond: <ore:gemDiamond>, villiaumite: <ore:gemVilliaumite>, fluorite: <ore:gemFluorite>, carobbiite: <ore:gemCarobbiite>,
hardcarbon: <ore:ingotHardCarbon>, zircaloy: <ore:ingotZircaloy>, thermoconducting: <ore:ingotThermoconducting>, iron: <ore:ingotIron>,
boron: <ore:ingotBoron>, quartz: <ore:gemQuartz>, arsenic: <ore:dustArsenic>, glowstone: <ore:dustGlowstone>, nether: <ore:ingotBrickNether>,
obsidian: <ore:obsidian>, end: <ore:endstone>, prismarine: <ore:gemPrismarine>, purpur: <minecraft:purpur_block>, lead: <ore:ingotLead>, 
manganese: <ore:ingotManganese>, slime: <minecraft:slime_ball>, enderium: <ore:ingotEnderium>, cryotheum: <ore:dustCryotheum>} as IIngredient[string];

for name, material in material_map {
	if ((name != "enderium" & name != "cryotheum") | ( (name == "enderium" | name == "cryotheum") & (loadedMods has "thermalfoundation") ) ) {
		recipes.addShaped("ncotc" ~ name ~ "coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ name)*2,
		[[material, material, material],
		[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
		[material, material, material]]); } }
		
recipes.addShaped("NCOTCEmptyCoil", <nuclearcraft:turbine_dynamo_coil_empty>*2, 
[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:nak>*1000, <nuclearcraft:turbine_dynamo_coil_nak>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:corium>*1000, <nuclearcraft:turbine_dynamo_coil_corium>, 1.0 , 1.0, 15.0e-6);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_dynamo_coil_corium>, 15.0e-6);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:liquid_helium>*1000, <nuclearcraft:turbine_dynamo_coil_helium>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:liquid_nitrogen>*1000, <nuclearcraft:turbine_dynamo_coil_nitrogen>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:enderium>*864, <nuclearcraft:turbine_dynamo_coil_enderium>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:cryotheum>*1000, <nuclearcraft:turbine_dynamo_coil_cryotheum>);



//Optional Bucket recipes, uncomment the following recipes to enable!
//recipes.addShapeless("NCOTCNaKCoil", <nuclearcraft:turbine_dynamo_coil_nak>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "nak", Amount: 1000})]);
//recipes.addShapeless("NCOTCCoriumCoil", <nuclearcraft:turbine_dynamo_coil_corium>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "corium", Amount: 1000})]);
//recipes.addShapeless("NCOTCHeliumCoil", <nuclearcraft:turbine_dynamo_coil_helium>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "liquid_helium", Amount: 1000})]);
//recipes.addShapeless("NCOTCNitrogenCoil", <nuclearcraft:turbine_dynamo_coil_nitrogen>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000})]);
//recipes.addShapeless("NCOTCCryotheumCoil", <nuclearcraft:turbine_dynamo_coil_cryotheum>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000})]);
