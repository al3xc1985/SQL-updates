-- Eye tentacle correct model, tentacle portal change back to right model
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15882 WHERE  `entry`=15904;
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`=15788 WHERE  `entry`=15726;

-- SQL from muggle, jubling corrected model
UPDATE `zp_mangosd`.`creature_template` SET `modelid_1`='14938' WHERE (`entry`='14878') limit 1;

-- Remove Spotted Yellowtails from vendors, adjust stock and respawn timer of Peacebloom for some vendors
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='1678') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='1684') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='2834') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3086') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3178') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3497') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='3540') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4200') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4221') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4305') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='4307') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='6727') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='7943') AND (`item`='6887') limit 1;
DELETE FROM `zp_mangosd`.`npc_vendor` WHERE (`entry`='8931') AND (`item`='6887') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3' WHERE (`entry`='1313') AND (`item`='2447') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3', `incrtime`='9000' WHERE (`entry`='3490') AND (`item`='2447') limit 1;
UPDATE `zp_mangosd`.`npc_vendor` SET `maxcount`='3', `incrtime`='9000' WHERE (`entry`='3548') AND (`item`='2447') limit 1;

/********* Dire Maul Arena, rares SQL. COMMENTED OUT ADDING THEM FOR NOW **********/
-- hitbox
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=14382;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=10169;
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=1.5, `combat_reach`=1.6 WHERE  `modelid`=10807;

-- add to world, SKIP THIS FOR NOW SINCE HERBS WON'T WORK
-- REPLACE INTO `zp_mangosd`.`creature` VALUES (3493, 11447, 1, 0, 0, -3706.7, 1091.58, 131.969, 3.07796, 25, 5, 0, 60811, 0, 0, 1);
-- REPLACE INTO `zp_mangosd`.`creature` VALUES (3494, 11497, 1, 0, 0, -3740.99, 1090.37, 131.969, 3.12371, 28800, 5, 0, 74479, 0, 0, 1);
-- REPLACE INTO `zp_mangosd`.`creature` VALUES (3495, 11498, 1, 0, 0, -3740.99, 1090.37, 131.969, 3.12371, 28800, 5, 0, 59085, 0, 0, 1);

-- skarr weapon
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (11498, 3855, 0, 0);

-- add scripts
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4250, `speed_walk`=1, `rank`=2, `baseattacktime`=2000, `AIName`='', `ScriptName`='boss_mushgog' WHERE `entry`=11447;
UPDATE `zp_mangosd`.`creature_template` SET `armor`=4791, `rank`=2, `baseattacktime`=1800, `AIName`='', `equipment_id`=11498, `ScriptName`='boss_skarr_the_unbreakable' WHERE `entry`=11498;
UPDATE `zp_mangosd`.`creature_template` SET `minmana`=24340, `maxmana`=24340, `armor`=3745, `rank`=2,`speed_run`=1.08, `rank`=2, `baseattacktime`=1600, `AIName`='', `ScriptName`='boss_the_razza' WHERE `entry`=11497;

-- add pool
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2108, 1, 'Dire Maul Arena - Rare Spawns');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3494, 2108, 0, 'The Razza');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3495, 2108, 0, 'Skarr the Unbreakable');

REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720209, 'This will teach you to lay off the herb, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Mushgog - Say Kill');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720210, 'Can that be the Razza down there in the Maul? This is going to be exciting!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 22, 'Griniblix - The Razza Spawn Yell');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720211, 'Woohoo! They are into it now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 5, 'Griniblix - The Razza Aggro Yell');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720212, 'It\'s time for the main event! Skarr the Unbreakable is in the maul!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 22, 'Griniblix - Skarr Spawn Yell');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720213, 'Looks like Skarr has found his next challenger! Wouldn\'t want to be in that poor fool\'s shoes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 5, 'Griniblix - Skarr Aggro Yell');

-- add the loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (11498, 996304, 100, 0, -996304, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (11498, 1973, 0.12, 0, 0, 1, 0, 0, 0);

REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (11497, 996304, 100, 0, -996304, 2, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (11447, 996304, 100, 0, -996304, 1, 0, 0, 0);

-- new ref. loot group, almost same as 996302 but no orb of deception
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 1203, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 2564, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 4696, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 5266, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 6622, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 7734, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 9402, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 11302, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13000, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13001, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13002, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13003, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13004, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13007, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13008, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13009, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13013, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13015, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13030, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13036, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13040, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13047, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13053, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13060, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13066, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13067, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13070, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13072, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13073, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13075, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13077, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13083, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13085, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13091, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13096, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13107, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13111, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13113, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13116, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13118, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13120, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13123, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13125, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13126, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13130, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13133, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13135, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13144, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (996304, 13146, 0, 1, 1, 1, 0, 0, 0);

/***********  A King's Tribute quest chain, quest end RP **********/
-- waterlogged envelope 5 sec respawn instead of 5min
UPDATE `zp_mangosd`.`gameobject` SET `spawntimesecs`=5 WHERE  `guid`=14656;

-- add script for Sully Balloo's Letter
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=637 WHERE  `entry`=637;

-- delete old sql so we can run this more than once
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=637 LIMIT 6;

REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (637, 0, 0, 2, 0, 0, 0, 0, 2000006016, 0, 0, 0, 0, 0, 0, 0, 'Sara Balloo Text Emote on Quest Complete');
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (637, 5, 0, 0, 0, 0, 0, 0, 2000006017, 0, 0, 0, 0, 0, 0, 0, 'Sara Balloo Say on Quest Complete');
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (637, 5, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sara Balloo Emote on Quest Complete');

REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006016, 'Sara Balloo reads Sully\'s letter page by page.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006017, 'This isn\'t fair! My dearest Sully! Come back to me! No, $N! Why did you bring me such news!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- add script for Sara Balloo's Plea
UPDATE `zp_mangosd`.`quest_template` SET `CompleteScript`=683 WHERE  `entry`=683;

-- delete old sql so we can run this more than once
DELETE FROM `zp_mangosd`.`quest_end_scripts` WHERE  `id`=683 LIMIT 2;
REPLACE INTO `zp_mangosd`.`quest_end_scripts` VALUES (683, 0, 0, 2, 0, 0, 0, 0, 2000006018, 0, 0, 0, 0, 0, 0, 0, 'King Magni Bronzebeard Text Emote on Quest Complete');
REPLACE INTO `zp_mangosd`.`db_script_string` VALUES (2000006018, 'King Magni Bronzebeard carefully studies Sara Balloo\'s note and lets out a long, solemn sigh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- scripted A King's Tribute (2)
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_grand_mason_marblesten' WHERE  `entry`=2790;

REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720214, 'I\'ll get to work right away, $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 5, 'Marblesten - Say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720215, 'There you have it! The King should be quite pleased, if I do say so myself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'Marblesten - Say 2');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720216, 'The King\'s guards should be along shortly to pick up the Memorial. In the mean time, come join me upstairs and let\'s finish our little chat, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'Marblesten - Say 3');

-- hitbox for ouro
UPDATE `zp_mangosd`.`creature_model_info` SET `bounding_radius`=2.2, `combat_reach`=2.3 WHERE  `modelid`=15509;
-- update dirt mounds for ouro encounter
UPDATE `zp_mangosd`.`creature_template` SET `minlevel`=63, `maxlevel`=63, `minhealth`=999999, `maxhealth`=999999,`faction_A`=14, `faction_H`=14,`speed_run`=0.75, `ScriptName`='mob_dirt_mound' WHERE  `entry`=15712;

-- pooling for the rare  spawn Lady Vespia (Ashenvale)
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2109, 1, 'Lady Vespia - Rare Spawns');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (32384, 2109, 0, 'Lady Vespia');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (51887, 2109, 0, 'Lady Vespia');

-- wp for Scarlet High Clerist(wpl rare)
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 1, 2690.82, -1953.37, 107.239, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.690716, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 2, 2688.7, -1948.48, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55858, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 3, 2690.63, -1944.29, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.836015, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 4, 2693.44, -1942.4, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.529709, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 5, 2697.19, -1941.65, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.18458, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 6, 2699.47, -1942.38, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.8822, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 7, 2702.18, -1944.55, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.26567, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 8, 2703.62, -1947.61, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.0811, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 9, 2703.44, -1949.99, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.51169, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 10, 2702.01, -1953.02, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.0915, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 11, 2699.83, -1954.81, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.72237, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 12, 2697.6, -1955.66, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.35323, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 13, 2695.11, -1955.49, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.93697, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 14, 2691.9, -1953.68, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.47358, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 15, 2691.04, -1953, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.32574, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 16, 2689.92, -1953.89, 107.239, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.91086, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 17, 2700.96, -1945.14, 101.656, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.710363, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 18, 2694.77, -1950.19, 105.542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89123, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49764, 19, 2690.37, -1954.28, 107.239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89123, 0, 0);

-- stats
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=67, `faction_H`=67, `speed_walk`=0.95, `rank`=2, `baseattacktime`=1500, `equipment_id`=18390 WHERE  `entry`=1839;

-- move to right spot and wp movement
REPLACE INTO `zp_mangosd`.`creature` VALUES (49764, 1839, 0, 0, 0, 2690.57, -1953.58, 107.239, 0.612176, 72000, 0, 0, 7635, 2620, 0, 2);

-- loot 
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1839 AND `item`=24036;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1839 AND `item`=24029;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1839 AND `item`=24024;
-- add real loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1839, 24020, 100, 1, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1839, 996203, 100, 1, -996203, 1, 0, 0, 0);

-- add weapon
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (18390, 1207, 0, 0);

-- Scarlet Hunter, should not summon a pet, they're already out in the world
DELETE FROM `zp_mangosd`.`creature_ai_scripts` WHERE  `id`=183102;

-- Slaves in BRD shouldn't be so noisy anymore
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_chance`=10 WHERE  `id`=1011601;
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `event_chance`=10 WHERE  `id`=1011602;

/******** Scarlet Executioner (rare wpl) ************/
-- delete shit
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE  `entry`=1841 AND `item`=24036;

-- add real loot
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1841, 24020, 100, 1, -24020, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1841, 996203, 100, 1, -996203, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES (1841, 24033, 100, 1, -24033, 1, 0, 0, 0);

-- stats
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=67, `faction_H`=67, `speed_walk`=0.95, `rank`=2, `baseattacktime`=1800, `equipment_id`=18410 WHERE  `entry`=1841;

-- weapon
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES (18410, 3191, 0, 0);

-- wp movement
UPDATE `zp_mangosd`.`creature` SET `MovementType`=2 WHERE  `guid`=49764;
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 1, 2827.47, -1550.89, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.66054, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 2, 2827.81, -1553.61, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.67486, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 3, 2824.65, -1554.53, 186.291, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.506, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 4, 2827.13, -1553.37, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.439016, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 5, 2830.23, -1555.78, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.66192, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 6, 2833.8, -1557.25, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.026682, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 7, 2835.33, -1557.21, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.026682, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 8, 2837.06, -1560.31, 186.291, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.10428, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 9, 2835.84, -1556.93, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94698, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 10, 2837.8, -1555.75, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.541119, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 11, 2839.36, -1551.43, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2362, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 12, 2839.27, -1549.48, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.75849, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 13, 2843.05, -1548.04, 186.291, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.352624, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 14, 2839.57, -1549.27, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.43924, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 15, 2838.01, -1547.3, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.23365, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 16, 2834.64, -1545.52, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.7795, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 17, 2832.03, -1545.55, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.2743, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 18, 2830.66, -1542.05, 186.291, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.96269, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 19, 2831.8, -1545.46, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.03359, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES (49765, 20, 2829.33, -1547.27, 186.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.76911, 0, 0);

-- add rare Korvok, add equip and remove special drop from reference loot table(SQL from muggle)
REPLACE INTO `zp_mangosd`.`creature` VALUES ('1550', '2603', '0', '0', '0', '-1190.8', '-1958.86', '25.4792', '5.78396', '18000', '0', '0', '4295', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_equip_template` VALUES ('2603', '5256', '0', '0');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24052') AND (`item`='5256') limit 1;
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_kovork', `armor`='1340', `AIName`='', `equipment_id`='2603', `speed_walk`='1.05', `speed_run`='0.95' WHERE (`entry`='2603');

-- Ol'Sooty, added pathing
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='8877') limit 1;
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '1', '-5718.38', '-3097.07', '322.946', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '3035010', '4.65068', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '2', '-5720.21', '-3122.21', '314.933', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035011', '4.99233', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '3', '-5712.19', '-3136.48', '313.718', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035012', '5.21617', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '4', '-5700.46', '-3157.75', '316.471', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035013', '5.21617', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '5', '-5697.52', '-3176.19', '315.908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035014', '4.86431', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '6', '-5699.04', '-3192.5', '316.334', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035015', '4.61927', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '7', '-5696.6', '-3204.7', '315.916', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '3035016', '4.93735', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '8', '-5689.58', '-3218.18', '318.163', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035017', '5.60494', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '9', '-5679.42', '-3217.96', '318.944', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035018', '0.044318', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '10', '-5666.29', '-3210.58', '319.469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035019', '0.535192', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '11', '-5663.73', '-3200.42', '321.051', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035020', '1.32452', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '12', '-5666.14', '-3183.91', '318.223', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035021', '1.77612', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '13', '-5673.79', '-3165.53', '317.691', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035022', '2.10599', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '14', '-5690.41', '-3141.59', '314.102', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035023', '2.21987', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '15', '-5711.39', '-3113.18', '316.514', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035024', '1.99917', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '16', '-5715.83', '-3100.87', '320.736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035025', '1.91671', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '17', '-5716.29', '-3094', '324.997', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035026', '1.61433', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '18', '-5714.59', '-3090.09', '327.467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035027', '0.913753', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '19', '-5708.83', '-3088.9', '329.229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035028', '6.07225', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '20', '-5702.85', '-3092.92', '330.405', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035029', '5.68348', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '21', '-5661.12', '-3121.7', '343.887', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035030', '5.7738', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '22', '-5652.5', '-3123.65', '345.736', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035031', '6.06046', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '23', '-5643.99', '-3123.54', '347.469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035032', '0.012898', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '24', '-5630.71', '-3121.55', '350.957', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035033', '0.221028', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '25', '-5621.87', '-3118.42', '355.859', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035034', '0.605873', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '26', '-5618.48', '-3111.69', '360.137', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035035', '1.13602', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '27', '-5617.1', '-3103.82', '364.709', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035036', '1.80753', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '28', '-5622.84', '-3093.33', '369.542', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035037', '2.22772', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '29', '-5628.02', '-3086.55', '372.739', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035038', '2.08635', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '30', '-5631.84', '-3076.48', '375.946', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035039', '1.88057', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '31', '-5630.84', '-3069.01', '379.641', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035040', '1.43761', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '32', '-5629.67', '-3060.25', '383.261', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035041', '1.43761', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '33', '-5632.53', '-3048.93', '384.672', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035042', '1.98739', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '34', '-5638.86', '-3038.38', '385.678', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035043', '2.2827', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '35', '-5636.98', '-3030.04', '386.795', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035044', '0.641216', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '36', '-5606.52', '-3004.42', '386.882', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035045', '0.676559', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '37', '-5609.73', '-3006.69', '386.277', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '3035046', '3.77103', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '38', '-5633.06', '-3026.74', '387.213', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035047', '3.84171', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '39', '-5646.75', '-3029.99', '385.586', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035048', '3.3744', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '40', '-5659.15', '-3034.93', '386.59', '180000', '0', '0', '0', '0', '0', '0', '0', '0', '3035049', '3.94382', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '41', '-5647.06', '-3046.08', '386.188', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035050', '5.67011', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '42', '-5632.09', '-3058.43', '384.298', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035051', '5.10855', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '43', '-5631.9', '-3069.22', '379.289', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035052', '4.62554', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '44', '-5634.13', '-3078.12', '374.778', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035053', '4.46453', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '45', '-5627.92', '-3088.92', '371.743', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035054', '5.23422', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '46', '-5620.35', '-3102.07', '364.334', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035055', '5.23422', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '47', '-5620.03', '-3115.76', '357.826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035056', '4.23912', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '48', '-5629.09', '-3120.84', '351.625', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035057', '3.49378', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '49', '-5646.88', '-3124.62', '346.905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035058', '2.95578', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '50', '-5660.31', '-3120.97', '344.033', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035059', '2.57487', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '51', '-5677.18', '-3110.23', '339.523', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035060', '2.57487', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '52', '-5700.95', '-3095.1', '330.656', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035061', '2.57487', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES ('8877', '53', '-5710.23', '-3089.79', '328.49', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3035062', '2.97149', '0', '0');

-- 2 more Lord Condar and pooling
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3500', '14268', '0', '14313', '0', '-5709.27', '-4039.54', '366.639', '3.51105', '14400', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3501', '14268', '0', '14313', '0', '-5657.67', '-4127.93', '394.216', '2.86703', '14400', '0', '0', '600000', '0', '0', '0');

REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2111, 1, 'Lord Condar, rare spawn Loch Modan');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (8690, 2111, 0, 'Lord Condar');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3500, 2111, 0, 'Lord Condar');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3501, 2111, 0, 'Lord Condar');

-- prevent George Candarte from becoming invisible
UPDATE `zp_mangosd`.`creature_model_info` SET `modelid_other_gender`='0' WHERE (`modelid`='3680') limit 1;

-- add 4 additional Baron Longshores
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3496', '3467', '1', '797', '660', '-1504.23', '-3817.61', '23.3975', '4.7697', '275', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3497', '3467', '1', '797', '660', '-1360.36', '-3907.34', '9.7931', '1.30924', '275', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3498', '3467', '1', '797', '660', '-1709.7', '-3827.2', '12.492', '2.6562', '275', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3499', '3467', '1', '797', '660', '-1744.62', '-3725.99', '13.9455', '4.09741', '275', '0', '0', '600000', '0', '0', '0');

-- add pooling to Baron Longshore
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2110, 1, 'Baron Longshore - questmob, The Barrens');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3496, 2110, 0, 'Baron Longshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3497, 2110, 0, 'Baron Longshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3498, 2110, 0, 'Baron Longshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3499, 2110, 0, 'Baron Longshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (15066, 2110, 0, 'Baron Longshore');

-- Nightmare dragons skinning: fix green dragon scale drop 5-8
REPLACE INTO `skinning_loot_template` VALUES (15412, 15412, 100, 1, 5, 8, 0, 0, 0);

-- add dream scale to skinning loot
REPLACE INTO `skinning_loot_template` VALUES (15412, 20381, 100, 2, 3, 5, 0, 0, 0);

/********** Maraudon, linked all Primordial Behemoth 2 and 2 at the slope just before last boss, posted again **********/
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55345, 55348, 15, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55345, 55345, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55338, 55341, 15, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55338, 55338, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55344, 55347, 15, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55344, 55344, 0, 0, 2);

REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55463, 55464, 15, 90, 2);
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES (55463, 55463, 0, 0, 2);

-- add armor to Ghok Bashguud
UPDATE `zp_mangosd`.`creature_template` SET `armor`='3489' WHERE (`entry`='9718') limit 1;

-- Lady Vespira, adjusted speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1.1', `speed_run`='1.11' WHERE (`entry`='7016');

-- Lady Vespira, new spawns and mob locations
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3502', '7016', '1', '4982', '419', '7597.13', '-1021.28', '38.0452', '0.773317', '14400', '0', '0', '600000', '545', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3503', '7016', '1', '4982', '419', '7364.62', '-941.096', '32.5092', '3.1452', '14400', '0', '0', '600000', '545', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3504', '7016', '1', '4982', '419', '7372.51', '-1151.05', '55.2231', '1.59012', '14400', '0', '0', '600000', '545', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('52010', '7016', '1', '4982', '419', '7397.51', '-844.687', '18.4878', '4.60328', '14400', '0', '0', '600000', '545', '0', '2');

-- Lady Vespira, pathings for 4 mobs
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '1', '7612.23', '-1011.62', '38.4392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.604456', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '2', '7646.48', '-984.677', '33.8507', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.671215', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '3', '7659.04', '-969.128', '29.1826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.891126', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '4', '7663.94', '-944.044', '25.0967', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.37807', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '5', '7671.79', '-922.5', '19.8468', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.21314', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '6', '7646.55', '-924.921', '20.8629', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.58112', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '7', '7638.96', '-938.701', '26.4293', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.20943', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '8', '7634.51', '-959.846', '31.3753', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.50474', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '9', '7619.38', '-986.417', '34.5694', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.09241', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '10', '7608.5', '-1000.01', '36.2134', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.00994', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3502', '11', '7594.59', '-1025.73', '37.8451', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.38693', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '1', '7362.42', '-955.977', '32.5799', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.46074', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '2', '7354.79', '-959.786', '32.6164', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.60466', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '3', '7346.27', '-959.441', '32.4867', '120000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.97634', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '4', '7330.29', '-972.98', '32.2547', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.78138', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '5', '7308.7', '-984.698', '31.6487', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.63215', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '6', '7292.79', '-1010.66', '33.2006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.16229', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '7', '7268.69', '-1025.27', '37.536', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.68634', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '8', '7266.82', '-1045.82', '38.1673', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.67987', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '9', '7271.59', '-1054.05', '38.4065', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.2375', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '10', '7280.08', '-1054.53', '39.3288', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.2271', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '11', '7313.11', '-1042.82', '36.1303', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.344469', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '12', '7329.32', '-1045.2', '35.8657', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.13757', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '13', '7348.45', '-1035.84', '34.1112', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.45521', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '14', '7343.58', '-1012.49', '31.5948', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.87285', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '15', '7353.86', '-999.76', '31.4603', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.891106', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '16', '7382.44', '-963.069', '32.2536', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.922522', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '17', '7382.04', '-939.166', '32.2536', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.6176', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '18', '7374.73', '-935.474', '32.62', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.67396', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3503', '19', '7364.05', '-940.155', '32.4992', '120000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.58502', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '1', '7366.56', '-1128.49', '46.5026', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.57677', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '2', '7378.7', '-1098.67', '38.6555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.027', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '3', '7394.34', '-1091.16', '40.3494', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.449728', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '4', '7411.01', '-1102.95', '41.6719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.61765', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '5', '7452.96', '-1124.86', '38.6937', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.82185', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '6', '7466.12', '-1125.43', '35.9551', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.029537', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '7', '7473.35', '-1112.21', '34.7102', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.07019', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '8', '7474.71', '-1099.18', '35.3377', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.46682', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '9', '7464.86', '-1081.53', '35.1525', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.15797', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '10', '7446.12', '-1072.13', '36.4234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.67633', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '11', '7428.17', '-1063.12', '37.8309', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.67633', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '12', '7419.93', '-1055.31', '37.9651', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.38338', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '13', '7386.75', '-1062.04', '38.7566', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.34156', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '14', '7367.3', '-1076.5', '38.5925', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.78138', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '15', '7359.91', '-1099.37', '38.0758', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.46076', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3504', '16', '7372.99', '-1155.04', '57.1023', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.99875', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '1', '7397.72', '-834.919', '18.7443', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.74326', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '2', '7390.71', '-829.357', '18.0082', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.46583', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '3', '7366.29', '-831.967', '18.416', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.24808', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '4', '7352.07', '-824.728', '18.399', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.5962', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '5', '7385.75', '-851.127', '18.0349', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.61606', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '6', '7398.8', '-868.779', '15.049', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.34903', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '7', '7414', '-900.722', '13.0059', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.15268', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '8', '7426.87', '-910.313', '12.871', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.64277', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '9', '7444.59', '-936.784', '8.60161', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.31133', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '10', '7440.94', '-923.065', '11.4111', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.83202', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '11', '7416.48', '-900.834', '12.9616', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.44463', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '12', '7399.34', '-871.736', '14.7703', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.05978', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('52010', '13', '7397.97', '-850.059', '18.2056', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.62703', '0', '0');

-- Lady Vespira - pooling
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2112, 1, 'Lady Vespira - rare spawn - Darkshore');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3502, 2112, 0, 'Lady Vespira');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3503, 2112, 0, 'Lady Vespira');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3504, 2112, 0, 'Lady Vespira');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (52010, 2112, 0, 'Lady Vespira');

-- Lady Vespira - adjusted loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='25', `groupid`='2' WHERE (`entry`='7016') AND (`item`='6332');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24062') AND (`item`='6333');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('7016', '6333', '75', '2', '1', '1', '0', '0', '0');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='7016') AND (`item`='24064');

-- Vultros, new spawns
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('28407', '462', '0', '507', '0', '-10430.9', '1374.82', '65.3204', '1.23596', '18000', '17', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('16192', '462', '0', '507', '0', '-10803', '816.816', '32.9726', '1.97031', '18000', '17', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('16193', '462', '0', '507', '0', '-11134.5', '804.189', '34.8267', '1.84857', '18000', '17', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('16194', '462', '0', '507', '0', '-11004.9', '1247.69', '42.1335', '2.29625', '18000', '17', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('16195', '462', '0', '507', '0', '-10973.2', '1612.51', '45.9672', '2.70072', '18000', '17', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('16196', '462', '0', '507', '0', '-9910.68', '1690.01', '35.4019', '3.9927', '18000', '17', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('16197', '462', '0', '507', '0', '-10535', '809.831', '45.8221', '2.04493', '18000', '17', '0', '600000', '0', '0', '1');

-- Vultros - pooling
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2113, 1, 'Vultros - rare spawn - Westfall');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (28407, 2113, 0, 'Vultros');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (16192, 2113, 0, 'Vultros');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (16193, 2113, 0, 'Vultros');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (16194, 2113, 0, 'Vultros');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (16195, 2113, 0, 'Vultros');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (16196, 2113, 0, 'Vultros');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (16197, 2113, 0, 'Vultros');

-- Vultros - adjusted drops
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24066') AND (`item`='5971') limit 1;
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('462', '5971', '70', '1', '1', '1', '0', '0', '0');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='462') AND (`item`='4454');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='40', `groupid`='2' WHERE (`entry`='462') AND (`item`='24064');
UPDATE `zp_mangosd`.`creature_loot_template` SET `groupid`='2' WHERE (`entry`='462') AND (`item`='24067');

-- Foe Reaper 4000 - increased walk speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1.3' WHERE (`entry`='573');

-- Foe Reaper 4000 - new spawns and updated spawndist
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('3952', '573', '0', '548', '0', '-10603', '1674.02', '40.6988', '2.8146', '14400', '50', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('3953', '573', '0', '548', '0', '-10818.4', '829.989', '33.3324', '5.34357', '14400', '50', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('3954', '573', '0', '548', '0', '-10163', '1119.54', '36.9759', '3.08555', '14400', '50', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('3955', '573', '0', '548', '0', '-9927.06', '1220.64', '42.4261', '0.387707', '14400', '50', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature`  VALUES ('90413', '573', '0', '548', '0', '-10225.6', '1448.09', '40.8255', '4.23996', '14400', '50', '0', '600000', '0', '0', '1');

-- Foe Reaper 4000 - pooling
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2114, 1, 'Foe Reaper 4000 - rare spawn - Westfall');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (90413, 2114, 0, 'Foe Reaper 4000');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3952, 2114, 0, 'Foe Reaper 4000');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3953, 2114, 0, 'Foe Reaper 4000');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3954, 2114, 0, 'Foe Reaper 4000');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3955, 2114, 0, 'Foe Reaper 4000');

-- Foe Reaper 4000 - adjusted loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='75', `groupid`='1' WHERE (`entry`='573') AND (`item`='933');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('573', '4434', '25', '1', '1', '1', '0', '0', '0');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24060') AND (`item`='4434');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE (`entry`='573') AND (`item`='24078');

-- Moonbrook - adding ghouls for the night spawn
REPLACE INTO `zp_mangosd`.`creature` VALUES ('19345', '846', '0', '646', '0', '-10988.2', '1600.1', '45.6427', '5.37523', '300', '5', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('19346', '846', '0', '646', '0', '-10958.9', '1603.63', '47.8132', '1.78282', '300', '5', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('19347', '846', '0', '646', '0', '-10976.4', '1610.5', '46.0335', '1.98', '300', '5', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('19348', '846', '0', '646', '0', '-10990.2', '1623.08', '45.1017', '4.4604', '300', '5', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('19349', '846', '0', '646', '0', '-10962.3', '1625.83', '46.4382', '3.24442', '300', '5', '0', '600000', '0', '0', '1');

-- Moonbrook - adding ghouls to event 51 (nighttime)
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('19345', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('19346', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('19347', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('19348', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('19349', '51');

-- Moonbrook - adding fleshripper to event 50 (daytime)
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('52594', '50');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('52595', '50');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('52596', '50');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('90279', '50');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('90280', '50');

-- Leprithus/Rotten Ghouls - adjusted speeds
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='0.95' WHERE (`entry`='572');
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='0.95', `speed_run`='1.11286' WHERE (`entry`='846');

-- Leprithus - adjusted mob values, more spawns
REPLACE INTO `zp_mangosd`.`creature` VALUES ('11559', '572', '0', '1065', '0', '-11219.2', '927.232', '55.7409', '5.67189', '9000', '0', '0', '600000', '456', '0', '2');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('28458', '572', '0', '1065', '0', '-10083.9', '1558.95', '41.1425', '4.74183', '9000', '0', '0', '600000', '456', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('11560', '846', '0', '646', '0', '-11217.4', '928.318', '55.3761', '5.56194', '9000', '0', '0', '332', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('11561', '846', '0', '646', '0', '-11220.8', '925.954', '56.1112', '5.47162', '9000', '0', '0', '373', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('11562', '846', '0', '646', '0', '-10085.3', '1558.06', '40.8313', '4.73335', '9000', '0', '0', '373', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('11563', '846', '0', '646', '0', '-10081.7', '1557.26', '41.0555', '4.73335', '9000', '0', '0', '373', '0', '0', '0');

-- Leprithus - pathing group
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('11559', '11559', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('11559', '11560', '2', '270', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('11559', '11561', '2', '90', '2');

-- Leprithus - static group at small northern graveyard
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('28458', '28458', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('28458', '11562', '2', '90', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('28458', '11563', '2', '270', '2');

-- Leprithus, pathing for 1 group
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '1', '-11210.7', '917.22', '54.2224', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.49126', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '2', '-11182.6', '897.654', '45.464', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.69547', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '3', '-11153.7', '865.204', '38.6285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.44022', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '4', '-11143.9', '835.976', '37.2559', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.84701', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '5', '-11088.6', '839.097', '41.1577', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.056306', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '6', '-11057.5', '808.493', '38.4989', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.33811', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '7', '-11013.1', '789.736', '36.7721', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.89103', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '8', '-10917.3', '690.155', '39.05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.4787', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '9', '-10885.2', '688.913', '33.3673', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.24446', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '10', '-10889.9', '714.684', '34.8985', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.77947', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '11', '-11001.4', '839.067', '36.1339', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.30176', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '12', '-11021', '898.478', '36.2574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.88943', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '13', '-11069.5', '940.54', '39.7958', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.42743', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '14', '-11107.1', '964.761', '36.8611', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.96681', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '15', '-11207', '917.443', '53.6204', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.57018', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '16', '-11223.8', '931.543', '57.8934', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.44314', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '17', '-11233.7', '941.465', '66.8763', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.16671', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '18', '-11239.7', '952.337', '76.8304', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.17063', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '19', '-11248.9', '975.817', '81.1482', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.93109', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '20', '-11273.5', '1018.69', '93.3923', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.16278', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '21', '-11278.2', '1036.42', '97.0886', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.83291', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('11559', '22', '-11277.8', '1029.57', '96.6223', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.78994', '0', '0');

-- Leprithus - add his spawns and the ghoul adds to event 51 (Pyrewood Village)
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('28458', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('11559', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('11560', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('11561', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('11562', '51');
REPLACE INTO `zp_mangosd`.`game_event_creature` VALUES ('11563', '51');

-- Leprithus - adjusted loot
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24060') AND (`item`='1314');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24078') AND (`item`='1387');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='572') AND (`item`='24060');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('572', '1387', '50', '1', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('572', '1314', '50', '1', '1', '1', '0', '0', '0');

-- Lupos - adjust speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1' WHERE (`entry`='521');

-- Lupos - old spawn - delete old pathing and add new one
REPLACE INTO `zp_mangosd`.`creature` VALUES ('1559', '521', '0', '0', '0', '-10173.2', '-715.07', '39.5268', '5.49033', '14400', '0', '0', '616', '0', '0', '2');
DELETE from `zp_mangosd`.creature_movement where id='1559';
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '1', '-10166.3', '-735.722', '43.2444', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.00022', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '2', '-10159.7', '-759.059', '43.0574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.9688', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '3', '-10159.7', '-784.07', '41.2929', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.71355', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '4', '-10169', '-800.854', '39.7284', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.12058', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '5', '-10178.3', '-812.219', '42.477', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.92423', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '6', '-10193.5', '-824.187', '41.0464', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.76323', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '7', '-10197', '-841.279', '42.0189', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.55255', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '8', '-10218.2', '-864.684', '41.0042', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.97529', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '9', '-10237.6', '-876.706', '38.0744', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.69647', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '10', '-10246.9', '-907.214', '40.3835', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.47401', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '11', '-10248.4', '-944.4', '38.3728', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.68999', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '12', '-10244.2', '-1006.52', '36.24', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.8078', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '13', '-10220.3', '-1021.18', '32.0882', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.73064', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '14', '-10185.8', '-1030.65', '27.8698', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.01731', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '15', '-10180.1', '-1054.48', '27.8211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.94132', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '16', '-10198.8', '-1082.43', '31.4453', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.1088', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '17', '-10201.3', '-1093.04', '30.9553', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.2005', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '18', '-10188.7', '-1101.1', '33.2864', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.76598', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '19', '-10172.8', '-1099.86', '30.5536', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.052209', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '20', '-10157.5', '-1092.24', '30.6186', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.543082', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '21', '-10128.7', '-1085.95', '32.7066', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.15431', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '22', '-10125.7', '-1084.27', '33.047', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.503812', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '23', '-10113.7', '-1046.35', '35.1368', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.34812', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '24', '-10119.4', '-1023.27', '33.391', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.94109', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '25', '-10141.5', '-993.754', '29.4209', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.22383', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '26', '-10153.4', '-968.433', '30.6652', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.01178', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '27', '-10160.2', '-925.542', '32.4384', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.67406', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '28', '-10156.4', '-901.338', '33.6006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.41487', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '29', '-10159.7', '-871.911', '34.6003', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.74082', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '30', '-10179.2', '-848.2', '39.1104', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.36128', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '31', '-10215.8', '-824.723', '40.6355', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.62831', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '32', '-10184.6', '-809.017', '42.3942', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.464543', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '33', '-10160.4', '-782.473', '41.3943', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.982906', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '34', '-10158.1', '-761.34', '42.9469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.51698', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '35', '-10143.7', '-732.932', '43.0583', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.02217', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '36', '-10156.8', '-713.077', '41.4938', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.21205', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement`  VALUES ('1559', '37', '-10167.8', '-709.967', '40.5564', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.99745', '0', '0');

-- Lupos - new spawn, delete old pathing and add new one
REPLACE INTO `zp_mangosd`.`creature` VALUES ('28411', '521', '0', '0', '0', '-10181.7', '-47.6668', '26.8653', '0.760633', '14400', '0', '0', '616', '0', '0', '2');
DELETE from `zp_mangosd`.creature_movement where id='28411';
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '1', '-10174.3', '-35.0129', '26.8846', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.1023', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '2', '-10166.1', '-13.2863', '26.0962', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.31828', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '3', '-10173.2', '10.0322', '26.059', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.89555', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '4', '-10185.5', '27.3717', '27.9072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.20578', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '5', '-10198.5', '46.2463', '29.3297', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.87199', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '6', '-10202.4', '71.3849', '28.9868', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.71491', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '7', '-10198.6', '98.3575', '29.0874', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.46358', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '8', '-10213.2', '144.315', '30.8762', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.86806', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '9', '-10205.8', '183.709', '25.7618', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.35755', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '10', '-10189.3', '212.183', '24.2608', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.00805', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '11', '-10183.8', '257.543', '22.8565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.50285', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '12', '-10194.1', '307.752', '28.8103', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.8013', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '13', '-10224.4', '338.063', '42.4597', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.39035', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '14', '-10249.5', '339.116', '47.397', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.1247', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '15', '-10264.5', '315.442', '47.0477', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.29101', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '16', '-10253.7', '285.208', '40.5905', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.1039', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '17', '-10239.6', '259.899', '34.9594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.20601', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '18', '-10249.1', '229.797', '29.1526', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.27531', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '19', '-10272.8', '188.26', '36.4649', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.33029', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '20', '-10270.8', '168.592', '35.1345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.83294', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '21', '-10247.3', '131.442', '33.1967', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.31203', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '22', '-10237.5', '85.0513', '36.6481', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.87221', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '23', '-10238.3', '41.9151', '41.6708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.56983', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '24', '-10238', '-0.597061', '38.269', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.75047', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '25', '-10245.8', '-40.3244', '37.978', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.48737', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '26', '-10248.8', '-88.0945', '36.9247', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.67193', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '27', '-10247.5', '-119.521', '33.4703', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.04107', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '28', '-10219.7', '-129.362', '31.6332', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.25843', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '29', '-10189.3', '-119.194', '28.4964', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.367944', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '30', '-10182.9', '-100.411', '29.3104', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.39289', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '31', '-10175.1', '-77.8099', '27.8116', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.18083', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28411', '32', '-10180', '-52.6874', '27.0878', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.86805', '0', '0');

-- Lupos - pooling
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2115, 1, 'Lupos - rare spawn - Duskwood');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (28411, 2115, 0, 'Lupos');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (1559, 2115, 0, 'Lupos');

-- Slark - delete old pathing and add new one and make him RUN
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1.4', `speed_run`='1.7' WHERE (`entry`='519');
UPDATE `zp_mangosd`.`creature` SET `position_x`='-9634.31', `position_y`='1191.04', `position_z`='6.82035', `MovementType`='2' WHERE (`guid`='90206');
DELETE from `zp_mangosd`.creature_movement where id='90206';
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '1', '-9634.31', '1191.04', '6.82035', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.99377', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '2', '-9644.92', '1153.88', '5.06434', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.42436', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '3', '-9652.71', '1118.47', '7.03876', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.57358', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '4', '-9641.07', '1068.75', '7.06609', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.95057', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '5', '-9616.34', '1044.53', '7.69612', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.55139', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '6', '-9597.07', '1044.51', '7.24056', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.112509', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '7', '-9592.31', '1049.49', '6.79333', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.807586', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '8', '-9594.73', '1054.87', '5.58979', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.99354', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '9', '-9610.15', '1063.53', '4.1802', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.62971', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '10', '-9617.68', '1070.97', '3.6029', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.02103', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '11', '-9628.42', '1107.4', '2.31377', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.85609', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '12', '-9619.7', '1173.65', '4.23431', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.43983', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '13', '-9626.86', '1215.03', '5.01596', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.74221', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '14', '-9632.26', '1268.38', '1.88527', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.65189', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '15', '-9631.89', '1308.33', '3.67342', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.54979', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '16', '-9620.38', '1360.23', '3.86024', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.30631', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '17', '-9601.72', '1412.26', '3.30151', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.2317', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '18', '-9598.37', '1451.8', '3.46615', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.57335', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '19', '-9611.62', '1482.53', '7.65446', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.24879', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '20', '-9669.26', '1601.73', '10.8514', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.98961', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '21', '-9708.52', '1643.82', '8.94286', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.35482', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '22', '-9879.3', '1783.23', '6.20016', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.46085', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '23', '-9930.57', '1852.82', '8.89846', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.16633', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '24', '-9996.75', '1903.47', '6.5018', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.59829', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '25', '-10171.8', '1999.12', '9.40403', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.64542', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '26', '-10286', '2039.4', '10.1836', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.81428', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '27', '-10460.3', '2077.22', '7.48118', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.93994', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '28', '-10503.9', '2092.75', '6.79837', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.75537', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '29', '-10628.7', '2086.72', '6.1576', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.23447', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '30', '-10716.2', '2068.79', '8.3975', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.36406', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '31', '-10814.2', '2095.7', '6.44276', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.79857', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '32', '-10883', '2111.94', '5.73666', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.92031', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '33', '-10915.6', '2109.84', '5.92466', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.29337', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '34', '-10962.5', '2090.03', '5.34457', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.5879', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '35', '-11003', '2065.01', '6.96295', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.7489', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '36', '-11105.2', '2024.89', '3.24016', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.48187', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '37', '-11169.7', '2020.88', '4.49002', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.17163', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '38', '-11274.3', '1969.87', '8.67643', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.63502', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '39', '-11360.5', '1837.66', '4.96956', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.16124', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '40', '-11399.9', '1798.4', '7.6584', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.82352', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '41', '-11415.6', '1785.09', '7.97079', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.05913', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '42', '-11422.9', '1771.57', '8.57318', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.25941', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '43', '-11393.7', '1773.02', '10.0107', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.242082', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '44', '-11370.6', '1783.29', '8.54669', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.458066', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '45', '-11347', '1812.32', '8.43464', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.94894', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '46', '-11326', '1873.66', '11.3936', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.23954', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '47', '-11306.1', '1914.5', '11.0344', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.09031', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '48', '-11280.9', '1948.07', '11.2989', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.88218', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '49', '-11218.2', '1980.62', '12.1129', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.469846', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '50', '-11104.9', '2005.71', '7.87016', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.175322', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '51', '-11054.5', '2029.98', '9.88323', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.465919', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '52', '-10973.1', '2064.43', '9.12553', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.39916', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '53', '-10916.7', '2099.74', '10.3241', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.55624', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '54', '-10898.7', '2108.41', '7.66039', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.446285', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '55', '-10883', '2108.39', '7.33491', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.28179', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '56', '-10823.3', '2088.38', '9.38482', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.95978', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '57', '-10748', '2074.35', '7.15009', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.10115', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '58', '-10657.2', '2067.44', '6.10433', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.20718', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '59', '-10521.2', '2074.97', '11.6091', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.04573', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '60', '-10416.7', '2062.99', '7.66536', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.16791', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '61', '-10330', '2038.78', '7.80002', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.94015', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '62', '-10288.2', '2024.56', '12.4954', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.9912', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '63', '-10226.6', '2015.47', '11.2117', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.1365', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '64', '-10157.6', '1988.69', '11.9828', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.89696', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '65', '-10136.9', '1978.1', '11.4148', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.81057', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '66', '-10033.1', '1914.28', '6.28448', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.73203', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '67', '-9970.41', '1887.63', '10.2514', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.88125', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '68', '-9957.82', '1877.68', '12.3161', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.61422', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '69', '-9944.37', '1859.11', '10.9921', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.33933', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '70', '-9921.7', '1812.2', '9.2262', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.16262', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '71', '-9910.72', '1798.35', '8.74999', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.38253', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '72', '-9767.22', '1668.45', '9.6181', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.54746', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '73', '-9716.93', '1631.81', '11.5933', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.65349', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '74', '-9697.62', '1613.15', '12.342', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.50034', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '75', '-9685.79', '1588.71', '12.9105', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.15084', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '76', '-9637.98', '1493.96', '10.0868', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.18226', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '77', '-9629', '1469.36', '12.6993', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.06052', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '78', '-9624.8', '1420.36', '9.71862', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.57751', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '79', '-9627.68', '1390.36', '7.56276', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.61678', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '80', '-9626.34', '1349.48', '4.44597', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.70318', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '81', '-9641.38', '1292.13', '5.06538', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.45578', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90206', '82', '-9647.54', '1246.03', '7.05465', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.61678', '0', '0');

-- Slark - adjusted loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='15' WHERE (`entry`='519') AND (`item`='24078');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24076') AND (`item`='6180');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24076') AND (`item`='3188');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('519', '6180', '50', '1', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('519', '3188', '50', '1', '1', '1', '0', '0', '0');

-- **********************************************

-- Brack - adjusted loot
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24078') AND (`item`='2235');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24078') AND (`item`='6179');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('520', '6179', '50', '1', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('520', '2235', '50', '1', '1', '1', '0', '0', '0');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='15' WHERE (`entry`='520') AND (`item`='24060');

-- Brack - delete old pathing and add new one and make him RUN
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='1.4', `speed_run`='1.7' WHERE (`entry`='520');
UPDATE `zp_mangosd`.`creature` SET `position_x`='-11393.7', `position_y`='1773.02', `position_z`='10.0107' WHERE (`guid`='90207');
DELETE from `zp_mangosd`.creature_movement where id='90207';
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '1', '-11393.7', '1773.02', '10.0107', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.242082', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '2', '-11370.6', '1783.29', '8.54669', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.458066', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '3', '-11347', '1812.32', '8.43464', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.94894', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '4', '-11326', '1873.66', '11.3936', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.23954', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '5', '-11306.1', '1914.5', '11.0344', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.09031', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '6', '-11280.9', '1948.07', '11.2989', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.88218', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '7', '-11218.2', '1980.62', '12.1129', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.469846', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '8', '-11104.9', '2005.71', '7.87016', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.175322', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '9', '-11054.5', '2029.98', '9.88323', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.465919', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '10', '-10973.1', '2064.43', '9.12553', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.39916', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '11', '-10916.7', '2099.74', '10.3241', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.55624', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '12', '-10898.7', '2108.41', '7.66039', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.446285', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '13', '-10883', '2108.39', '7.33491', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.28179', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '14', '-10823.3', '2088.38', '9.38482', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.95978', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '15', '-10748', '2074.35', '7.15009', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.10115', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '16', '-10657.2', '2067.44', '6.10433', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.20718', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '17', '-10521.2', '2074.97', '11.6091', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.04573', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '18', '-10416.7', '2062.99', '7.66536', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.16791', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '19', '-10330', '2038.78', '7.80002', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.94015', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '20', '-10288.2', '2024.56', '12.4954', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.9912', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '21', '-10226.6', '2015.47', '11.2117', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '6.1365', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '22', '-10157.6', '1988.69', '11.9828', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.89696', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '23', '-10136.9', '1978.1', '11.4148', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.81057', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '24', '-10033.1', '1914.28', '6.28448', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.73203', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '25', '-9970.41', '1887.63', '10.2514', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.88125', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '26', '-9957.82', '1877.68', '12.3161', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.61422', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '27', '-9944.37', '1859.11', '10.9921', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.33933', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '28', '-9921.7', '1812.2', '9.2262', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.16262', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '29', '-9910.72', '1798.35', '8.74999', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.38253', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '30', '-9767.22', '1668.45', '9.6181', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.54746', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '31', '-9716.93', '1631.81', '11.5933', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.65349', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '32', '-9697.62', '1613.15', '12.342', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.50034', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '33', '-9685.79', '1588.71', '12.9105', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.15084', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '34', '-9637.98', '1493.96', '10.0868', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.18226', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '35', '-9629', '1469.36', '12.6993', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.06052', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '36', '-9624.8', '1420.36', '9.71862', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.57751', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '37', '-9627.68', '1390.36', '7.56276', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.61678', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '38', '-9626.34', '1349.48', '4.44597', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.70318', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '39', '-9641.38', '1292.13', '5.06538', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.45578', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '40', '-9647.54', '1246.03', '7.05465', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.61678', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '41', '-9634.31', '1191.04', '6.82035', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.99377', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '42', '-9644.92', '1153.88', '5.06434', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.42436', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '43', '-9652.71', '1118.47', '7.03876', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.57358', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '44', '-9641.07', '1068.75', '7.06609', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.95057', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '45', '-9616.34', '1044.53', '7.69612', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '5.55139', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '46', '-9597.07', '1044.51', '7.24056', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.112509', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '47', '-9592.31', '1049.49', '6.79333', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0.807586', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '48', '-9594.73', '1054.87', '5.58979', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.99354', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '49', '-9610.15', '1063.53', '4.1802', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.62971', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '50', '-9617.68', '1070.97', '3.6029', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.02103', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '51', '-9628.42', '1107.4', '2.31377', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.85609', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '52', '-9619.7', '1173.65', '4.23431', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.43983', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '53', '-9626.86', '1215.03', '5.01596', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.74221', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '54', '-9632.26', '1268.38', '1.88527', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.65189', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '55', '-9631.89', '1308.33', '3.67342', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.54979', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '56', '-9620.38', '1360.23', '3.86024', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.30631', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '57', '-9601.72', '1412.26', '3.30151', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.2317', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '58', '-9598.37', '1451.8', '3.46615', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.57335', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '59', '-9611.62', '1482.53', '7.65446', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.24879', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '60', '-9669.26', '1601.73', '10.8514', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1.98961', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '61', '-9708.52', '1643.82', '8.94286', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.35482', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '62', '-9879.3', '1783.23', '6.20016', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.46085', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '63', '-9930.57', '1852.82', '8.89846', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.16633', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '64', '-9996.75', '1903.47', '6.5018', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.59829', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '65', '-10171.8', '1999.12', '9.40403', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.64542', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '66', '-10286', '2039.4', '10.1836', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.81428', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '67', '-10460.3', '2077.22', '7.48118', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.93994', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '68', '-10503.9', '2092.75', '6.79837', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.75537', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '69', '-10628.7', '2086.72', '6.1576', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.23447', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '70', '-10716.2', '2068.79', '8.3975', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.36406', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '71', '-10814.2', '2095.7', '6.44276', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.79857', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '72', '-10883', '2111.94', '5.73666', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2.92031', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '73', '-10915.6', '2109.84', '5.92466', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.29337', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '74', '-10962.5', '2090.03', '5.34457', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.5879', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '75', '-11003', '2065.01', '6.96295', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.7489', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '76', '-11105.2', '2024.89', '3.24016', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.48187', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '77', '-11169.7', '2020.88', '4.49002', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.17163', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '78', '-11274.3', '1969.87', '8.67643', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.63502', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '79', '-11360.5', '1837.66', '4.96956', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.16124', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '80', '-11399.9', '1798.4', '7.6584', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '3.82352', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '81', '-11415.6', '1785.09', '7.97079', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.05913', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('90207', '82', '-11422.9', '1771.57', '8.57318', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '4.25941', '0', '0');

-- Fenros - adjusted loot
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24050') AND (`item`='4474');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24050') AND (`item`='6204');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='507') AND (`item`='24050');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('507', '4474', '50', '1', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('507', '6204', '50', '1', '1', '1', '0', '0', '0');

-- Fenros - adjust faction to make him aggressive
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`='24', `faction_H`='24' WHERE (`entry`='507');

-- Fenros - adjusted movementType and spawn location, delete old pathing, innsert new pathing
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='28408');
DELETE FROM `zp_mangosd`.`creature_movement` WHERE id='28408';
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '1', '-10445.9', '-805.397', '51.1951', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.49521', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '2', '-10453.3', '-809.77', '50.4831', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.75301', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '3', '-10460.7', '-820.491', '51.2576', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.14963', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '4', '-10467.1', '-826.288', '51.7137', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.75693', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '5', '-10482.9', '-825.535', '51.2306', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.07364', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '6', '-10532.8', '-799.513', '55.1182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.65345', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '7', '-10559.5', '-786.455', '55.4724', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.07756', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '8', '-10581.6', '-791.459', '56.9335', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.55273', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '9', '-10608.9', '-819.564', '52.9727', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.11036', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '10', '-10626.4', '-837.847', '50.4453', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.89831', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '11', '-10635.4', '-855.611', '51.199', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.36562', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '12', '-10640', '-880.85', '49.407', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.5816', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '13', '-10633.5', '-904.537', '49.5741', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.97823', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '14', '-10638.4', '-917.033', '51.4161', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.33813', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '15', '-10633.6', '-926.391', '53.6448', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.18243', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '16', '-10617.7', '-942.305', '56.1699', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.58298', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '17', '-10569.7', '-961.191', '47.9267', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.95212', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '18', '-10545.3', '-959.782', '46.4014', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.057704', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '19', '-10500.7', '-928.868', '44.2593', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.658534', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '20', '-10483.3', '-917.134', '46.0576', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.57214', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '21', '-10450.5', '-906.579', '45.3413', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.265835', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '22', '-10417.7', '-886.341', '47.9524', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.544651', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '23', '-10380.7', '-866.62', '45.5498', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.477892', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '24', '-10325.1', '-859.76', '41.454', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.093047', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '25', '-10265.8', '-803.321', '44.6499', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.788125', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '26', '-10261.9', '-769.241', '46.1124', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.788124', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '27', '-10244.9', '-751.603', '46.1998', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.803832', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '28', '-10242.6', '-738.032', '43.3722', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.61672', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '29', '-10254.3', '-735.591', '45.0395', '300000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.03044', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '30', '-10264.2', '-739.097', '45.2177', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.48204', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '31', '-10282.1', '-757.073', '47.8641', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.0436', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '32', '-10296.1', '-791.938', '49.171', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.38132', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '33', '-10323.1', '-812.96', '44.6272', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.74122', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '34', '-10364', '-822.838', '44.5784', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.34852', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '35', '-10428.5', '-811.308', '50.0647', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.91263', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('28408', '36', '-10444.9', '-803.592', '51.469', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.70057', '0', '0');

-- Nefaru - old spawn, adjusting MovementType and pathing
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2' WHERE (`guid`='4277');
DELETE FROM `zp_mangosd`.creature_movement WHERE id='4277';
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '1', '-11217.5', '-874.471', '79.249', '600000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.766923', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '2', '-11202.8', '-860.626', '79.8426', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.735509', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '3', '-11188.5', '-849.704', '77.0445', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.645191', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '4', '-11178', '-848.768', '77.0445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.81704', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '5', '-11168.1', '-859.976', '77.0445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.42042', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '6', '-11160.6', '-863.192', '77.0445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6.09586', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '7', '-11160.8', '-861.025', '77.0445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.84293', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '8', '-11165.8', '-855.144', '77.4346', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.377', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '9', '-11175.3', '-839.782', '77.0645', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.9843', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '10', '-11176.8', '-824.444', '76.3599', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.54447', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '11', '-11167.3', '-800.317', '71.373', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.06931', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '12', '-11173.4', '-806.87', '73.0229', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.9635', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '13', '-11181.5', '-827.817', '76.9485', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.40725', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '14', '-11191.8', '-847.894', '77.0423', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.14415', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '15', '-11200.8', '-857.75', '79.853', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.82213', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '16', '-11216.3', '-871.927', '79.0646', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.96351', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '17', '-11229.6', '-881.067', '79.4388', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.72396', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('4277', '18', '-11229.1', '-885.415', '79.5244', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.85101', '0', '0');

-- Nefaru - new spawn
REPLACE INTO `zp_mangosd`.`creature` VALUES ('2723', '534', '0', '0', '0', '-11149.3', '-1161.04', '44.2096', '5.81469', '21600', '0', '0', '4295', '0', '0', '0');

-- Nefaru - pooling
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2116, 1, 'Nefaru - rare spawn - Duskwood');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (2723, 2116, 0, 'Nefaru');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (4277, 2116, 0, 'Nefaru');

-- Nefaru - adjusted loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='25' WHERE (`entry`='534') AND (`item`='24054');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24052') AND (`item`='4477');
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24052') AND (`item`='4476');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('534', '4476', '50', '1', '1', '1', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('534', '4477', '50', '1', '1', '1', '0', '0', '0');

-- Edan the Howler - new spawns
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3573', '1137', '0', '931', '0', '-5402.11', '-128.091', '367.749', '5.32383', '7200', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3574', '1137', '0', '931', '0', '-5425.23', '-220.79', '371.905', '1.19656', '7200', '0', '0', '600000', '0', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3575', '1137', '0', '931', '0', '-5529.84', '-336.251', '354.394', '0.643645', '7200', '0', '0', '600000', '0', '0', '0');

-- Edan the Howler - pooling
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2117, 1, 'Edan the Howler - rare spawn - Dun Morogh');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3127, 2117, 0, 'Edan the Howler');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3573, 2117, 0, 'Edan the Howler');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3574, 2117, 0, 'Edan the Howler');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3575, 2117, 0, 'Edan the Howler');

-- Edan the Howler - adjusted loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='60', `groupid`='1' WHERE (`entry`='1137') AND (`item`='3008');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='40', `groupid`='1' WHERE (`entry`='1137') AND (`item`='3225');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='35' WHERE (`entry`='1137') AND (`item`='24074');


-- Gibblewilt - moved another mob to make some SPACE
REPLACE INTO `zp_mangosd`.`creature` VALUES ('2462', '1211', '0', '6921', '0', '-5300.25', '574.341', '388.342', '1.97096', '180', '0', '0', '600000', '0', '0', '0');

-- Gibblewilt - added new spawns
REPLACE INTO `zp_mangosd`.`creature` VALUES ('4562', '8503', '0', '7807', '0', '-5310.43', '600.794', '390.543', '4.99867', '14400', '0', '0', '600000', '459', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('4563', '8503', '0', '7807', '0', '-5309.54', '611.205', '390.269', '0.686828', '14400', '0', '0', '600000', '459', '0', '0');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('4564', '8503', '0', '7807', '0', '-5071.58', '442.773', '410.966', '2.66211', '14400', '0', '0', '600000', '459', '0', '0');

-- Gibblewilt - pooling
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2118, 1, 'Gibblewilt - rare spawn - Dun Morogh');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (2470, 2118, 0, 'Gibblewilt');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (4562, 2118, 0, 'Gibblewilt');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (4563, 2118, 0, 'Gibblewilt');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (4564, 2118, 0, 'Gibblewilt');

-- Gibblewilt - adjusting loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='50', `groupid`='1' WHERE (`entry`='8503') AND (`item`='10553');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='50', `groupid`='1' WHERE (`entry`='8503') AND (`item`='10554');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='25' WHERE (`entry`='8503') AND (`item`='24076');

-- Timber - added path, group, adjust speed, movementType
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`='0.8' WHERE (`entry`='1132');
UPDATE `zp_mangosd`.`creature` SET `MovementType`='2', `spawntimesecs`='7200' WHERE (`guid`='3154');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('3154', '3154', '0', '0', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('3154', '3155', '2', '270', '2');
REPLACE INTO `zp_mangosd`.`creature_formations` VALUES ('3154', '3156', '2', '90', '2');
DELETE FROM `zp_mangosd`.`creature_movement` where id='3154';
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '1', '-5242.89', '107.859', '392.54', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.85647', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '2', '-5233.61', '115.296', '393.876', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.954644', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '3', '-5232.94', '124.225', '394.213', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1.49657', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '4', '-5237.07', '132.279', '394.977', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.3448', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '5', '-5245.99', '134.369', '394.856', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2.97705', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '6', '-5257.09', '130.369', '394.278', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.48756', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '7', '-5266.61', '121.216', '393.647', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3.91167', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '8', '-5265.25', '110.184', '392.953', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4.87378', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '9', '-5257.34', '105.325', '392.239', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5.73772', '0', '0');
REPLACE INTO `zp_mangosd`.`creature_movement` VALUES ('3154', '10', '-5247.71', '106.446', '392.433', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.161386', '0', '0');

-- Timber - adjust loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='50', `groupid`='1' WHERE (`entry`='1132') AND (`item`='1965');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='50', `groupid`='1' WHERE (`entry`='1132') AND (`item`='3224');
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='25' WHERE (`entry`='1132') AND (`item`='24075');

-- Bjarn - old and 2 new spawns, adjust location, etc
REPLACE INTO `zp_mangosd`.`creature` VALUES ('86170', '1130', '0', '913', '0', '-5799.52', '-948.207', '393.286', '0.448044', '14400', '30', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3755', '1130', '0', '913', '0', '-5837.39', '-1186.53', '380.05', '2.34478', '14400', '40', '0', '600000', '0', '0', '1');
REPLACE INTO `zp_mangosd`.`creature` VALUES ('3756', '1130', '0', '913', '0', '-5812.42', '-1271.25', '380.657', '3.19301', '14400', '50', '0', '600000', '0', '0', '1');

-- Bjarn - pooling
REPLACE INTO `zp_mangosd`.`pool_template` VALUES (2119, 1, 'Bjarn - rare spawn - Dun Morogh');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (86170, 2119, 0, 'Bjarn');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3755, 2119, 0, 'Bjarn');
REPLACE INTO `zp_mangosd`.`pool_creature` VALUES (3756, 2119, 0, 'Bjarn');

-- Bjarn - adjusting loot
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='1130') AND (`item`='24074');

-- Quest: Hamuul Runetotem has progression text that needs removed.
UPDATE `zp_mangosd`.`quest_template` SET `RequestItemsText`='' WHERE (`entry`='1489') limit 1;

-- Adjusted movementtype for some creatures not having a path
UPDATE `zp_mangosd`.`creature` SET `MovementType`='1' WHERE (`guid`='4378') limit 1;
UPDATE `zp_mangosd`.`creature` SET `MovementType`='1' WHERE (`guid`='4522') limit 1;
UPDATE `zp_mangosd`.`creature` SET `MovementType`='1' WHERE (`guid`='4377') limit 1;
UPDATE `zp_mangosd`.`creature` SET `MovementType`='1' WHERE (`guid`='4361') limit 1;
UPDATE `zp_mangosd`.`creature` SET `MovementType`='1' WHERE (`guid`='4360') limit 1;
UPDATE `zp_mangosd`.`creature` SET `MovementType`='1' WHERE (`guid`='4364') limit 1;

-- Captain Fairmount should no longer fear herself
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param2`=1 WHERE  `id`=339303;

-- Bloodscalp Mystic correct spell
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=9532 WHERE  `id`=70103;
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=9532 WHERE  `id`=70102;

-- Dreadsteed faction, 31 before, same as Scholo
UPDATE `zp_mangosd`.`creature_template` SET `faction_A`=1080, `faction_H`=1080 WHERE  `entry`=14504;