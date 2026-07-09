//Import
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.immersiveintelligence.PrecisionAssembler;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.MetalPress;
import mods.immersivetechnology.MeltingCrucible;
import mods.immersiveintelligence.ChemicalBath;
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Blueprint;
import mods.immersiveintelligence.ammo.Ammo;
import mods.immersiveintelligence.ammo.CoreMaterialBuilder;
import mods.mekanism.combiner;
import mods.immersiveintelligence.Electrolyzer;

//Hide AR Steel gear
<ore:gearSteel>.remove(<libvulpes:productgear:6>);
removeAndHide(<libvulpes:productgear:6>);

//II recipes
recipes.remove(<immersiveintelligence:metal_decoration:2>);
recipes.addShaped(<immersiveintelligence:metal_decoration:2>,
 [[<immersiveintelligence:material:7>, <immersiveintelligence:metal_decoration:6>, <immersiveintelligence:material:7>],
 [<ore:circuitBoardPlastic>, <ore:wireTungsten>, <ore:circuitBoardPlastic>],
 [<immersiveintelligence:material:7>, <immersiveintelligence:metal_decoration:6>, <immersiveintelligence:material:7>]]);
recipes.addShaped(<immersiveintelligence:metal_decoration:2>,
 [[<immersiveintelligence:material:7>, <immersiveintelligence:metal_decoration:6>, <immersiveintelligence:material:7>],
 [<ore:plateAdvancedElectronicAlloy>, <ore:wireTungsten>, <ore:plateAdvancedElectronicAlloy>],
 [<immersiveintelligence:material:7>, <immersiveintelligence:metal_decoration:6>, <immersiveintelligence:material:7>]]);

//II Gear recipes
recipes.addShaped(<immersiveintelligence:motor_gear:3> ,
 [[<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>],
 [null, <ore:ingotSteel>, null],
 [<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>]]);
recipes.remove(<immersiveintelligence:motor_gear:2>);
recipes.addShaped(<immersiveintelligence:motor_gear:2>,
 [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>],
 [null, <ore:ingotIron>, null],
 [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>]]);
recipes.remove(<immersiveintelligence:motor_gear>);
recipes.addShaped(<immersiveintelligence:motor_gear>,
 [[<ore:stickCopper>, <ore:plateCopper>, <ore:stickCopper>],
 [null, <ore:ingotCopper>, null],
 [<ore:stickCopper>, <ore:plateCopper>, <ore:stickCopper>]]);
recipes.addShaped(<immersiveintelligence:motor_gear:4>,
 [[<ore:stickTungsten>, <ore:plateTungsten>, <ore:stickTungsten>],
 [null, <ore:ingotTungsten>, null],
 [<ore:stickTungsten>, <ore:plateTungsten>, <ore:stickTungsten>]]);
recipes.remove(<immersiveintelligence:motor_gear:1>);
recipes.addShaped(<immersiveintelligence:motor_gear:1>,
 [[<ore:stickBrass>, <ore:plateBrass>, <ore:stickBrass>],
 [null, <ore:ingotBrass>, null],
 [<ore:stickBrass>, <ore:plateBrass>, <ore:stickBrass>]]);

//Sawblades
recipes.remove(<immersiveintelligence:sawblade:2>);
recipes.addShaped(<immersiveintelligence:sawblade:2>,
 [[null, <ore:dustTungsten>, null],
 [<ore:dustTungsten>, <immersiveintelligence:motor_gear:4>, <ore:dustTungsten>],
 [null, <ore:dustTungsten>, null]]);
recipes.remove(<immersiveintelligence:sawblade>);
recipes.addShaped(<immersiveintelligence:sawblade>,
 [[null, <ore:dustIron>, null],
 [<ore:dustIron>, <immersiveintelligence:motor_gear:2>, <ore:dustIron>],
 [null, <ore:dustIron>, null]]);
recipes.remove(<immersiveintelligence:sawblade:1>);
recipes.addShaped(<immersiveintelligence:sawblade:1>,
 [[null, <ore:dustSteel>, null],
 [<ore:dustSteel>, <immersiveintelligence:motor_gear:3>, <ore:dustSteel>],
 [null, <ore:dustSteel>, null]]);

//Salt Ore -> Molten Salt
//Crusher.removeRecipesForInput(<ore:oreSalt>.firstItem);
MeltingCrucible.addRecipe(<liquid:moltensalt> * 1000, <ore:oreSalt>, 320);

//Cutting circuit
<ore:circuitBasic>.remove(<immersiveengineering:material:27>);
<ore:circuitAdvanced>.remove(<immersiveintelligence:material:7>);
<ore:circuitElite>.remove(<immersiveintelligence:material:12>);
recipes.remove(<ore:plateSilicon>.firstItem);
PrecisionAssembler.removeRecipe(<ore:plateSilicon>.firstItem);
PrecisionAssembler.removeRecipe(<ore:ingotSilicon>.firstItem);
PrecisionAssembler.addRecipe(<ore:waferGoldDopedSilicon>.firstItem,null,[<ore:bouleGoldDopedSilicon>], ["buzzsaw"], ["buzzsaw work main"], 24000, 3);
PrecisionAssembler.addRecipe(<ore:waferLithiumDopedSilicon>.firstItem,null,[<ore:bouleLithiumDopedSilicon>], ["buzzsaw"], ["buzzsaw work main"], 24000, 3);
PrecisionAssembler.addRecipe(<ore:waferGalliumDopedSilicon>.firstItem,null,[<ore:bouleGalliumDopedSilicon>], ["buzzsaw"], ["buzzsaw work main"], 24000, 3);

PrecisionAssembler.addRecipe(<ore:circuitPlateIntegratedCircuit>.firstItem,null,[<ore:waferIntegratedCircuit>], ["buzzsaw"], ["buzzsaw work main"], 24000, 3);
PrecisionAssembler.addRecipe(<ore:circuitPlateCentralProcessingUnit>.firstItem,null,[<ore:waferCentralProcessingUnit>], ["buzzsaw"], ["buzzsaw work main"], 24000, 3);
PrecisionAssembler.addRecipe(<ore:circuitPlateNANDMemory>.firstItem,null,[<ore:waferNANDMemory>], ["buzzsaw"], ["buzzsaw work main"], 24000, 3);
PrecisionAssembler.addRecipe(<ore:circuitPlateRandomAccessMemory>.firstItem,null,[<ore:waferRandomAccessMemory>], ["buzzsaw"], ["buzzsaw work main"], 24000, 3);
PrecisionAssembler.addRecipe(<ore:circuitPlateSystemOnChip>.firstItem,null,[<ore:waferSystemOnChip>], ["buzzsaw"], ["buzzsaw work main"], 24000, 3);

<ore:waferAny>.addAll(<ore:waferGoldDopedSilicon>);
<ore:waferAny>.addAll(<ore:waferLithiumDopedSilicon>);
<ore:waferAny>.addAll(<ore:waferGalliumDopedSilicon>);
PrecisionAssembler.removeRecipe(<ore:transistor>.firstItem);
PrecisionAssembler.addRecipe(<ore:transistor>.firstItem * 4, <ore:nuggetCopper>.firstItem, [<ore:waferAny> * 2, <ore:wireCopper>.firstItem * 3, <ore:plateAluminum>, <ore:dyeBlack>], ["inserter", "solderer", "drill"], ["inserter pick first", "inserter drop main", "drill work main", "solderer work first", "drill work main", "inserter pick second", "inserter drop main", "solderer work main", "inserter pick third", "inserter drop main", "solderer work main"], 50000, 0.9);

hide(<ore:lens>.firstItem);

//H2SO4 recipes
ChemicalBath.addRecipe(<ore:preparedWaferCentralProcessingUnit>, <ore:etchedWaferCentralProcessingUnit>.firstItem, <liquid:sulfuric_acid> * 125, 15000, 360);
ChemicalBath.addRecipe(<ore:preparedWaferIntegratedCircuit>, <ore:etchedWaferIntegratedCircuit>.firstItem, <liquid:sulfuric_acid> * 125, 15000, 360);
ChemicalBath.addRecipe(<ore:circuitBoardUnpreparedPlastic>, <ore:circuitBoardPlastic>.firstItem, <liquid:sulfuric_acid> * 125, 150000, 560);
ChemicalBath.addRecipe(<ore:circuitBoardUnpreparedPlatinumBackedPlastic>, <ore:circuitBoardPlatinumBackedPlastic>.firstItem, <liquid:sulfuric_acid> * 125, 150000, 560);

//Crafting things
<ore:lensInfrared>.addAll(<ore:lensRuby>);
recipes.remove(<ore:lens>.firstItem);
recipes.replaceAllOccurences(<ore:lens>, <ore:lensGlass>, <immersiveintelligence:binoculars>);
recipes.replaceAllOccurences(<ore:lens>, <ore:lensGlass>, <immersiveintelligence:armor_upgrade>);
recipes.replaceAllOccurences(<ore:lens>, <ore:lensGlass>, <ore:cameraAdvanced>.firstItem);
recipes.replaceAllOccurences(<ore:lens>, <ore:lensGlass>, <ore:cameraBasic>.firstItem);

//Crusher.addRecipe(<ore:dustMixedFissileMetals>.firstItem, <ore:fuelPelletMixedFissileMetals>.firstItem, 2400);
Mixer.removeRecipe(<liquid:hydrofluoric_acid>);
Mixer.removeRecipe(<liquid:sulfuric_acid>);

//Circuits removal
<ore:wireCutterAny>.add(<immersiveengineering:tool:1>);
<ore:wireCutterAny>.add(<immersiveintelligence:electric_wirecutter>);
Blueprint.addRecipe("Circuit Assembly", <immersiveengineering:material:27>, [<immersiveintelligence:material:3>, <ore:transistor>.firstItem * 2]);
var basicCircuits = [<immersiveintelligence:circuit_functional>,
                        <immersiveintelligence:circuit_functional:2>,
                        <immersiveintelligence:circuit_functional:3>,
                        <immersiveintelligence:circuit_functional:5>,
                        <immersiveintelligence:circuit_functional:7>,
                        <immersiveintelligence:circuit_functional:10>
                        ] as IItemStack[];
for item in basicCircuits{
    Blueprint.removeRecipe(item);
    Blueprint.addRecipe("basic_functional_circuits", item, [<immersiveengineering:material:27>, <ore:wireCutterAny>]);
}


var advancedCircuits = [<immersiveintelligence:circuit_functional:1>,
                        <immersiveintelligence:circuit_functional:4>,
                        <immersiveintelligence:circuit_functional:6>,
                        <immersiveintelligence:circuit_functional:8>,
                        <immersiveintelligence:circuit_functional:9>,
                        <immersiveintelligence:circuit_functional:11>,
                        <immersiveintelligence:circuit_functional:12>
                        ] as IItemStack[];
for item in advancedCircuits{
    Blueprint.removeRecipe(item);
    Blueprint.addRecipe("advanced_functional_circuits", item, [<immersiveintelligence:material:7>, <ore:wireCutterAny>]);
}

Blueprint.removeRecipe(<ore:circuitAdvancedRaw>.firstItem);
Blueprint.removeRecipe(<ore:circuitProcessorRaw>.firstItem);
Blueprint.addRecipe("advanced_circuits", <ore:circuitAdvancedRaw>.firstItem, [<ore:circuitBasicRaw>.firstItem * 2, <ore:circuitBoardPlastic>]);
Blueprint.addRecipe("processors", <ore:circuitProcessorRaw>.firstItem, [<ore:circuitAdvancedRaw>.firstItem * 2, <ore:circuitBoardPlatinumBackedPlastic>]);

recipes.remove(<immersiveintelligence:assembly_scheme>.withTag({recipeItem: {id: "immersiveintelligence:material", Count: 4 as byte}}));
recipes.addShaped(<immersiveintelligence:assembly_scheme>.withTag({recipeItem: {id: "immersiveintelligence:material", Count: 4 as byte}}),
 [[<ore:waferGoldDopedSilicon> | <ore:waferLithiumDopedSilicon> | <ore:waferGalliumDopedSilicon>, <ore:plateAdvancedElectronicAlloy>, <ore:waferGoldDopedSilicon> | <ore:waferLithiumDopedSilicon> | <ore:waferGalliumDopedSilicon>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
MetalPress.removeRecipe(<ore:plateAdvancedElectronicAlloy>.firstItem);

//Depleted Uranium
Ammo.removeCore("core_uranium");
Ammo.removeShrapnel("uranium");
Ammo.addShrapnel("depleted_uranium_dioxide", 3552822, "immersiveengineering:textures/blocks/sheetmetal_uranium", 8, 0.45, 8);
var duo_core = CoreMaterialBuilder.create("depleted_uranium_dioxide");
duo_core.setColor(3552822);
duo_core.setDensity(0.45);
duo_core.setDmgModifier(1.35);
duo_core.setExplosionModifier(0.75);
duo_core.setPenHardness(36);
duo_core.setStack(<ore:nuggetDepletedUraniumDioxide>.firstItem);
duo_core.register();

<ore:dustQuartz>.remove(<immersiveintelligence:material_dust:7>);
removeAndHide(<immersiveintelligence:material_dust:7>);
combiner.removeRecipe(<minecraft:quartz_ore>, <immersiveintelligence:material_dust:7>, <minecraft:cobblestone>);
ChemicalBath.removeRecipe(<immersiveintelligence:material_dust:7>);
ChemicalBath.addRecipe(<ore:dustQuartzDirty>, <ore:dustQuartz>.firstItem, <liquid:hydrofluoric_acid> * 1000, 4200, 240);
recipes.replaceAllOccurences(<immersiveintelligence:material_dust:5>, <libvulpes:productdust:3>, <ore:dustVulcanizationCompound>.firstItem);
<ore:pulpWood>.remove(<mekanism:sawdust>);

recipes.replaceAllOccurences(<ore:ingotMagnet>, <ore:dustNeodymium>, <ore:engineElectricCompactAdvanced>.firstItem);
recipes.replaceAllOccurences(<ore:ingotMagnet>, <ore:dustNeodymium>, <ore:engineElectricCompact>.firstItem);
recipes.replaceAllOccurences(<ore:ingotMagnet>, <ore:dustNeodymium>, <immersiveintelligence:weapon_upgrade:18>);
recipes.replaceAllOccurences(<ore:ingotMagnet>, <ore:dustNeodymium>, <immersiveintelligence:weapon_upgrade:14>);
recipes.replaceAllOccurences(<ore:ingotMagnet>, <ore:dustNeodymium>, <immersiveintelligence:mine_detector>);
recipes.replaceAllOccurences(<ore:circuitBasic>, <immersiveengineering:material:27>, <immersiveintelligence:mine_detector>);

recipes.remove(<ore:ingotMagnet>.firstItem);
removeAndHide(<ore:ingotMagnet>.firstItem);
Electrolyzer.addRecipe(<liquid:distwater> * 75, <liquid:oxygen> * 25, 16, 8, <liquid:hydrogen> * 50);
//Electrolyzer.removeRecipe(<liquid:brine>);
