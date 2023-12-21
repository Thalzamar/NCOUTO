import scripts.nc_script_addons.NTP.coilclasses.ConverterInfo;
import scripts.nc_script_addons.NTP.coilconverterlist.ConverterInfoList;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.AlloyFurnace;

var purpur = <minecraft:purpur_block>;
var purped = <ore:stonePurpur>;
purped.add(purpur);

var barat = <trinity:solid_baratol>;
var barared = <ore:stoneBaratol>;
barared.add(barat);



recipes.addShaped("ntp base Converter coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_baseconverter")*2,
	[[<ore:blockRedstone>,<ore:ingotSilver>, <ore:blockRedstone>],
	[<ore:ingotSilver>, <ore:ingotHSLASteel>, <ore:ingotSilver>],
	[<ore:blockRedstone>,<ore:blockSilver>, <ore:blockRedstone>]]); 

val attank = <qmd:cell:3>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}});
val attankre = attank.transformReplace(<qmd:cell>);
	
recipes.addShaped("ntp antitritium coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_antitritiumconverter")*2,
	[[attankre,attankre,attankre],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_baseconverter>, <ore:ingotHSLASteel>],
	[attankre,attankre, attankre]]);	

function addConverterRecipe (info as ConverterInfo){
	var oring as string[] = ["ingot","dust","gem","stone"];
	var material as IIngredient;	
	
	if (oreDict has ("ingot"~info.name)){
	material = oreDict.get("ingot"~info.name);	
		}else{
	if (oreDict has ("dust"~info.name)){
			material = oreDict.get("dust"~info.name);
					}else{ 
					if (oreDict has ("gem"~info.name)){
					material = oreDict.get("gem"~info.name);}
						else{material = oreDict.get("stone"~info.name);}
			}			
		}
	
		
	recipes.addShaped("ntp " ~info.name ~ " coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ (info.name).toLowerCase() ~ "converter")*2,
	[[material,material, material],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_baseconverter>, <ore:ingotHSLASteel>],
	[material,material, material]]); 
	
}
	
for info in ConverterInfoList {
	addConverterRecipe(info);
}
