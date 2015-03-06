-- Adds Liferoot as drops to Withervine beast
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('4385', '3357', '1.2', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('4382', '3357', '0.8', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('4386', '3357', '5.0', '0', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('4387', '3357', '0.76', '0', '1', '1', '0', '0', '0');

-- SQL for the quest The Affray

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (6240, 0, 0, 4968, 0, 'Affray Challenger', NULL, 0, 26, 27, 810, 901, 0, 0, 0, 14, 14, 0, 1.06, 1.11286, 0, 0, 54, 63, 0, 27, 1, 1750, 1925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40.04, 55.055, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 50, 'EventAI', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 'mob_eventai');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011108, 6240, 23, 0, 100, 1, 11556, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011107, 6240, 23, 0, 100, 1, 11555, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011106, 6240, 23, 0, 100, 1, 11554, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011105, 6240, 23, 0, 100, 1, 6190, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES (1000011104, 6240, 23, 0, 100, 1, 1160, 1, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Blackrock Drakes in Blackrock Mountain

REPLACE INTO `zp_mangosd`.`creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `aggrorangeoverride`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (8964, 0, 0, 6374, 0, 'Blackrock Drake', NULL, 0, 51, 51, 13616, 13616, 6459, 6459, 0, 103, 103, 0, 3, 3, 0, 1, 276, 356, 0, 146, 1, 1250, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 56.1, 77.1375, 100, 2, 0, 0, 0, 100001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 806, 1058, '', 2, 4, 0, 0, 1, 0, 0, 0, 0, 2, '');
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3343, 8964, 0, 0, 0, -7500.4, -1109.14, 300, 4.37475, 900, 5, 0, 13616, 6459, 0, 2);
REPLACE INTO `zp_mangosd`.`creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3344, 8964, 0, 0, 0, -7537.96, -1119.34, 350, 4.70997, 900, 5, 0, 13616, 6459, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 1, -7537.96, -1119.34, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 2, -7543.71, -1138.25, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 3, -7558.27, -1161.76, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 4, -7572.57, -1176.63, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 5, -7591.92, -1183.8, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 6, -7619.08, -1182.78, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 7, -7638.1, -1173.82, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 8, -7653.06, -1156.45, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 9, -7656.54, -1129.8, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 10, -7654.09, -1111.26, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 11, -7641.73, -1089.03, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 12, -7619.75, -1075.83, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 13, -7588.74, -1072.33, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3344, 14, -7558.76, -1076.58, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 1, -7500.4, -1109.14, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 2, -7500.24, -1126.62, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 3, -7504.42, -1146.17, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 4, -7513.52, -1167.1, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 5, -7522.59, -1184.47, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 6, -7540.49, -1200.97, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 7, -7561.88, -1212.67, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 8, -7585.42, -1219.24, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 9, -7613.49, -1215.56, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 10, -7635.64, -1205.4, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 11, -7656.63, -1190.51, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 12, -7672.92, -1168.45, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 13, -7683.8, -1146.7, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 14, -7687.59, -1107.53, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 15, -7681.03, -1081.09, 280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 16, -7666.11, -1057.55, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 17, -7649.21, -1039.91, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 18, -7622.06, -1024.17, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 19, -7591.01, -1015.79, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 20, -7562.32, -1018.19, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 21, -7531.85, -1034.36, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 22, -7512.02, -1058.17, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES (3343, 23, -7503.77, -1083.01, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

/***************** Hunter epic chain SQL *********************/
-- AI for the demons, not needed but why not(these mobs are never used)
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_klinfran_the_crazed' WHERE  `entry`=14534;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_solenor_the_slayer' WHERE  `entry`=14530;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4623, `ScriptName`='boss_artorius_the_doombringer' WHERE  `entry`=14535;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_simone_the_seductress' WHERE  `entry`=14533;

UPDATE `zp_mangosd`.`creature_template` SET `armor`=4612 WHERE  `entry`=14534;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4196 WHERE  `entry`=14530;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3751 WHERE  `entry`=14533;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=2943 WHERE  `entry`=14538;
UPDATE `zp_mangosd`.`creature_template` SET `mindmg`=450, `maxdmg`=514 WHERE  `entry`=14530;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=48600, `maxmana`=48680 WHERE  `entry`=14530;

-- npc AI, the ones who transform
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_simone_the_seductress' WHERE  `entry`=14527;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='boss_klinfran_the_crazed' WHERE  `entry`=14529;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_artorius_the_doombringer' WHERE  `entry`=14531;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='boss_solenor_the_slayer' WHERE  `entry`=14536;

-- delete the demons that are already out in the world(shouldn't be there)
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=3001218;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=3000822;
DELETE FROM `zp_mangosd`.`creature` WHERE  `guid`=3000802;

-- hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.8, `combat_reach`=0.9 WHERE  `modelid`=8610;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=9018;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=2727;
UPDATE `zp_mangosd`.`creature_model_info` SET `combat_reach`=0.6 WHERE  `modelid`=10925;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.5 WHERE  `modelid`=6688;

-- Pitted iron chest, respawn. BFD, 5sec instead of 3min for q item
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`=5 WHERE  `guid`=13949;

-- Haljan Oakheart, should no longer sell clam meat
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE  `entry`=3962 AND `item`=5503;

-- Darkmaster Gandling, added missing weapon
UPDATE `zp_mangosd`.`creature_equip_template` SET `entry`=18531 WHERE  `entry`=1853;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=18531 WHERE  `entry`=1853;

-- Thomas Miller, adjusted text
UPDATE `zp_mangosd`.`db_script_string` SET `content_default`='Get it while it\'s hot.' WHERE  `entry`=2000005100;
UPDATE `zp_mangosd`.`db_script_string` SET `content_default`='Get it while it\'s hot.' WHERE  `entry`=2000005102;
UPDATE `zp_mangosd`.`db_script_string` SET `content_default`='Fresh bread for sale!' WHERE  `entry`=2000005101;
UPDATE `zp_mangosd`.`db_script_string` SET `content_default`='Fresh bread for sale!' WHERE  `entry`=2000005099;

-- Simone for Epic hunter chain, added head to loot table
UPDATE `zp_mangosd`.`creature_template` SET `lootid`=14533 WHERE  `entry`=14527;

-- Firework Launchers

REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26286, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26286, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26286, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26291, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26291, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26291, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26292, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26292, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26292, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26294, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26294, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26294, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26295, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26295, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26295, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26333, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26333, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26333, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26334, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26334, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26334, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26336, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26336, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26336, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26337, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26337, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26337, 0, 180868);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26338, 0, 180771);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26338, 0, 180850);
REPLACE INTO `zp_mangosd`.`spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (26338, 0, 180868);

REPLACE INTO `zp_mangosd`.`gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES (180850, 6, 6543, 'Firework Launcher', 0, 0, 1, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Rattlegore Hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=0.7 WHERE  `modelid`=12073;

-- Risen constructor
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.6, `combat_reach`=0.6 WHERE  `modelid`=12074;

/******************* Epic Hunter Chain, waypoints *********************/
-- nelson, sili demon
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 1, -7728.98, 1680.93, 7.64926, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 2, -7743.87, 1692.96, 5.07234, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 3, -7763.3, 1699.04, 1.2191, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 4, -7773.93, 1712.44, 1.72201, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 5, -7776.03, 1734.03, 2.89457, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 6, -7776.33, 1762.11, 1.00827, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 7, -7790.3, 1776.76, -0.876424, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 8, -7796.3, 1791.03, -0.75754, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 9, -7788.27, 1811.03, 1.08968, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 10, -7783.8, 1833.92, 0.962194, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 11, -7791.07, 1846.17, 0.608713, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 12, -7813.25, 1855.11, 2.86837, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 13, -7829.68, 1853.51, 2.77981, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 14, -7866.88, 1834.02, 3.75569, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 15, -7898.07, 1820.84, 0.239906, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 16, -7915.73, 1809.61, 0.840322, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 17, -7939.33, 1803.57, 1.06159, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 18, -7966.8, 1792.43, -1.00964, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 19, -7978.03, 1776.56, -1.71601, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 20, -7978.35, 1756.05, -3.56683, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 21, -7972.65, 1744.18, -2.85083, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 22, -7957.69, 1719.23, -2.73695, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 23, -7940.96, 1680.3, -3.58108, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 24, -7906.76, 1612.44, -3.00053, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 25, -7884.71, 1568.69, 1.35127, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 26, -7875.89, 1553.6, -0.412373, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 27, -7852.51, 1515.77, -0.305059, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 28, -7830.63, 1484.71, -1.43504, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 29, -7816.4, 1478.19, -2.77041, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 30, -7788.71, 1475.64, -1.76046, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 31, -7767.71, 1484.92, -1.04785, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 32, -7745.17, 1501.44, -0.278271, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 33, -7730.47, 1520.25, -1.75515, 0, ''); 
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 34, -7717.63, 1543.54, -1.3242, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 35, -7703.38, 1583.05, 3.67905, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 36, -7698.64, 1596.22, 3.12637, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 37, -7697.5, 1613.57, 3.91102, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 38, -7702.52, 1637.46, 6.60827, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (43224, 39, -7714.63, 1665.52, 6.72335, 0, '');

-- Klinfran, burningsteppes funkar
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 1, -8311.42, -1006.81, 174.732, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 2, -8296.45, -1014.18, 167.282, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 3, -8279.64, -1022.28, 154.791, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 4, -8270.71, -1029.88, 150.533, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 5, -8260.82, -1052, 146.328, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 6, -8246.22, -1067.15, 143.448, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 7, -8222.69, -1079.35, 144.473, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 8, -8197.42, -1089.72, 148.915, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 9, -8183.33, -1103.47, 147.255, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 10, -8166.9, -1103.98, 140.646, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 11, -8139.87, -1096.1, 131.922, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 12, -8106.31, -1084.9, 130.686, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 13, -8076.62, -1073.62, 129.417, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 14, -8053.37, -1069.72, 130.332, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 15, -8038.54, -1057.01, 131.087, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 16, -8010.2, -1014.09, 129.36, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 17, -8002.24, -992.525, 128.1, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 18, -7997.66, -945.248, 128.901, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 19, -7990.76, -919.143, 129.483, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 20, -7978.34, -890.689, 129.433, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 21, -7968.36, -878.52, 129.05, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 22, -7952.7, -859.256, 128.111, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 23, -7952.3, -843.46, 129.153, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 24, -7968.11, -829.481, 128.666, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 25, -7985.35, -825.671, 130.057, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 26, -8008.42, -812.072, 131.727, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 27, -8066.64, -773.61, 131.245, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 28, -8093.07, -770.112, 131.972, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 29, -8119.42, -774.86, 130.531, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 30, -8154.08, -784.667, 129.642, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 31, -8172.46, -795.578, 129.834, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 32, -8186.91, -818.218, 129.596, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 33, -8193.2, -849.001, 131.648, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 34, -8190.68, -868.94, 132.183, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 35, -8192.06, -889.016, 132.997, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 36, -8206.6, -911.476, 134.07, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 37, -8229.86, -921.603, 139.273, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 38, -8253.11, -925.529, 148.933, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 39, -8262.22, -926.075, 153.256, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 40, -8269.66, -922.965, 158.196, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 41, -8277.88, -926.562, 163.025, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 42, -8290.71, -937.75, 170.134, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 43, -8300.53, -953.014, 177.777, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 44, -8301.46, -964.806, 180.408, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 45, -8299.04, -978.346, 176.414, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 46, -8304.8, -987.155, 175.593, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 47, -8319.45, -986.95, 178.678, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 48, -8335.02, -973.447, 185.353, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 49, -8353.49, -956.325, 190.707, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 50, -8373.36, -946.276, 198.283, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 51, -8387.92, -942.721, 203.268, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 52, -8401.37, -946.73, 204.49, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 53, -8409.79, -957.562, 201.487, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 54, -8404.14, -973.087, 193.708, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 55, -8390.27, -988.169, 188.023, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 56, -8372.08, -994.689, 186.979, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 57, -8352.94, -999.001, 185.705, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 58, -8331.35, -999.891, 182.253, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (4602, 59, -8319.53, -1002.29, 177.783, 0, '');

-- artorius, winterspring funkar
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 1, 7897.98, -4603.53, 709.05, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 2, 7867.74, -4600.23, 705.759, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 3, 7800.48, -4570.75, 685.213, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 4, 7744.18, -4557.81, 669.196, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 5, 7648.32, -4532.37, 636.826, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 6, 7583.85, -4507.53, 613.334, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 7, 7580.23, -4484.09, 607.988, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 8, 7592.48, -4461.88, 609.317, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 9, 7603.6, -4439.77, 610.41, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 10, 7596.29, -4403.2, 608.973, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 11, 7584.26, -4327.91, 625.493, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 12, 7605.94, -4305.27, 637.762, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 13, 7632.98, -4277.74, 647.78, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 14, 7645.85, -4257.68, 658.898, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 15, 7670.56, -4246.43, 667.71, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 16, 7699.87, -4232.45, 675.945, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 17, 7734.46, -4204.43, 680.56, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 18, 7760.13, -4201.32, 679.77, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 19, 7809.04, -4214.66, 675.332, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 20, 7836.72, -4219.84, 675.32, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 21, 7855.52, -4236.49, 679.585, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 22, 7854.13, -4262.3, 683.319, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 23, 7858.66, -4294.17, 695.943, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 24, 7870.79, -4324.2, 709.637, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 25, 7889.15, -4334.8, 713.599, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 26, 7901.05, -4343.26, 715.05, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 27, 7913.29, -4364.16, 715.941, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 28, 7929.22, -4397.5, 720.049, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 29, 7912.49, -4422.13, 706.446, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 30, 7910.7, -4444.64, 707.189, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 31, 7912.59, -4466.67, 706.867, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 32, 7924.13, -4499.68, 701.118, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 33, 7939.29, -4522.9, 698.931, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 34, 7958.05, -4538.76, 708.638, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 35, 7957.7, -4560.55, 716.463, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 36, 7945.33, -4578.68, 715.8, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (42301, 37, 7927.51, -4592.99, 713.282, 0, '');

-- Simone wp
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 1, -7088.75, -592.299, -269.205, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 2, -7085.74, -633.794, -271.787, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 3, -7081.24, -675.488, -271.139, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 4, -7072.36, -732.493, -267.711, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 5, -7068.73, -760.439, -269.716, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 6, -7065.11, -792.572, -271.325, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 7, -7073.91, -825.212, -271.262, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 8, -7127.43, -894.096, -271.493, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 9, -7159.32, -939.727, -271.423, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 10, -7204.76, -960.477, -272.085, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 11, -7251.25, -979.611, -271.168, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 12, -7285.23, -989.368, -271.432, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 13, -7312.53, -1008.81, -272.141, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 14, -7339.56, -1029.17, -272.023, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 15, -7365.55, -1047.27, -270.744, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 16, -7401.99, -1058.95, -269.813, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 17, -7432.05, -1075.7, -268.967, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 18, -7453.4, -1095.8, -271.409, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 19, -7472.54, -1120.24, -272.322, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 20, -7489.87, -1156.46, -269.874, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 21, -7503.67, -1181.76, -268.873, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 22, -7517.69, -1199.61, -270.088, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 23, -7518.2, -1212.59, -271.369, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 24, -7513.82, -1232.33, -270.937, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 25, -7510.68, -1256.42, -269.785, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 26, -7506.2, -1276.01, -271.007, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 27, -7502.47, -1294.71, -272.086, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 28, -7498.96, -1317.52, -271.394, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 29, -7498.81, -1327.77, -271.099, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 30, -7501.94, -1339.3, -270.293, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 31, -7509.3, -1354.69, -270.051, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 32, -7519.41, -1368.67, -271.1, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 33, -7519.41, -1368.67, -271.1, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 34, -7531.21, -1381.51, -271.602, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 35, -7536.07, -1392.02, -271.444, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 36, -7539.18, -1406.27, -271.825, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 37, -7543.57, -1425.97, -271.792, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 38, -7551.39, -1455.47, -270.91, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 39, -7557.71, -1471.76, -269.305, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 40, -7567.48, -1486.87, -268.416, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 41, -7581.04, -1498.74, -266.614, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 42, -7597.11, -1513.52, -267.581, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 43, -7614.22, -1531.15, -270.09, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 44, -7625.66, -1537.22, -270.294, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 45, -7637.65, -1537.81, -270.317, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 46, -7652.57, -1534.45, -270.259, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 47, -7664.77, -1525.28, -269.194, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 48, -7681.42, -1512.06, -270.955, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 49, -7697.38, -1501.56, -270.921, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 50, -7715.36, -1491.28, -271.019, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 51, -7726.07, -1480.23, -271.43, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 52, -7732.42, -1459.45, -271.576, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 53, -7738.78, -1436.32, -271.962, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 54, -7745.58, -1409.37, -271.673, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 55, -7750.3, -1387.47, -271.652, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 56, -7755, -1357.89, -272.222, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 57, -7755.75, -1345.9, -272.222, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 58, -7751.52, -1337.03, -272.216, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 59, -7742.81, -1327.28, -272.092, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 60, -7733.23, -1317.46, -271.26, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 61, -7730.27, -1303.61, -269.179, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 62, -7726.37, -1286.55, -267.074, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 63, -7722.72, -1270.58, -266.323, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 64, -7722.23, -1260.24, -266.734, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 65, -7723.82, -1250.33, -268.424, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 66, -7731.16, -1236.58, -268.98, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 67, -7740.68, -1223.83, -270.5, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 68, -7750.49, -1215.54, -270.885, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 69, -7757.9, -1214.02, -271.023, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 70, -7772.67, -1215.61, -269.616, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 71, -7793.49, -1219.85, -266.362, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 72, -7810.8, -1221.9, -265.263, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 73, -7831.28, -1225.29, -265.213, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 74, -7856.59, -1229.48, -266.932, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 75, -7881.38, -1233.58, -269.319, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 76, -7901.48, -1235.39, -269.036, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 77, -7916.75, -1236.21, -267.912, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 78, -7947.3, -1237.87, -273.217, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 79, -7972.36, -1239.22, -272.729, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 80, -7995.65, -1241.96, -269.761, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 81, -8027, -1249.19, -271.453, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 82, -8051.88, -1255.16, -268.069, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 83, -8070.36, -1259.99, -266.275, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 84, -8088.93, -1264.5, -267.103, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 85, -8097.59, -1263.53, -268.202, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 86, -8107.48, -1258.91, -268.376, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 87, -8110.58, -1250.17, -267.548, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 88, -8108.28, -1238.93, -267.835, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 89, -8102.45, -1228.43, -268.753, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 90, -8093.23, -1214.89, -269.241, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 91, -8083.7, -1200.89, -269.53, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 92, -8072.02, -1183.73, -270.304, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 93, -8058.19, -1163.43, -270.966, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 94, -8044.65, -1143.55, -271.6, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 95, -8034.88, -1133.24, -271.434, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 96, -8022.11, -1119.78, -270.829, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 97, -8007.24, -1098.83, -269.568, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 98, -7996.94, -1083.07, -269.279, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 99, -7989.62, -1071.55, -270.002, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 100, -7973.72, -1052.09, -271.828, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 101, -7960.5, -1039.89, -272.374, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 102, -7946.33, -1030.6, -273.127, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 103, -7918.76, -1013.9, -273.414, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 104, -7901.97, -1004.78, -272.341, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 105, -7880.4, -993.053, -267.876, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 106, -7863.9, -983.404, -265.703, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 107, -7847.86, -974.021, -268.513, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 108, -7828.04, -962.428, -270.929, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 109, -7807.33, -950.315, -268.521, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 110, -7779.35, -934.396, -270.216, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 111, -7759.62, -923.87, -272.059, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 112, -7737.44, -912.044, -271.962, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 113, -7719.58, -907.024, -270.896, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 114, -7693.77, -902.494, -268.612, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 115, -7667.91, -898.421, -271.192, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 116, -7636.35, -895.952, -270.678, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 117, -7613.72, -902.075, -269.195, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 118, -7591.05, -907.941, -270.977, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 119, -7585.77, -906.547, -271.397, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 120, -7573.85, -901.047, -271.778, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 121, -7559.11, -893.912, -272.758, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 122, -7543.55, -891.022, -272.376, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 123, -7520.1, -891.357, -271.995, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 124, -7493.41, -893.059, -271.809, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 125, -7464.02, -894.934, -270.71, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 126, -7440.06, -894.378, -267.502, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 127, -7411.13, -895.491, -267.134, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 128, -7417.6, -895.921, -267.314, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 129, -7384.4, -898.627, -270.689, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 130, -7349.12, -902.137, -271.735, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 131, -7318.35, -906.752, -271.021, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 132, -7293.05, -910.928, -269.343, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 133, -7279.06, -913.434, -270.28, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 134, -7272.5, -912.975, -271.451, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 135, -7261.95, -910.132, -271.508, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 136, -7245.43, -901.634, -271.872, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 137, -7220.08, -890.143, -271.97, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 138, -7193.27, -877.957, -270.985, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 139, -7180.3, -860.609, -269.58, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 140, -7175.17, -843.994, -271.07, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 141, -7164.39, -824.998, -271.276, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 142, -7156.71, -805.755, -270.685, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 143, -7145.46, -785.189, -270.611, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 144, -7134.43, -765.733, -272.147, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 145, -7129.11, -741.752, -271.255, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 146, -7125.23, -718.022, -272.13, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 147, -7121.42, -689.889, -270.36, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 148, -7118.08, -655.143, -270.582, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 149, -7118.24, -623.504, -270.042, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 150, -7118.06, -603.309, -271.004, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 151, -7117.54, -584.767, -271.179, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 152, -7112.82, -574.926, -270.855, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 153, -7101.95, -568.684, -272.608, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 154, -7089.79, -565.579, -271.073, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 155, -7082.47, -572.147, -271.938, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (24439, 156, -7080.31, -581.168, -270.757, 0, '');

/****************** One shot. One kill. Quest SQL **************/
-- Add texts
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720004, 'I\'ve run out of arrows! I\'m afraid if any more come you will need to take them on by yourself my friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720005, 'Praise Elune! I don\'t know if I could have survived the day without you, friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720006, 'My leg feels much better now, the remedy must be working. If you will excuse me, I must go report to my superiors about what has transpired here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720007, 'Please speak with sentinel Onaeya at Maestra\'s Post in Ashenvale, she will see to it that you are properly rewarded for your bravery this day.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720003, 'Wait... did you hear that? Something approaches from the west!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sentinel Aynasha');

-- Add AI + armor
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_sentinel_aynasha', `armor`=416 WHERE  `entry`=11711;

-- delete aura/buff she had to not move(visible debuff, rip)
DELETE FROM `zp_mangosd`.`creature_addon` WHERE `guid`=38663;

-- Vendors in Darnasus should now be able to repair also
UPDATE `zp_mangosd`.`creature_template` SET `npcflag`=16388 WHERE  `entry`=4232;
UPDATE `zp_mangosd`.`creature_template` SET `npcflag`=16388 WHERE  `entry`=4233;
UPDATE `zp_mangosd`.`creature_template` SET `npcflag`=16388 WHERE  `entry`=4171;

-- Rend blackhand, added missing weapon
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=10429 WHERE  `entry`=10429;
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (10429, 12583, 0, 0);

-- Updated Hitbox for Flamewaker elite and healer
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=12161;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=13029;

-- Blackwood tracker AI updated, random time in combat instead of within a range
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_type`=0, `event_param2`=15000, `event_param3`=10000 WHERE  `id`=1171302;

-- Add GO light for Priest Epic Quest
REPLACE INTO `gameobject` VALUES (1712726, 179693, 0, 3339.37, -2977.07, 162.696, 0.530169, 0, 0, 0.261991, 0.96507, -900, 100, 1);

/********************** Therylune's Escape ***********************/
-- Add texts and AI
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720008, 'Ok, let\'s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Therylune, Say Start');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720009, 'I can make it the rest of the way. $N. THANKS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Therylune, Say End');
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_therylune' WHERE  `entry`=3584;

-- Add wp
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 0, 4520.4, 420.235, 33.5284, 2000, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 1, 4512.26, 408.881, 32.9308, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 2, 4507.94, 396.47, 32.9476, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 3, 4507.53, 383.781, 32.995, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 4, 4512.1, 374.02, 33.166, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 5, 4519.75, 373.241, 33.1574, 3000, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 6, 4592.41, 369.127, 31.4893, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 7, 4598.55, 364.801, 31.4947, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 8, 4602.76, 357.649, 32.9265, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 9, 4597.88, 352.629, 34.0317, 2000, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 10, 4590.23, 350.9, 36.2977, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 11, 4581.5, 348.254, 38.3878, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 12, 4572.05, 348.059, 42.3539, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 13, 4564.75, 344.041, 44.2463, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 14, 4556.63, 341.003, 47.6755, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 15, 4554.38, 334.968, 48.8003, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 16, 4557.63, 329.783, 49.9532, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 17, 4563.32, 316.829, 53.2409, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 18, 4566.09, 303.127, 55.0396, 0, '');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 19, 4561.65, 295.456, 57.0984, 4000, 'SAY_THERYLUNE_FINISH');
REPLACE INTO `zp_scriptdevzerod`.`script_waypoint` VALUES (3584, 20, 4505.03, 279.3, 57.9, 2000, 'DESPAWN');

-- don't use old scripts
UPDATE `zp_mangosd`.`quest_template` SET `StartScript`=0 WHERE  `entry`=945;

/********************* BWL Hitboxes *****************/
-- Death Talon Captain
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=14544;
-- Death Talon Flamescale
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=8310;
-- Death Talon Seether
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=12893;
-- Death Talon Wyrmkin
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=12894;
-- Blackwing Warlock
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=14292;
-- Blackwing Technician
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=13991;
-- enraged felguard
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.1, `combat_reach`=1.2 WHERE  `modelid`=14152;
-- Blackwing Spellbinder
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=0.8, `combat_reach`=0.9 WHERE  `modelid`=7923;
-- Krixix
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1, `combat_reach`=1 WHERE  `modelid`=14498;

-- Bingle's missing supplies quest, adjust spawntimers(down)
UPDATE zp_mangosd.`gameobject` SET `spawntimesecs`='60' WHERE (`guid`='12863') LIMIT 1;
UPDATE zp_mangosd.`gameobject` SET `spawntimesecs`='60' WHERE (`guid`='12864') LIMIT 1;
UPDATE zp_mangosd.`gameobject` SET `spawntimesecs`='60' WHERE (`guid`='12871') LIMIT 1;
UPDATE zp_mangosd.`gameobject` SET `spawntimesecs`='60' WHERE (`guid`='12872') LIMIT 1;

/*********** Investigate the blue recluse ***********/
-- add SW mana rift visual
REPLACE INTO `gameobject` VALUES (42889, 103680, 0, -9072.71, 833.487, 108.418, 0.36439, 0, 0, 0.181189, 0.983448, 60, 0, 0);
-- add pre q
UPDATE `zp_mangosd`.`quest_template` SET `PrevQuestId`=1919 WHERE  `entry`=1920;

-- remove scarlet wristguards from Syndicate Spy's loot table
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=2242 AND `item`=24054;

/**************** Freed from the Hive, quest ***************/
-- remove old
DELETE FROM `zp_mangosd`.`quest_start_scripts` WHERE  `id`=4265 LIMIT 5;
-- add AI
UPDATE `zp_mangosd`.`creature_template` SET `unit_flags`=128, `AIName`='EventAI', `ScriptName`='mob_eventai' WHERE  `entry`=9546;
-- add text
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-4265, 'Oh man, I thought I was dead for sure. Ugh... still dizzy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Raschal Say 1');
REPLACE INTO `zp_mangosd`.`creature_ai_texts` VALUES (-4266, 'I can get back to the Stronghold on my own, I think. Now that you bought me some time, I should be able to stealth out of here. Who ever you are... thank you. May Elune bless you always!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 'Raschal Say 2');
-- add RP, THIS IS A HACK
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (9546002, 9546, 1, 0, 100, 0, 9000, 9000, 0, 0, 1, -4266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Raschal Say 2');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (9546001, 9546, 1, 0, 100, 0, 2000, 2000, 0, 0, 1, -4265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Raschal Say 1');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (9546004, 9546, 1, 0, 100, 0, 8500, 8500, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rashal Emote None');
REPLACE INTO `zp_mangosd`.`creature_ai_scripts` VALUES (9546003, 9546, 1, 0, 100, 0, 2500, 2500, 0, 0, 5, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rashal Emote Stun');
-- add spawn and quest complete
REPLACE INTO `zp_mangosd`.`quest_start_scripts` VALUES (4265, 11, 7, 4265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `zp_mangosd`.`quest_start_scripts` VALUES (4265, 1, 10, 9546, 15000, 0, 0, 0, 0, 0, 0, 0, -5314.81, 430.89, 11.79, 3.46, '');

/******** A daughters love, quest RP ***********/
-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720011, 'I shall cling to the love of my daugter and hope that I will find forgiveness under the Light for my sins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Morgan Ladimore, Say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720010, 'My sword Archeus served me well in life, but as at last my spirit may pass from the unhappy existance, I need it no longer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Morgan Ladimore, Say 1');
-- add AI
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_morgan_ladimore' WHERE  `entry`=3301;

/************ Missing diplomat RP text, sw + wetlands ************/
-- add texts wetlands
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720012, 'Oh, it\'s on now! But you thought I\'d be alone too, huh?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tapoke slim jahn SAY_AGGRO');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720013, 'Okay, okay! No need to get all violent. I\'ll talk. I\'ll talk!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'tapoke slim jahn SAY_DEFEAT');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720014, 'Whoa! This is way more than what I bargained for, you\'re on your own, Slim!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'slim\'s friend SAY_FRIEND_DEFEAT');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720015, 'I have a few notes from the job back at my place. I\'ll get them and then meet you back in the inn.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'tapoke slim jahn SAY_NOTES');
-- add text stormwind part
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720016, 'It\'s okay, boys. Back off. You\'ve done enough. I\'ll meet up with you later.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Dashel stonefist Say End');
-- delete old script to spawn mobs in SW
DELETE FROM `zp_mangosd`.`quest_start_scripts` WHERE  `id`=1447 LIMIT 2;

-- add outro text and fix wrong text, missing diplomat dustwallow
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720017, 'Farewell. We shall speak again, I\'m sure.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Tervosh Say Bye');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720018, 'Approach, newbie!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Hendel, SAY_AGGRO');
UPDATE `zp_scriptdevzerod`.`script_texts` SET `content_default`='Why don\'t we deal with you now, Hendel? Lady Proudmoore will speak to you back in the tower.' WHERE  `entry`=-1000411;
-- add AI
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_pained' WHERE  `entry`=4965;
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_archmage_tervosh' WHERE  `entry`=4967;
UPDATE `zp_mangosd`.`creature_template` SET `unit_class`=2 WHERE  `entry`=4966;
-- Move hendel slightly
REPLACE INTO `zp_mangosd`.`creature` VALUES (31274, 4966, 1, 2967, 0, -2895.34, -3346.51, 31.8728, 3.04343, 360, 0, 0, 600000, 0, 0, 0);

-- missing diplomat wetlands text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720019, 'I\'m glad the commotions died down some around here. The last thing this place needs is another brawl.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mikhail, SAY_END');

-- update faction for rare Singer
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=87, `faction_H`=87 WHERE  `entry`=2600;

/******************* Stitches Event *********************/
-- add AI to stitches, town crier and 2 guards at camp so they are active object
UPDATE `zp_mangosd`.`creature_template` SET `armor`=3451, `speed_walk`=1, `speed_run`=1.14286, `MovementType`=2, `AIName`='', `ScriptName`='mob_stitches' WHERE  `entry`=412;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_town_crier' WHERE  `entry`=468;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_town_crier' WHERE  `entry`=888;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_town_crier' WHERE  `entry`=499;

-- script for spawning stitches at end of Translation to Ello
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (252, 5, 10, 412, 3600000, 0, 0, 0, 0, 0, 0, 0, -10290.2, 72.7811, 38.8811, 4.8015, 'spawn stiches');
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=252 WHERE  `entry`=252;

-- add waypoints for stitches
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 1, -10291.6, 59.2976, 41.2091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 2, -10324.8, 33.6329, 47.938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 3, -10329.8, 20.4452, 51.0931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 4, -10349.6, -15.6226, 47.1858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 5, -10377.5, -38.3382, 48.6618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79935, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 6, -10402.3, -50.0084, 48.7513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.23387, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 7, -10482.4, -44.0318, 47.4256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 8, -10565.7, -33.0121, 37.8719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.01003, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 9, -10605.8, -44.9978, 35.3426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.65405, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 10, -10651.6, -70.7397, 33.0008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.65405, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 11, -10693.1, -82.3273, 34.5134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16711, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 12, -10727.7, -99.3473, 34.5134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.60693, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 13, -10754.6, -95.5816, 38.9829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87258, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 14, -10789.9, -85.831, 33.1102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.87258, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 15, -10804.8, -81.7399, 29.3038, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.17241, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 16, -10834.9, -164.523, 33.8301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.38446, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 17, -10861.5, -282.178, 38.1132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.49442, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 18, -10889.7, -344.443, 39.3168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.21168, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 19, -10907.5, -364.971, 39.7154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.21168, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 20, -10908.3, -380.242, 40.3372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.65542, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 21, -10914.7, -391.773, 40.2007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.2692, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 22, -10909.8, -412.461, 41.8035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.88712, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 23, -10905.7, -456.867, 45.7865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61616, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 24, -10912.3, -525.299, 53.8122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.61616, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 25, -10930.9, -571.839, 54.087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.29022, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 26, -10952.7, -602.688, 55.3005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.37268, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 27, -10958.1, -643.594, 55.1417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.67506, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 28, -10928.8, -685.072, 55.4541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.33872, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 29, -10907.5, -726.294, 54.7612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.1895, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 30, -10849.4, -790.095, 56.0638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.4526, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 31, -10825.3, -833.193, 55.584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.1895, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 32, -10800.8, -903.632, 56.1258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.9421, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 33, -10796.9, -928.796, 55.8942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56511, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 34, -10807.5, -977.106, 55.6968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71826, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 35, -10805.1, -1030, 47.1241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.76146, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 36, -10786, -1078.22, 36.8187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.06776, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 37, -10778.1, -1116.14, 29.8456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.89498, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 38, -10749.5, -1149.88, 26.7991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.44475, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 39, -10683.8, -1188.77, 27.3685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.77069, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 40, -10660, -1193.79, 28.4206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.22622, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 41, -10606.1, -1180.01, 28.2167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.261119, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 42, -10581.8, -1177.15, 28.5784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.052989, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 43, -10570.2, -1185.38, 28.0432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29553, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 44, -10557.9, -1204.02, 27.7776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29553, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 45, -10554.9, -1222.9, 27.3325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86749, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 46, -10551, -1247.73, 31.0483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.86749, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 47, -10554.1, -1193.85, 27.9434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6395, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 48, -10550.2, -1170.71, 27.7657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.38818, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 49, -10553.8, -1156.56, 27.9745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.46024, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 50, -10569, -1154.95, 27.4509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.64227, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 51, -10577.6, -1165.37, 28.1559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.52191, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 52, -10575, -1179.16, 28.0353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.47617, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 53, -10534.4, -1186.35, 28.0023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25764, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 54, -10482.8, -1182.32, 27.7177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.107971, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 55, -10436.4, -1167.43, 27.9104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.426058, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 56, -10413.3, -1133.69, 23.8167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.999398, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 57, -10389.6, -1117.94, 22.2759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.178657, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 58, -10348.6, -1117.45, 21.4111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.13983, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 59, -10319.5, -1128.91, 21.6974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.65681, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 60, -10296, -1148.35, 23.2732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.60576, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 61, -10248.2, -1154.72, 21.5244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.009797, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 62, -10221.9, -1154.47, 22.4877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.009797, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (412, 63, -10194.7, -1073.93, 30.7576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.26643, 0, 0);

-- weapons for watchers
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=690 WHERE  `entry`=1000;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=690 WHERE  `entry`=1001;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=690 WHERE  `entry`=1204;
UPDATE `zp_mangosd`.`creature_template` SET `equipment_id`=690 WHERE  `entry`=1203;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1100;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1099;
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=1.02, `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1098;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1101;
UPDATE `zp_mangosd`.`creature_template` SET `speed_run`=1.2, `MovementType`=2, `equipment_id`=690 WHERE  `entry`=1436;

-- Waypoints
-- selkin
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 1, -10750.6, -1144.94, 26.82, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3029666, 2.57491, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 2, -10772.2, -1119.64, 29.0876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029667, 2.22148, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 3, -10776.6, -1113.96, 30.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029668, 1.94266, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 4, -10781.9, -1083.39, 35.7604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029669, 1.68348, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 5, -10794.9, -1054.57, 42.2362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029670, 2.00942, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 6, -10802.6, -1020.55, 48.6692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029671, 1.76987, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 7, -10804.4, -980.222, 55.3736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029672, 1.49891, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 8, -10802.8, -962.846, 56.3141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029673, 1.34576, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 9, -10793.1, -935.073, 55.9267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029674, 1.27507, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 10, -10795.1, -908.947, 55.8068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029675, 1.7149, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1100, 11, -10826.1, -822.195, 55.862, 0, 3, 0, 0, 0, 0, 0, 0, 0, 3029676, 1.98978, 0, 0);
-- Gelwin
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 1, -10752.7, -1145.56, 26.8339, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3029677, 2.36677, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 2, -10778.3, -1114.57, 30.1016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029678, 2.15864, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 3, -10783.7, -1081.7, 36.0987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029679, 1.69525, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 4, -10796.7, -1053.22, 42.6989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029680, 1.86804, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 5, -10804.3, -1016.93, 49.7054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029681, 1.74238, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 6, -10805.2, -973.264, 56.0074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029682, 1.53425, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 7, -10794.7, -935.382, 56.1306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029683, 1.2947, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 8, -10796.3, -908.271, 55.9145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029684, 1.77772, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1099, 9, -10827, -824.487, 55.6973, 0, 3, 0, 0, 0, 0, 0, 0, 0, 3029685, 1.95443, 0, 0);
-- Merant
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 1, -10754.5, -1145.97, 26.8396, 0, 1, 0, 0, 0, 0, 0, 0, 0, 3029686, 2.33142, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 2, -10780.6, -1111.98, 30.4977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029687, 2.00155, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 3, -10786.3, -1076.62, 37.1939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029688, 1.78557, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 4, -10799.1, -1051.31, 43.2079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029689, 1.8484, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 5, -10805.7, -1015.72, 49.9924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029690, 1.53424, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 6, -10805.8, -966.611, 56.3771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029691, 1.54602, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 7, -10797, -935.045, 56.2729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029692, 1.36145, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 8, -10798.2, -906.331, 56.1187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029693, 1.8484, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1098, 9, -10829.7, -823.271, 55.8474, 0, 3, 0, 0, 0, 0, 0, 0, 0, 3029694, 2.07616, 0, 0);
-- Thayer
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 1, -10758.4, -1146.46, 26.9125, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2.461, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 2, -10778.8, -1122.44, 28.8737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.17041, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 3, -10783.1, -1110.08, 30.8873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.88374, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 4, -10788.6, -1079.5, 36.6433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.69524, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 5, -10794.9, -1062.02, 40.7326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94264, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 6, -10803.3, -1049.76, 43.5041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.98977, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 7, -10807.8, -1016.49, 49.8617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56172, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 8, -10808.7, -969.607, 56.257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60885, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 9, -10800.4, -936.415, 56.088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.38108, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 10, -10798.4, -921.417, 55.7236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55387, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 11, -10811.8, -869.037, 55.8893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.83661, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template`  VALUES (1101, 12, -10831.2, -825.159, 55.7161, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1.9662, 0, 0);
-- Cutford
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 1, -10716.2, -1171.81, 26.5691, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2.5199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 2, -10730.4, -1161.62, 26.9411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 3, -10758.8, -1141.25, 26.999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 4, -10778.1, -1115.92, 29.8835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04866, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 5, -10785.3, -1078.46, 36.7103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.75414, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 6, -10799.9, -1044.43, 44.5367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.03688, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 7, -10807.4, -1008.14, 51.3291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58528, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 8, -10808, -969.372, 56.2728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58528, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 9, -10795.3, -929.399, 55.9147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.30646, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 10, -10801.6, -893.911, 55.8168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.76199, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 11, -10831.5, -815.493, 56.3138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.97012, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 12, -10868.2, -767.287, 55.6204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22145, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 13, -10902.9, -734.868, 55.1597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.39031, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 14, -10935.8, -673.766, 55.5557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.07615, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 15, -10955.3, -646.856, 55.2669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.23323, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 16, -10956.7, -616.859, 54.9843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6167, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 17, -10950.6, -604.064, 55.2513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.12582, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 18, -10932.7, -576.547, 53.8621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.12582, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 19, -10914.8, -539.089, 53.9063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.12582, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 20, -10909, -477.829, 48.2435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 21, -10906.3, -427.149, 42.0987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 22, -10904.8, -397.684, 41.1266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 23, -10901.4, -382.259, 40.3197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35359, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 24, -10899.4, -363.918, 39.3732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.60099, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 25, -10915, -362.09, 39.8269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.30923, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 26, -10916.1, -367.958, 39.8662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.57372, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 27, -10906, -389.698, 40.8095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.06852, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 28, -10911, -395.666, 41.1095, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 3.20713, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 29, -10917.3, -393.83, 39.5448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94657, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement_template` VALUES (1436, 30, -10919.9, -387.094, 39.006, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1.94657, 0, 0);

-- add texts
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720022, 'The abomination has overrun the Night Watch camp! Quickly, we must intercept it before it reaches town!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Town crier, YELL_GUARD_DOWN');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720023, 'The beast is slain! All\'s well in Darkshire!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Town crier, YELL_STITCHES_DOWN');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720021, 'ROAAAARR!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Stitches YELL_AGGRO');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720020, 'DARKSHIRE... I HUNGER!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Stitches YELL_SPAWN');


/******************* Hunter epic chain, SQL for movement related *******************/
-- klinfran
update `zp_scriptdevzerod`.`script_waypoint` set entry  = '14529' where entry = '4602';
-- artorius
update `zp_scriptdevzerod`.`script_waypoint` set entry  = '14531' where entry = '42301';
-- solenor
update `zp_scriptdevzerod`.`script_waypoint` set entry  = '14536' where entry = '43224';
-- simone
update `zp_scriptdevzerod`.`script_waypoint` set entry  = '14527' where entry = '24439';

-- update movements for each demon
UPDATE `zp_mangosd`.`creature` SET `position_x`=-7085.75, `position_y`=-593.299, `position_z`=-269.205, `MovementType`=0 WHERE  `guid`=24439;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=43224;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=42301;
UPDATE `zp_mangosd`.`creature` SET `MovementType`=0 WHERE  `guid`=4602;
-- template
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14531;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14527;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14536;
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14529;
-- precious
UPDATE `zp_mangosd`.`creature_template` SET `MovementType`=0 WHERE  `entry`=14528;
UPDATE `zp_mangosd`.`creature` SET `position_x`=-7085.95, `position_y`=-595.299, `position_z`=-269.205, `MovementType`=0 WHERE  `guid`=24440;
-- precious follow simone
REPLACE INTO `creature_formations` VALUES (24439, 24439, 0, 0, 2);
REPLACE INTO `creature_formations` VALUES (24439, 24440, 2, 90, 2);


