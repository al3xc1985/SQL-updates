/******* The Test of Righteousness quest end RP sql *********/
-- add AI for Jordan Stilwell
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_jordan_stilwell' WHERE  `entry`=6181;

-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720234, 'Let\'s get to work, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'Jordan Stilwell - Say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720235, 'Here you are, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'Jordan Stilwell - Say 2');

-- coords for the spell
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (8912, 0, -5095.6, -785.54, 496.27, 0);

-- Ebon Hilt of Marduk, Skullforge Reaver and Julie's Dagger - updated proc rate
UPDATE `zp_mangosd`.`item_template` SET `spellppmRate_1`=1.8 WHERE  `entry`=13361;
UPDATE `zp_mangosd`.`item_template` SET `spellppmRate_1`=2.6 WHERE  `entry`=6660;
UPDATE `zp_mangosd`.`item_template` SET `spellppmRate_1`=1 WHERE  `entry`=14576;