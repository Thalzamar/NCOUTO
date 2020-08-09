import crafttweaker.item.IIngredient;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;

val material_map = {redstone: <ore:dustRedstone>, graphite: <ore:ingotGraphite>, lithium: <ore:ingotLithium>, lapis: <ore:gemLapis>,
emerald: <ore:gemEmerald>, diamond: <ore:gemDiamond>, villiaumite: <ore:gemVilliaumite>, fluorite: <ore:gemFluorite>, carobbiite: <ore:gemCarobbiite>,
hardcarbon: <ore:ingotHardCarbon>, zircaloy: <ore:ingotZircaloy>, thermoconducting: <ore:ingotThermoconducting>, iron: <ore:ingotIron>,
boron: <ore:ingotBoron>, quartz: <ore:gemQuartz>, arsenic: <ore:dustArsenic>, glowstone: <ore:dustGlowstone>, nether: <ore:ingotBrickNether>,
obsidian: <ore:obsidian>, end: <ore:endstone>, prismarine: <ore:gemPrismarine>, purpur: <minecraft:purpur_block>, lead: <ore:ingotLead>, 
manganese: <ore:ingotManganese>, slime: <ore:slimeball>, enderium: <ore:ingotEnderium>, cryotheum: <ore:dustCryotheum>, tin: <ore:ingotTin> } as IIngredient[string];

for name, material in material_map {
	recipes.addShaped("ncotc" ~ name ~ "coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ name)*2,
	[[material, material, material],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[material, material, material]]); }

recipes.addShaped("NCOTCEmptyCoil", <nuclearcraft:turbine_dynamo_coil_empty>*2, 
[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:nak>*1296, <nuclearcraft:turbine_dynamo_coil_nak>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:corium>*1000, <nuclearcraft:turbine_dynamo_coil_corium>, 1.0 , 1.0, 15.0e-6);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_dynamo_coil_corium>, 15.0e-6);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:liquid_helium>*1000, <nuclearcraft:turbine_dynamo_coil_helium>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:liquid_nitrogen>*1000, <nuclearcraft:turbine_dynamo_coil_nitrogen>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:enderium>*432, <nuclearcraft:turbine_dynamo_coil_enderium>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:cryotheum>*750, <nuclearcraft:turbine_dynamo_coil_cryotheum>);


//optional Bucket recipes
//recipes.addShapeless("TNCOTCCoriumCoil", <nuclearcraft:turbine_dynamo_coil_corium>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "corium", Amount: 1000})]);
//recipes.addShapeless("TNCOTCHeliumCoil", <nuclearcraft:turbine_dynamo_coil_helium>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "liquid_helium", Amount: 1000})]);
//recipes.addShapeless("TNCOTCNitrogenCoil", <nuclearcraft:turbine_dynamo_coil_nitrogen>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000})]);


val steelblade_map = { neptunium: <nuclearcraft:neptunium:5>, plutonium: <nuclearcraft:plutonium:15> } as IIngredient[string];
for name, material in steelblade_map {
	recipes.addShaped("ncotc" ~ name ~ "blade", itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ name)*3,
	[[material, material, material],
	[<nuclearcraft:turbine_rotor_blade_steel>, <nuclearcraft:turbine_rotor_blade_steel>, <nuclearcraft:turbine_rotor_blade_steel>],
	[material, material, material]]); }


val extremeblade_map = { americium: <nuclearcraft:americium:10>, curium: <nuclearcraft:curium:10> } as IIngredient[string];
for name, material in extremeblade_map {
	recipes.addShaped("ncotc" ~ name ~ "blade", itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ name)*3,
	[[material, material, material],
	[<nuclearcraft:turbine_rotor_blade_extreme>, <nuclearcraft:turbine_rotor_blade_extreme>, <nuclearcraft:turbine_rotor_blade_extreme>],
	[material, material, material]]); }

val sicblade_map = { berkelium: <nuclearcraft:berkelium>, californium: <nuclearcraft:californium:5> } as IIngredient[string];
for name, material in sicblade_map {
	recipes.addShaped("ncotc" ~ name ~ "blade", itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ name)*3,
	[[material, material, material],
	[<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>, <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>, <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>],
	[material, material, material]]); }


val stator_map = { thorium: <nuclearcraft:fission_dust:3>, uranium: <nuclearcraft:uranium:10> } as IIngredient[string];
for name, material in stator_map {
	recipes.addShaped("ncotc" ~ name ~ "blade", itemUtils.getItem("nuclearcraft:turbine_rotor_stator_" ~ name)*3,
	[[material, material, material],
	[<nuclearcraft:turbine_rotor_stator>, <nuclearcraft:turbine_rotor_stator>, <nuclearcraft:turbine_rotor_stator>],
	[material, material, material]]); }


Enricher.addRecipe(<nuclearcraft:alloy:13>, <liquid:hydrogen>*1000, <liquid:sic_vapor>*1000);
Infuser.addRecipe(<nuclearcraft:alloy:13>, <liquid:sic_vapor>*1000, <nuclearcraft:part:13>);
Infuser.addRecipe(<nuclearcraft:part:13>, <liquid:sic_vapor>*1000, <nuclearcraft:alloy:14>);


mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_stator_thorium>, 840.0e-9);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_stator_uranium>, 20.0e-9);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_americium>, 1.0e-3);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_berkelium>, 6.0e-3);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_californium>, 30.0e-3);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_curium>, 1.0e-3);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_neptunium>, 40.0e-9);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_plutonium>, 240.0e-9);
