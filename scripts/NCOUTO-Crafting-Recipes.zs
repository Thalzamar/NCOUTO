import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;

val material_map = {redstone: <ore:dustRedstone>, graphite: <ore:ingotGraphite>, lithium: <ore:ingotLithium>, lapis: <ore:gemLapis>,
emerald: <ore:gemEmerald>, diamond: <ore:gemDiamond>, villiaumite: <ore:gemVilliaumite>, fluorite: <ore:gemFluorite>, carobbiite: <ore:gemCarobbiite>,
hardcarbon: <ore:ingotHardCarbon>, zircaloy: <ore:ingotZircaloy>, thermoconducting: <ore:ingotThermoconducting>, iron: <ore:ingotIron>,
boron: <ore:ingotBoron>, quartz: <ore:gemQuartz>, arsenic: <ore:dustArsenic>, glowstone: <ore:dustGlowstone>, nether: <ore:ingotBrickNether>,
obsidian: <ore:obsidian>, end: <ore:endstone>, prismarine: <ore:gemPrismarine>, purpur: <minecraft:purpur_block>, lead: <ore:ingotLead>, 
manganese: <ore:ingotManganese>, slime: <ore:slimeball>, enderium: <ore:ingotEnderium>, cryotheum: <ore:dustCryotheum>, tin: <ore:ingotTin> } as IIngredient[string];

for name, material in material_map {
	recipes.addShaped("ncouto" ~ name ~ "coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ name)*2,
	[[material, material, material],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[material, material, material]]); }



if (loadedMods has "qmd") {
	val qmd_materials = {chrom: <ore:ingotChromium>, cobalt: <ore:ingotCobalt>, hafnium: <ore:ingotHafnium>, neo: <ore:ingotNeodymium>,
	nickel: <ore:ingotNickel>, niobium: <ore:ingotNiobium>, calcium: <ore:ingotCalcium>, osmium: <ore:ingotOsmium>, plat: <ore:ingotPlatinum>,
	kalium: <ore:ingotPotassium>, natrium: <ore:ingotSodium>, strontium: <ore:ingotStrontium>, titan: <ore:ingotTitanium>, wolfram: <ore:ingotTungsten>} as IIngredient[string];
	for name, material in qmd_materials {
		recipes.addShaped("ncouto" ~ name ~ "coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ name)*2,
		[[material, material, material],
		[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
		[material, material, material]]); }
	}
	
if (loadedMods has "qmd") {
	val qmd_materials = {niosteel: <nuclearcraft:turbine_rotor_blade_steel>,extremenio: <nuclearcraft:turbine_rotor_blade_extreme>, sicnio: <nuclearcraft:turbine_rotor_blade_sic_sic_cmc> } as IIngredient[string];
	for name, material in qmd_materials {
		recipes.addShaped("ncouto" ~ name ~ "blade", itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ name)*4,
		[[material, <ore:ingotNiobium>, material],
		[<ore:ingotNiobium>, <ore:ingotNiobium>, <ore:ingotNiobium>],
		[material, <ore:ingotNiobium>, material]]); }
	}

if (loadedMods has "trinity") {
	recipes.addShaped("ncoutowitheritecoil", <nuclearcraft:turbine_dynamo_coil_witherite>*2, 
	[[<ore:gemWitherite>, <ore:gemWitherite>, <ore:gemWitherite>],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[<ore:gemWitherite>, <ore:gemWitherite>, <ore:gemWitherite>]]);
	
	recipes.addShaped("ncoutobaratolcoil", <nuclearcraft:turbine_dynamo_coil_baratol>*2, 
	[[<trinity:solid_baratol>, <trinity:solid_baratol>, <trinity:solid_baratol>],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[<trinity:solid_baratol>, <trinity:solid_baratol>, <trinity:solid_baratol>]]);
	
	recipes.addShaped("ncoutotrinititestator", <nuclearcraft:turbine_rotor_stator_trinitite>*4, 
	[[<nuclearcraft:turbine_rotor_stator>, <ore:gemTrinitite>, <nuclearcraft:turbine_rotor_stator>],
	[<ore:gemTrinitite>, <ore:blockTrinitite>, <ore:gemTrinitite>],
	[<nuclearcraft:turbine_rotor_stator>, <ore:gemTrinitite>, <nuclearcraft:turbine_rotor_stator>]]);
	}

recipes.addShaped("ncoutoEmptyCoil", <nuclearcraft:turbine_dynamo_coil_empty>*2, 
[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

recipes.addShaped("ncoutosmorecoil", <nuclearcraft:turbine_dynamo_coil_smore>*2,
	[[<nuclearcraft:smore>, <nuclearcraft:moresmore>, <nuclearcraft:foursmore>],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[<nuclearcraft:smore>, <nuclearcraft:moresmore>, <nuclearcraft:foursmore>]]);

Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:nak>*1296, <nuclearcraft:turbine_dynamo_coil_nak>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:corium>*1000, <nuclearcraft:turbine_dynamo_coil_corium>, 1.0 , 1.0, 15.0e-6);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:liquid_helium>*1000, <nuclearcraft:turbine_dynamo_coil_helium>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:liquid_nitrogen>*1000, <nuclearcraft:turbine_dynamo_coil_nitrogen>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:enderium>*432, <nuclearcraft:turbine_dynamo_coil_enderium>);
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_empty>, <liquid:cryotheum>*750, <nuclearcraft:turbine_dynamo_coil_cryotheum>);


//optional Bucket recipes
//recipes.addShapeless("ncoutoCoriumCoil", <nuclearcraft:turbine_dynamo_coil_corium>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "corium", Amount: 1000})]);
//recipes.addShapeless("ncoutoHeliumCoil", <nuclearcraft:turbine_dynamo_coil_helium>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "liquid_helium", Amount: 1000})]);
//recipes.addShapeless("ncoutoNitrogenCoil", <nuclearcraft:turbine_dynamo_coil_nitrogen>, [<nuclearcraft:turbine_dynamo_coil_empty>, <forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000})]);

Infuser.addRecipe(<nuclearcraft:turbine_rotor_stator>*4, <liquid:tbu>*1152, <nuclearcraft:turbine_rotor_stator_thorium>*4, 1.0, 1.0, 3.15e-6);
Infuser.addRecipe(<nuclearcraft:turbine_rotor_stator>*4, <liquid:uranium_238>*1152, <nuclearcraft:turbine_rotor_stator_uranium>*4, 1.0, 1.0, 2.0e-6);
Infuser.addRecipe(<nuclearcraft:turbine_rotor_blade_steel>*4, <liquid:neptunium_237>*1152, <nuclearcraft:turbine_rotor_blade_neptunium>*4, 1.0, 1.0, 4.0e-6);
Infuser.addRecipe(<nuclearcraft:turbine_rotor_blade_steel>*4, <liquid:plutonium_242>*1152, <nuclearcraft:turbine_rotor_blade_plutonium>*4, 1.0, 1.0, 24.0e-6);
Infuser.addRecipe(<nuclearcraft:turbine_rotor_blade_extreme>*4, <liquid:americium_243>*1152, <nuclearcraft:turbine_rotor_blade_americium>*4, 1.0, 1.0, 1.0e-3);
Infuser.addRecipe(<nuclearcraft:turbine_rotor_blade_extreme>*4, <liquid:curium_246>*1152, <nuclearcraft:turbine_rotor_blade_curium>*4, 1.0, 1.0, 1.0e-3);
Infuser.addRecipe(<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>*4, <liquid:berkelium_247>*1152, <nuclearcraft:turbine_rotor_blade_berkelium>*4, 1.0, 1.0, 6.0e-3);
Infuser.addRecipe(<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>*4, <liquid:californium_250>*1152, <nuclearcraft:turbine_rotor_blade_californium>*4, 1.0, 1.0, 3.0);


Enricher.addRecipe(<nuclearcraft:alloy:13>, <liquid:hydrogen>*1000, <liquid:sic_vapor>*1000);
Infuser.addRecipe(<nuclearcraft:alloy:13>, <liquid:sic_vapor>*1000, <nuclearcraft:part:13>);
Infuser.addRecipe(<nuclearcraft:part:13>, <liquid:sic_vapor>*1000, <nuclearcraft:alloy:14>);

mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_dynamo_coil_corium>, 15.0e-6);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_stator_thorium>, 840.0e-9);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_stator_uranium>, 20.0e-9);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_neptunium>, 40.0e-9);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_plutonium>, 240.0e-9);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_americium>, 1.0e-3);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_curium>, 1.0e-3);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_berkelium>, 6.0e-3);
mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_blade_californium>, 30.0e-3);

