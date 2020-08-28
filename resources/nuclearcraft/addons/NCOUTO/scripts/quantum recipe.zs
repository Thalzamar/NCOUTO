#modloaded qmd

import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.AlloyFurnace;
import mods.qmd.target_chamber;



		val qmd_materials = {chrom: <ore:ingotChromium>, cobalt: <ore:ingotCobalt>, hafnium: <ore:ingotHafnium>, neo: <ore:ingotNeodymium>,
		nickel: <ore:ingotNickel>, niobium: <ore:ingotNiobium>, calcium: <ore:ingotCalcium>, osmium: <ore:ingotOsmium>, plat: <ore:ingotPlatinum>,
		kalium: <ore:ingotPotassium>, natrium: <ore:ingotSodium>, strontium: <ore:ingotStrontium>, titan: <ore:ingotTitanium>, wolfram: <ore:ingotTungsten>} as IIngredient[string];
		for name, material in qmd_materials {
		recipes.addShaped("ncouto" ~ name ~ "coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ name)*2,
		[[material, material, material],
		[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
		[material, material, material]]); }
	
	

		val qmd_blade = {niosteel: <nuclearcraft:turbine_rotor_blade_steel>,extremenio: <nuclearcraft:turbine_rotor_blade_extreme>, sicnio: <nuclearcraft:turbine_rotor_blade_sic_sic_cmc> } as IIngredient[string];
		for name, material in qmd_blade {
		recipes.addShaped("ncouto" ~ name ~ "blade", itemUtils.getItem("nuclearcraft:turbine_rotor_blade_" ~ name)*4,
		[[material, <ore:ingotNiobium>, material],
		[<ore:ingotNiobium>, <ore:ingotNiobium>, <ore:ingotNiobium>],
		[material, <ore:ingotNiobium>, material]]); }
		
		recipes.addShaped("ncoutoelektron90blade",<nuclearcraft:turbine_rotor_blade_elektron90>*4, 
		[[<nuclearcraft:turbine_rotor_blade_niosteel>, <contenttweaker:elektron60_ingot>, <nuclearcraft:turbine_rotor_blade_niosteel>],
		[<qmd:isotope:5>, <contenttweaker:elektron60_ingot>, <qmd:isotope:5>],
		[<nuclearcraft:turbine_rotor_blade_niosteel>, <contenttweaker:elektron60_ingot>, <nuclearcraft:turbine_rotor_blade_niosteel>]]);
		
		recipes.addShaped("ncoutoelektron192blade",<nuclearcraft:turbine_rotor_blade_elektron192>*4, 
		[[<nuclearcraft:turbine_rotor_blade_extremenio>, <qmd:isotope:9>, <nuclearcraft:turbine_rotor_blade_extremenio>],
		[<qmd:isotope:2>, <contenttweaker:elektron60_ingot>, <qmd:isotope:2>],
		[<nuclearcraft:turbine_rotor_blade_extremenio>, <qmd:isotope:9>, <nuclearcraft:turbine_rotor_blade_extremenio>]]);	
		
		recipes.addShaped("ncoutoelektron231blade",<nuclearcraft:turbine_rotor_blade_elektron231>*4, 
		[[<nuclearcraft:turbine_rotor_blade_sicnio>, <qmd:isotope:1>, <nuclearcraft:turbine_rotor_blade_sicnio>],
		[<qmd:isotope:7>, <contenttweaker:elektron60_ingot>, <qmd:isotope:7>],
		[<nuclearcraft:turbine_rotor_blade_sicnio>, <qmd:isotope:1>, <nuclearcraft:turbine_rotor_blade_sicnio>]]);		
	
		recipes.addShaped("ncoutobladecore",<contenttweaker:blade_core>, 
		[[<nuclearcraft:turbine_rotor_blade_neptunium>, <nuclearcraft:turbine_rotor_blade_plutonium>, <nuclearcraft:turbine_rotor_blade_americium>],
		[<contenttweaker:elektron60_ingot>, <nuclearcraft:alloy:15>, <contenttweaker:elektron60_ingot>],
		[<nuclearcraft:turbine_rotor_blade_curium>, <nuclearcraft:turbine_rotor_blade_berkelium>, <nuclearcraft:turbine_rotor_blade_californium>]]);
	
		recipes.addShaped("ncoutosteelmould",<contenttweaker:steel_mould>*4, 
		[[<nuclearcraft:turbine_rotor_blade_elektron90>, <contenttweaker:elektron60_ingot>,<nuclearcraft:turbine_rotor_blade_elektron90>],
		[<contenttweaker:elektron60_ingot>,<contenttweaker:blade_core>, <contenttweaker:elektron60_ingot>],
		[<nuclearcraft:turbine_rotor_blade_elektron90>, <contenttweaker:elektron60_ingot>,<nuclearcraft:turbine_rotor_blade_elektron90>]]);
	
		recipes.addShaped("ncoutoalloymould",<contenttweaker:alloy_mould>*4, 
		[[<nuclearcraft:turbine_rotor_blade_elektron192>, <contenttweaker:elektron60_ingot>,<nuclearcraft:turbine_rotor_blade_elektron192>],
		[<contenttweaker:elektron60_ingot>,<contenttweaker:blade_core>, <contenttweaker:elektron60_ingot>],
		[<nuclearcraft:turbine_rotor_blade_elektron192>, <contenttweaker:elektron60_ingot>,<nuclearcraft:turbine_rotor_blade_elektron192>]]);
	
		recipes.addShaped("ncoutosicmould",<contenttweaker:sic_mould>*4, 
		[[<nuclearcraft:turbine_rotor_blade_elektron231>, <contenttweaker:elektron60_ingot>,<nuclearcraft:turbine_rotor_blade_elektron231>],
		[<contenttweaker:elektron60_ingot>,<contenttweaker:blade_core>, <contenttweaker:elektron60_ingot>],
		[<nuclearcraft:turbine_rotor_blade_elektron231>, <contenttweaker:elektron60_ingot>,<nuclearcraft:turbine_rotor_blade_elektron231>]]);
	
		
		mods.qmd.target_chamber.addRecipe(<contenttweaker:steel_mould>,((<particle:proton>*100000)^10000)~15.0, <nuclearcraft:turbine_rotor_blade_edelstahl>, <particle:proton>*100000, null ,  null, 11000, 0.5, -6000 );
		mods.qmd.target_chamber.addRecipe(<contenttweaker:alloy_mould>,((<particle:proton>*100000)^10000)~15.0, <nuclearcraft:turbine_rotor_blade_legierung>, <particle:proton>*100000, null ,  null, 11000, 0.5, -6000 );
		mods.qmd.target_chamber.addRecipe(<contenttweaker:sic_mould>,((<particle:proton>*100000)^10000)~15.0, <nuclearcraft:turbine_rotor_blade_matrix>, <particle:proton>*100000, null ,  null, 11000, 0.5, -6000 );
	
		AlloyFurnace.addRecipe(<qmd:isotope:3>, <qmd:isotope:8>, <contenttweaker:elektron60_ingot>*4);
	