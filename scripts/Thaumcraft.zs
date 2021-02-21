# Author: Atricos
# Research Strings can be found in Thaumcraft.jar/thaumcraft/common/config/ConfigRecipes.class

import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.SalisMundus;
import crafttweaker.block.IBlock;
import mods.thaumcraft.Crucible;
import mods.enderio.AlloySmelter as EIOAlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.thermalexpansion.InductionSmelter;
import mods.tconstruct.Alloy;

print("STARTING Thaumcraft.zs");

# Cinderpearl into Blaze Powder is too OP
recipes.removeShaped(<minecraft:blaze_powder>, [[<thaumcraft:cinderpearl>]]);

# Thaumonomicon tooltip
<thaumcraft:thaumonomicon>.addTooltip(format.red(format.bold("Warning:")) + format.white(format.bold(" Recipes shown may be incorrect.")));
<thaumcraft:thaumonomicon>.addTooltip(format.white(format.bold("Always refer to JEI when crafting.")));

# Salis Mundus
# Original in OreProcessingAdditions.zs, duplication here
recipes.remove(<thaumcraft:salis_mundus>);
recipes.addShapeless(<thaumcraft:salis_mundus> * 2, [<thaumcraft:salis_mundus>,<botania:quartz:3>,<botania:manaresource:8>,<abyssalcraft:methane>,<contenttweaker:crystallized_mana_shard>]);

# Arcane Workbench
mods.thaumcraft.SalisMundus.removeSingleConversion(<thaumcraft:arcane_workbench>);
mods.thaumcraft.SalisMundus.addSingleConversion(<extendedcrafting:ender_crafter>.asBlock(), <thaumcraft:arcane_workbench>, "FIRSTSTEPS@1");
<thaumcraft:arcane_workbench>.addTooltip(format.white("Created by Right Clicking on an Extended Crafting"));
<thaumcraft:arcane_workbench>.addTooltip(format.white("Ender Crafter with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# Thaumometer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:thaumometer", "FIRSTSTEPS@2", 20, [<aspect:aer>,<aspect:aqua>,<aspect:ordo>,<aspect:perditio>,<aspect:terra>,<aspect:ignis>], <thaumcraft:thaumometer>, [[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<botania:lens:15>,<contenttweaker:holy_core>],[<contenttweaker:holy_core>,<contenttweaker:holy_core>,<contenttweaker:holy_core>]]);

# Crucible
mods.thaumcraft.SalisMundus.removeSingleConversion(<thaumcraft:crucible>);
mods.thaumcraft.SalisMundus.addSingleConversion(<evilcraft:purifier>.asBlock(), <thaumcraft:crucible>, "UNLOCKALCHEMY@1");
<thaumcraft:crucible>.addTooltip(format.white("Created by Right Clicking on an EvilCraft"));
<thaumcraft:crucible>.addTooltip(format.white("Purifier with some ") + format.lightPurple("Salis Mundus") + format.white("."));

# Wood Table
recipes.remove(<thaumcraft:table_wood>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablewood", "", 5, [], <thaumcraft:table_wood>, [[<botania:livingwood:5>,<botania:livingwood:5>,<botania:livingwood:5>],[<botania:livingwood:5>,null,<botania:livingwood:5>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablewood2", "", 5, [], <thaumcraft:table_wood>, [[null,null,null],[<botania:livingwood:5>,<botania:livingwood:5>,<botania:livingwood:5>],[<botania:livingwood:5>,null,<botania:livingwood:5>]]);

# Research Table
<thaumcraft:research_table>.addTooltip(format.white("Created by placing Scribing Tools"));
<thaumcraft:research_table>.addTooltip(format.white("on a Thaumcraft Wood Table."));

# Scribing Tools
recipes.removeShapeless(<thaumcraft:scribing_tools>, [<*>,<*>,<*>]);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("scribingtoolscraft1", "", 10, [], <thaumcraft:scribing_tools>, [<mysticalagriculture:crafting:24>,<botania:vial:1>,<botania:manaresource:22>,<divinerpg:kraken_skin>,<botania:rune:15>]);
<thaumcraft:scribing_tools>.addTooltip(format.gray(format.italic("Fill me up with some Ink to complete my Research!")));

# Yellow Nitor
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:nitor_yellow>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:nitor", "UNLOCKALCHEMY@3", <thaumcraft:nitor_yellow>, <thermalfoundation:storage_alloy:6>, [<aspect:potentia> * 20, <aspect:ignis> * 20, <aspect:lux> * 20]);

# Quartz Sliver
recipes.remove(<thaumcraft:nugget:9>);
recipes.removeShaped(<minecraft:quartz>, [[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>],[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>],[<thaumcraft:nugget:9>,<thaumcraft:nugget:9>,<thaumcraft:nugget:9>]]);
# Rest is in OreProcessingAdditions.zs

# Vis Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:vis_resonator", "UNLOCKAUROMANCY@2", 20, [<aspect:aer> * 2,<aspect:aqua> * 2], <thaumcraft:vis_resonator>, [[<botania:shimmerrock>,<botania:shimmerrock>,<botania:shimmerrock>],[<botania:shimmerrock>,<contenttweaker:reduction_core>,<botania:shimmerrock>],[<botania:shimmerrock>,<botania:shimmerrock>,<botania:shimmerrock>]]);

# Caster's Gauntlet
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:caster_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:caster_basic", "UNLOCKAUROMANCY@2", 50, [<aspect:aer> * 10,<aspect:aqua> * 10,<aspect:ordo> * 10,<aspect:perditio> * 10,<aspect:terra> * 10,<aspect:ignis> * 10], <thaumcraft:caster_basic>, [[null,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<immersiveengineering:toolupgrade:12>,<contenttweaker:infused_magical_core>],[<contenttweaker:magical_leather>,<thaumcraft:thaumometer>,<contenttweaker:magical_leather>]]);

# Blank Lesser Focus
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:focus_1>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:focus_1", "UNLOCKAUROMANCY", <thaumcraft:focus_1>, <contenttweaker:base_focal_sphere>, [<aspect:vitreus> * 40, <aspect:praecantatio> * 20, <aspect:instrumentum> * 20, <aspect:auram> * 10]);

# Alumentum
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:alumentum>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:alumentum", "INFUSION", <thaumcraft:alumentum>, <abyssalcraft:crystal:22>, [<aspect:potentia> * 20, <aspect:ignis> * 20, <aspect:metallum> * 20, <aspect:perditio> * 10]);

# Enchanted Fabric
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:fabric>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:fabric", "MINDBIOTHAUMIC", 2, [<aspect:ordo> * 1], <thaumcraft:fabric>, [[null,<thaumcraft:salis_mundus>,null],[<thaumcraft:alumentum>,<botania:spellcloth>,<thaumcraft:alumentum>],[null,<thaumcraft:salis_mundus>,null]]);

# Thaumaturge's Robe
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_chest", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_chest>, [[<thaumcraft:fabric>,<botania:manaweavechest>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>]]);

# Thaumaturge's Leggings
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_legs>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_legs", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_legs>, [[<thaumcraft:fabric>,<thaumcraft:fabric>,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweavelegs>,<thaumcraft:fabric>],[<thaumcraft:fabric>,null,<thaumcraft:fabric>]]);

# Thaumaturge's Boots
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:cloth_boots>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_boots", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_boots>, [[<thaumcraft:fabric>,null,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweaveboots>,<thaumcraft:fabric>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:cloth_boots", "UNLOCKINFUSION", 40, [<aspect:ordo> * 10], <thaumcraft:cloth_boots>, [[null,null,null],[<thaumcraft:fabric>,null,<thaumcraft:fabric>],[<thaumcraft:fabric>,<botania:manaweaveboots>,<thaumcraft:fabric>]]);

# Stone Table
recipes.remove(<thaumcraft:table_stone>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablestone", "", 2, [], <thaumcraft:table_stone>, [[<abyssalcraft:stone:5>,<abyssalcraft:stone:5>,<abyssalcraft:stone:5>],[<abyssalcraft:stone:5>,<thaumcraft:table_wood>,<abyssalcraft:stone:5>]]);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("tablestone2", "", 2, [], <thaumcraft:table_stone>, [[null,null,null],[<abyssalcraft:stone:5>,<abyssalcraft:stone:5>,<abyssalcraft:stone:5>],[<abyssalcraft:stone:5>,<thaumcraft:table_wood>,<abyssalcraft:stone:5>]]);

# Arcane Stone
recipes.removeShaped(<thaumcraft:stone_arcane>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thaumcraft:stone_arcane> * 3, <bloodmagic:blood_rune>, null, 200, 720, [<botania:shimmerrock>,<thaumcraft:crystal_essence>]);
EIOAlloySmelter.addRecipe(<thaumcraft:stone_arcane> * 3, [<bloodmagic:blood_rune>,<botania:shimmerrock>,<thaumcraft:crystal_essence>], 32000);

# Focal Manipulator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:wand_workbench>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:wand_workbench", "BASEAUROMANCY@2", 50, [<aspect:terra> * 10,<aspect:ignis> * 5], <thaumcraft:wand_workbench>, [[<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>,<thaumcraft:slab_arcane_stone>],[<thaumcraft:stone_arcane>,<thaumcraft:vis_resonator>,<thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>,<thaumcraft:table_stone>,<thaumcraft:stone_arcane>]]);

# Alchemical Brass Ingot
mods.thermalexpansion.InductionSmelter.removeRecipe(<alchemistry:ingot:30>, <thermalfoundation:material:64> * 3);
mods.thermalexpansion.InductionSmelter.removeRecipe(<alchemistry:ingot:30>, <thermalfoundation:material:128> * 3);
mods.tconstruct.Alloy.removeRecipe(<liquid:brass>);
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot:2>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:brassingot", "METALLURGY@1", <thaumcraft:ingot:2>, <botania:manaresource:7>, [<aspect:instrumentum> * 10, <aspect:cognitio> * 10]);

# Mundane Amulet
recipes.remove(<thaumcraft:baubles:0>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<thaumcraft:baubles:0>, 12000, <botania:cloudpendant>, [<thaumcraft:ingot:2>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]);

# Mundane Ring
recipes.remove(<thaumcraft:baubles:1>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<thaumcraft:baubles:1>, 12000, <botania:dodgering>, [<thaumcraft:ingot:2>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]);

# Mundane Belt
recipes.remove(<thaumcraft:baubles:2>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<thaumcraft:baubles:2>, 12000, <botania:travelbelt>, [<thaumcraft:ingot:2>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]);

# Focus Pouch
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:focus_pouch>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:FocusPouch", "FOCUSPOUCH", 20, [<aspect:ordo> * 10,<aspect:aer> * 5], <thaumcraft:focus_pouch>, [[<contenttweaker:magical_leather>,<thaumcraft:ingot:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<thaumcraft:baubles:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,<contenttweaker:magical_leather>,<contenttweaker:magical_leather>]]);

# Recharge Pedestal
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:recharge_pedestal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:rechargepedestal", "RECHARGEPEDESTAL", 50, [<aspect:ignis> * 5,<aspect:aer> * 5,<aspect:perditio> * 5], <thaumcraft:recharge_pedestal>, [[null,<botania:rune:11>,null],[<actuallyadditions:block_crystal_empowered:2>,<thaumcraft:vis_resonator>,<actuallyadditions:block_crystal_empowered:2>],[<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>]]);

# Workbench Charger
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_workbench_charger>);
#<thaumcraft:arcane_workbench_charger>.addTooltip("Item disabled. Causes irreversible");
#<thaumcraft:arcane_workbench_charger>.addTooltip("crashes and world corruption.");
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:workbenchcharger", "WORKBENCHCHARGER", 350, [<aspect:ordo> * 5,<aspect:aer> * 5,<aspect:aqua> * 5], <thaumcraft:arcane_workbench_charger>, [[null,<thaumcraft:vis_resonator>,null],[<thaumcraft:plank_greatwood>,null,<thaumcraft:plank_greatwood>],[<thaumcraft:ingot:2>,null,<thaumcraft:ingot:2>]]);
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Find the perfect chunk in a Magical"));
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Forest biome and have a full set of"));
<thaumcraft:arcane_workbench_charger>.addTooltip(format.white("Thaumaturge Armor on to craft this!"));

# Glass Phial
recipes.remove(<thaumcraft:phial>);
recipes.addShaped(<thaumcraft:phial> * 4, [[<botania:elfglass>,<contenttweaker:intensive_catalyst>,<botania:elfglass>],[null,<botania:elfglass>,null]]);

# Mirrored Glass
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mirrored_glass>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:mirrorglass", "BASEARTIFICE", 30, [<aspect:aqua> * 2,<aspect:ordo> * 2,<aspect:aer> * 2], <thaumcraft:mirrored_glass>, [[<thaumcraft:quicksilver>,<thaumcraft:quicksilver>,<thaumcraft:quicksilver>],[<thaumcraft:quicksilver>,<contenttweaker:purified_tablet>,<thaumcraft:quicksilver>],[<thaumcraft:quicksilver>,<thaumcraft:quicksilver>,<thaumcraft:quicksilver>]]);

# Sanity Checker
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:sanity_checker>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:sanitychecker", "WARP", 50, [<aspect:ordo> * 10,<aspect:perditio> * 10], <thaumcraft:sanity_checker>, [[<thaumcraft:brain>,<thaumcraft:ingot:2>,null],[<thaumcraft:mirrored_glass>,<contenttweaker:rune_of_deception>,<thaumcraft:ingot:2>],[<thaumcraft:brain>,<thaumcraft:ingot:2>,null]]);

# Essentia Filter
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:TubeFilter", "TUBES", 5, [<aspect:aqua> * 2], <thaumcraft:filter>, [[empowered_glod_crystal,<thaumcraft:plank_silverwood>,empowered_glod_crystal],[empowered_glod_crystal,<botania:rune>,empowered_glod_crystal],[empowered_glod_crystal,<thaumcraft:plank_silverwood>,empowered_glod_crystal]]);

# Rare Earths
<thaumcraft:nugget:10>.addTooltip(format.gray(format.italic("<Hold Shift for info on how to acquire>")));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Dropped rarely by any of the following Ores:"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Coal, Redstone, Quartz. Amber, Diamond;"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("in ascending order or drop rate."));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Alternatively, smelt any of the following Ores"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("in the Infernal Furnace: Iron, Gold, Silver,"));
<thaumcraft:nugget:10>.addShiftTooltip(format.white("Copper, Tin, Lead, Cinnabar."));

# Thaumium Ingot
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:ingot>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:thaumiumingot", "METALLURGY@2", <thaumcraft:ingot>, <thaumcraft:ingot:2>, [<aspect:praecantatio> * 20,<aspect:metallum> * 15,<aspect:alkimia> * 10,<aspect:exanimis> * 10]);

# Goggles of Revealing
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:goggles>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Goggles", "UNLOCKARTIFICE", 50, [<aspect:ordo> * 15,<aspect:perditio> * 5], <thaumcraft:goggles>, [[<contenttweaker:magical_leather>,<thaumcraft:ingot:2>,<contenttweaker:magical_leather>],[<contenttweaker:magical_leather>,null,<contenttweaker:magical_leather>],[<thaumcraft:thaumometer>,<thaumcraft:ingot:2>,<thaumcraft:thaumometer>]]);

# Simple Arcane Mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_simple>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:mechanism_simple", "BASEARTIFICE", 10, [<aspect:ignis> * 2,<aspect:perditio> * 2], <thaumcraft:mechanism_simple>, [[null,<thaumcraft:plate>,null],[<thaumcraft:plate>,<enderio:item_material:73>,<thaumcraft:plate>],[null,<simplyjetpacks:metaitemmods:16>,null]]);

# Arcane Lamp
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:lamp_arcane>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:ArcaneLamp", "ARCANELAMP", 15, [<aspect:ignis> * 2,<aspect:aer> * 2], <thaumcraft:lamp_arcane>, [[null,<thaumcraft:plate>,null],[<thaumcraft:plate>,<thaumcraft:amber_block>,<thaumcraft:plate>],[null,<thaumcraft:plate>,null]]);

# Hungry Chest
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:hungry_chest>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:HungryChest", "HUNGRYCHEST", 10, [<aspect:terra> * 2,<aspect:aqua> * 2], <thaumcraft:hungry_chest>, [[<thaumcraft:log_greatwood>,<ore:trapdoorWood>,<thaumcraft:log_greatwood>],[<thaumcraft:plank_greatwood>,<minecraft:chest>,<thaumcraft:plank_greatwood>],[<thaumcraft:log_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:log_greatwood>]]);

# Arcane Bellows
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:bellows>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Bellows", "BELLOWS", 5, [<aspect:aer> * 8,<aspect:ignis>], <thaumcraft:bellows>, [[<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>],[<contenttweaker:magical_leather>,<thaumcraft:ingot:2>,<contenttweaker:magical_leather>],[<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>]]);

# Grappler can crash the game
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_spool>);
<thaumcraft:grapple_gun_spool>.addTooltip("Item disabled. It can crash the game.");
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun_tip>);
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:grapple_gun>);

# Morphic Resonator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:morphic_resonator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:MorphicResonator", "BASEALCHEMY", 20, [<aspect:aer> * 4,<aspect:ignis> * 2,<aspect:ordo>,<aspect:perditio>], <thaumcraft:morphic_resonator>, [[<ore:blockGlassColorless>,<thaumcraft:nugget:10>,<ore:blockGlassColorless>],[<thaumcraft:plate>,<thaumcraft:vis_resonator>,<thaumcraft:plate>],[<ore:blockGlassColorless>,<thaumcraft:nugget:10>,<ore:blockGlassColorless>]]);

# Thaumium Sword
recipes.remove(<thaumcraft:thaumium_sword>);
recipes.addShaped(<thaumcraft:thaumium_sword>, [[<thaumcraft:ingot>],[<thaumcraft:ingot>],[<botania:elementiumsword>]]);

# Thaumium Pickaxe
recipes.remove(<thaumcraft:thaumium_pick>);
recipes.addShaped(<thaumcraft:thaumium_pick>, [[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>],[null,<botania:elementiumpick>,null],[null,<evilcraft:dark_stick>,null]]);

# Thaumium Shovel
recipes.remove(<thaumcraft:thaumium_shovel>);
recipes.addShaped(<thaumcraft:thaumium_shovel>, [[<thaumcraft:ingot>],[<botania:elementiumshovel>],[<evilcraft:dark_stick>]]);

# Thaumium Axe
recipes.remove(<thaumcraft:thaumium_axe>);
recipes.addShapedMirrored(<thaumcraft:thaumium_axe>, [[<thaumcraft:ingot>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<botania:elementiumaxe>],[null,<evilcraft:dark_stick>]]);

# Thaumium Hoe
recipes.remove(<thaumcraft:thaumium_hoe>);
recipes.addShapedMirrored(<thaumcraft:thaumium_hoe>, [[<thaumcraft:ingot>,<thaumcraft:ingot>],[null,<abyssalcraft:dreadiumhoe>],[null,<evilcraft:dark_stick>]]);

# Thaumium Helm
recipes.remove(<thaumcraft:thaumium_helm>);
recipes.addShaped(<thaumcraft:thaumium_helm>, [[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<botania:terrasteelhelm>,<thaumcraft:ingot>]]);

# Thaumium Chestplate
recipes.remove(<thaumcraft:thaumium_chest>);
recipes.addShaped(<thaumcraft:thaumium_chest>, [[<thaumcraft:ingot>,<botania:terrasteelchest>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>]]);

# Thaumium Leggings
recipes.remove(<thaumcraft:thaumium_legs>);
recipes.addShaped(<thaumcraft:thaumium_legs>, [[<thaumcraft:ingot>,<thaumcraft:ingot>,<thaumcraft:ingot>],[<thaumcraft:ingot>,<botania:terrasteellegs>,<thaumcraft:ingot>],[<thaumcraft:ingot>,null,<thaumcraft:ingot>]]);

# Thaumium Boots
recipes.remove(<thaumcraft:thaumium_boots>);
recipes.addShaped(<thaumcraft:thaumium_boots>, [[<thaumcraft:ingot>,null,<thaumcraft:ingot>],[<thaumcraft:ingot>,<botania:terrasteelboots>,<thaumcraft:ingot>]]);

# Magic Tallow
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:tallow>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:hedge_tallow", "HEDGEALCHEMY@1", <thaumcraft:tallow>, <thaumcraft:flesh_block>, [<aspect:ignis> * 10,<aspect:sensus> * 10,<aspect:fabrico> * 10,<aspect:perditio> * 5]);

# Essentia Smeltery
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:smelter_basic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:EssentiaSmelter", "BELLOWS", 40, [<aspect:ignis> * 20,<aspect:aer> * 4], <thaumcraft:smelter_basic>, [[<thaumcraft:plate>,<thaumcraft:crucible>,<thaumcraft:plate>],[<thaumcraft:plate>,<enderio:block_enhanced_alloy_smelter>,<thaumcraft:plate>],[<thaumcraft:plate>,<enderio:block_enhanced_alloy_smelter>,<thaumcraft:plate>]]);

# Vis Generator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:vis_generator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:VisGenerator", "VISGENERATOR", 25, [<aspect:ignis> * 10,<aspect:aer> * 5], <thaumcraft:vis_generator>, [[<thaumcraft:log_greatwood>,<thaumcraft:plate>,<thaumcraft:log_greatwood>],[<thaumcraft:nugget:10>,<thaumcraft:vis_resonator>,<thaumcraft:nugget:10>],[<thaumcraft:log_greatwood>,<enderio:block_stirling_generator>,<thaumcraft:log_greatwood>]]);

# Arcane Ear
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:arcane_ear>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:ArcaneEar", "ARCANEEAR", 10, [<aspect:aer> * 8], <thaumcraft:arcane_ear>, [[<thaumcraft:plate>,<thaumcraft:plate>,<thaumcraft:plate>],[null,<thaumcraft:mechanism_simple>,null],[<thaumcraft:slab_greatwood>,<thaumcraft:slab_greatwood>,<thaumcraft:slab_greatwood>]]);

# Thaumic Dioptra
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:dioptra>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:dioptra", "DIOPTRA", 30, [<aspect:aer> * 10,<aspect:aqua> * 10], <thaumcraft:dioptra>, [[<thaumcraft:stone_arcane>,<thaumcraft:vis_resonator>,<thaumcraft:stone_arcane>],[<thaumcraft:plate>,<thaumcraft:thaumometer>,<thaumcraft:plate>],[<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>]]);

# Arcane Pattern Crafter
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:pattern_crafter>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:patterncrafter", "ARCANEPATTERNCRAFTER", 30, [<aspect:terra> * 8,<aspect:aqua> * 8,<aspect:ordo> * 8], <thaumcraft:pattern_crafter>, [[null,<minecraft:hopper>,null],[<thaumcraft:mechanism_simple>,<appliedenergistics2:material:52>,<thaumcraft:mechanism_simple>],[null,<thaumcraft:vis_resonator>,null]]);

# Arcane Levitator
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:levitator>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Levitator", "LEVITATOR", 35, [<aspect:aer> * 16], <thaumcraft:levitator>, [[<thaumcraft:plank_greatwood>,<thaumcraft:plate:2>,<thaumcraft:plank_greatwood>],[<thaumcraft:mechanism_simple>,<thaumcraft:nitor_yellow>,<thaumcraft:mechanism_simple>],[<thaumcraft:plank_greatwood>,<thaumcraft:mechanism_simple>,<thaumcraft:plank_greatwood>]]);

# Complex Arcane Mechanism
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:mechanism_complex>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:mechanism_complex", "BASEARTIFICE", 25, [<aspect:ignis> * 10,<aspect:perditio> * 10,<aspect:aer> * 4], <thaumcraft:mechanism_complex>, [[null,<thaumcraft:mechanism_simple>,null],[<thaumcraft:plate:2>,<botania:rune:13>,<thaumcraft:plate:2>],[null,<thaumcraft:mechanism_simple>,null]]);

# Liquid Death Bucket
mods.thaumcraft.Crucible.removeRecipe(<forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}));
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:LiquidDeath", "LIQUIDDEATH", <forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}), <minecraft:bucket>, [<aspect:mortuus> * 100,<aspect:perditio> * 75,<aspect:alkimia> * 25,<aspect:spiritus> * 25,<aspect:alienis> * 10]);

# Everfull Urn
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:everfull_urn>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:EverfullUrn", "EVERFULLURN", <thaumcraft:everfull_urn>, <roots:unending_bowl>, [<aspect:terra> * 10,<aspect:fabrico> * 10]);

# Arcane Alembic
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:alembic>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Alembic", "ESSENTIASMELTER", 40, [<aspect:aqua> * 15,<aspect:ignis> * 10], <thaumcraft:alembic>, [[<thaumcraft:plank_greatwood>,<thaumcraft:filter>,<thaumcraft:plank_greatwood>],[<thaumcraft:plate>,<bloodmagic:blood_tank>,<thaumcraft:plate>],[<thaumcraft:plank_greatwood>,<thaumcraft:filter>,<thaumcraft:plank_greatwood>]]);

# Warded Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_normal>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:WardedJar", "WARDEDJARS", 5, [<aspect:aqua> * 5], <thaumcraft:jar_normal>, [[null,<thaumcraft:slab_greatwood>,null],[<thaumcraft:phial>,<botania:rune>,<thaumcraft:phial>],[null,<thaumcraft:phial>,null]]);

# Void Jar
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:jar_void>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:JarVoid", "WARDEDJARS", 10, [<aspect:perditio> * 5], <thaumcraft:jar_void>, [<thaumcraft:jar_normal>,<bloodmagic:component:4>]);

# Brass Lid Brace
recipes.remove(<thaumcraft:jar_brace>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("BrassBrace", "WARDEDJARS", 10, [<aspect:aer> * 2], <thaumcraft:jar_brace>, [[<thaumcraft:nugget:8>,<thaumcraft:plank_greatwood>,<thaumcraft:nugget:8>],[<thaumcraft:plank_greatwood>,null,<thaumcraft:plank_greatwood>],[<thaumcraft:nugget:8>,<thaumcraft:plank_greatwood>,<thaumcraft:nugget:8>]]);

# Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:Tube", "TUBES", 10, [<aspect:aqua> * 3,<aspect:aer> * 2], <thaumcraft:tube> * 16, [[<enderio:item_alloy_ingot:6>,<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_ingot:6>],[<thaumcraft:quicksilver>,<botania:rune>,<thaumcraft:quicksilver>],[<enderio:item_alloy_ingot:6>,<simplyjetpacks:metaitemmods:12>,<enderio:item_alloy_ingot:6>]]);

# Restricted Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_restrict>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:TubeRestrict", "TUBES", 10, [<aspect:terra> * 3], <thaumcraft:tube_restrict>, [<thaumcraft:tube>,<bloodmagic:component:9>]);

# Directional Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_oneway>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:TubeOneway", "TUBES", 10, [<aspect:aqua> * 3], <thaumcraft:tube_oneway>, [<thaumcraft:tube>,<bloodmagic:component:31>]);

# Filtered Essentia Tube
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_filter>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:Filter", "TUBES", 10, [<aspect:ordo> * 3], <thaumcraft:tube_filter>, [<thaumcraft:tube>,<thaumcraft:filter>]);

# Essentia Valve
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_valve>);
mods.thaumcraft.ArcaneWorkbench.registerShapelessRecipe("thaumcraft:TubeValve", "TUBES", 10, [<aspect:aer> * 3], <thaumcraft:tube_valve>, [<thaumcraft:tube>,<mekanism:basicblock2:8>]);

# Essentia Buffer
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:tube_buffer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:TubeBuffer", "TUBES", 25, [<aspect:ignis> * 5,<aspect:aqua> * 5,<aspect:aer> * 5,<aspect:ordo> * 5], <thaumcraft:tube_buffer>, [[<thaumcraft:phial>,<thaumcraft:tube_valve>,<thaumcraft:phial>],[<thaumcraft:tube>,<thaumcraft:plate>,<thaumcraft:tube>],[<thaumcraft:phial>,<thaumcraft:tube_restrict>,<thaumcraft:phial>]]);

# Blank Label
recipes.removeShapeless(<thaumcraft:label>, [<*>,<*>,<*>,<*>,<*>,<*>]);
mods.thaumcraft.Crucible.registerRecipe("JarLabel", "", <thaumcraft:label>, <abyssalcraft:engraving_blank>, [<aspect:ordo> * 20,<aspect:cognitio> * 15]);

# Purifying Bath Salts
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:bath_salts>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:BathSalts", "BATHSALTS", <thaumcraft:bath_salts>, <thaumcraft:salis_mundus>, [<aspect:victus> * 80, <aspect:aqua> * 60, <aspect:cognitio> * 60, <aspect:sensus> * 40, <aspect:ordo> * 40]);

# Sanitizing Soap
mods.thaumcraft.Crucible.removeRecipe(<thaumcraft:sanity_soap>);
mods.thaumcraft.Crucible.registerRecipe("thaumcraft:SaneSoap", "SANESOAP", <thaumcraft:sanity_soap>, <contenttweaker:vibrant_slate>, [<aspect:cognitio> * 100, <aspect:victus> * 100, <aspect:sensus> * 80, <aspect:alienis> * 60, <aspect:fabrico> * 40]);

# Arcane Spa
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:spa>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:ArcaneSpa", "ARCANESPA", 50, [<aspect:aqua> * 30,<aspect:ordo> * 5], <thaumcraft:spa>, [[<botania:quartztypelavender>,<thaumcraft:jar_normal>,<botania:quartztypelavender>],[<thaumcraft:stone_arcane>,<thaumcraft:mechanism_complex>,<thaumcraft:stone_arcane>],[<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>,<thaumcraft:stone_arcane>]]);

# Runic Matrix
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:infusion_matrix>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe("thaumcraft:InfusionMatrix", "INFUSION@2", 150, [<aspect:aer> * 64,<aspect:aqua> * 64,<aspect:ordo> * 64,<aspect:perditio> * 64,<aspect:terra> * 64,<aspect:ignis> * 64], <thaumcraft:infusion_matrix>, [[<thaumcraft:stone_arcane>,<contenttweaker:matrix_multiplication_unit>,<thaumcraft:stone_arcane>],[<thaumcraft:metal_thaumium>,<botania:dice>,<thaumcraft:metal_thaumium>],[<thaumcraft:stone_arcane>,<alchemistry:ingot:30>,<thaumcraft:stone_arcane>]]);



print("ENDING Thaumcraft.zs");