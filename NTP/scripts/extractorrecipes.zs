import scripts.nc_script_addons.NTP.coilclasses.ExtractorInfo;
import scripts.nc_script_addons.NTP.coilextractorlist.ExtractorInfoList;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.AlloyFurnace;
import crafttweaker.item.IItemTransformer;

var smore = <nuclearcraft:smore>;
var smored = <ore:ingotSmore>;
smored.add(smore);

var radio = <trinity:salted_sand>;
var radiod = <ore:blockRadioactiveEarth>;
radiod.add(radio);

val ahetank = <qmd:cell:5>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}});
val ahetankre = ahetank.transformReplace(<qmd:cell>);
val ahe3tank = <qmd:cell:4>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}});
val ahe3tankre = ahe3tank.transformReplace(<qmd:cell>) ;



recipes.addShaped("ntp base extractor coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_baseextractor")*2,
	[[<ore:gemLapis>,<ore:ingotGold>, <ore:gemLapis>],
	[<ore:ingotHSLASteel>, <ore:gemEmerald>, <ore:ingotHSLASteel>],
	[<ore:ingotGold>,<ore:ingotGold>, <ore:ingotGold>]]); 
	
recipes.addShaped("ntp antihelium coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_antiheliumextractor")*2,
	[[ahetankre,ahetankre,ahetankre],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_baseextractor>, <ore:ingotHSLASteel>],
	[ahetankre,ahetankre, ahetankre]]);	

recipes.addShaped("ntp antihelium3 coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_antihelium3extractor")*2,
	[[ahe3tankre,ahe3tankre,ahe3tankre],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_baseextractor>, <ore:ingotHSLASteel>],
	[ahe3tankre,ahe3tankre, ahe3tankre]]);	





function addExtractorRecipe (info as ExtractorInfo){
	var oring as string[] = ["ingot","dust","gem","stone"];
	var material as IIngredient;	
	
	if (oreDict has ("ingot"~info.name)){
	material = oreDict.get("ingot"~info.name);	
		}else{
	if (oreDict has ("dust"~info.name)){
			material = oreDict.get("dust"~info.name);
					}else{ 
					if (oreDict has ("gem"~info.name)){
					material = oreDict.get("gem"~info.name);
						}else{					
					if (oreDict has ("stone"~info.name)){
					material = oreDict.get("stone"~info.name);}
						else{material = oreDict.get("block"~info.name);}
				}
			}			
		}
	
		
	recipes.addShaped("ntp " ~info.name ~ " coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ (info.name).toLowerCase() ~ "extractor")*2,
	[[material,material, material],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_baseextractor>, <ore:ingotHSLASteel>],
	[material,material, material]]); 
	
}
	
for info in ExtractorInfoList {
	addExtractorRecipe(info);
}
