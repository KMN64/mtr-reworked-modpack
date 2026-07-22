//Import
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

<ore:sheetTitaniumAluminide>.remove(<advancedrocketry:productsheet>);
<ore:dustTitaniumAluminide>.remove(<advancedrocketry:productdust>);
<ore:ingotTitaniumAluminide>.remove(<advancedrocketry:productingot>);
<ore:stickTitaniumAluminide>.remove(<advancedrocketry:productrod>);
<ore:nuggetTitaniumAluminide>.remove(<advancedrocketry:productnugget>);
<ore:plateTitaniumAluminide>.remove(<advancedrocketry:productplate>);
<ore:gearTitaniumAluminide>.remove(<advancedrocketry:productgear>);

<ore:sheetAluminiumMagnesiumTitanide>.add(<advancedrocketry:productsheet>);
<ore:dustAluminiumMagnesiumTitanide>.add(<advancedrocketry:productdust>);
<ore:ingotAluminiumMagnesiumTitanide>.add(<advancedrocketry:productingot>);
<ore:stickAluminiumMagnesiumTitanide>.add(<advancedrocketry:productrod>);
<ore:rodAluminiumMagnesiumTitanide>.addAll(<ore:stickAluminiumMagnesiumTitanide>);
<ore:nuggetAluminiumMagnesiumTitanide>.add(<advancedrocketry:productnugget>);
<ore:plateAluminiumMagnesiumTitanide>.add(<advancedrocketry:productplate>);
<ore:gearAluminiumMagnesiumTitanide>.add(<advancedrocketry:productgear>);