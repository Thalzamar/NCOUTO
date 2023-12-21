import scripts.nc_script_addons.NTP.coilclasses.StabilizerInfo;
import scripts.nc_script_addons.NTP.coilstabilizerlist.StabilizerInfoList;
import scripts.nc_script_addons.NTP.coilclasses.LiquidStabilizerInfo;
import scripts.nc_script_addons.NTP.coilstabilizerlist.LiquidStabilizerInfoList;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.AlloyFurnace;



recipes.addShaped("ntp base stabilizer coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_basestabilizer")*2,
	[[<ore:dustRedstone>,<ore:ingotGold>, <ore:dustRedstone>],
	[<ore:ingotGold>, <ore:ingotHSLASteel>, <ore:ingotGold>],
	[<ore:dustRedstone>,<ore:ingotGold>, <ore:dustRedstone>]]); 
	
val adtank = <qmd:cell:2>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}});
val adtankre = adtank.transformReplace(<qmd:cell>);		
	
recipes.addShaped("ntp antideuterium coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_antideuteriumstabilizer")*2,
	[[adtankre,adtankre,adtankre],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_basestabilizer>, <ore:ingotHSLASteel>],
	[adtankre,adtankre, adtankre]]);	

function addStabilizerRecipe (info as StabilizerInfo){
	var material as IIngredient;	
	if (oreDict has ("ingot"~info.name)){
	material = oreDict.get("ingot"~info.name);	
		}else{
	if (oreDict has ("dust"~info.name)){
			material = oreDict.get("dust"~info.name);
					}else{
			material = oreDict.get("gem"~info.name);
			
			
		}
	}
	if (info.name == "Slimeball"){
		material = oreDict.get("slimeball");
	}
	
	recipes.addShaped("ntp " ~info.name ~ " coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ (info.name).toLowerCase() ~ "stabilizer")*2,
	[[material,material, material],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_basestabilizer>, <ore:ingotHSLASteel>],
	[material,material, material]]); 
	
}
	
for info in StabilizerInfoList {
	addStabilizerRecipe(info);
}
	
function addLiquidRecipe (core as LiquidStabilizerInfo){
	var stab = itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ (core.name).toLowerCase() ~ "stabilizer");
	Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_basestabilizer>, (core.inliquid)*1296, stab*2);
}
	
for core in LiquidStabilizerInfoList {
	addLiquidRecipe(core);
}	

	

	