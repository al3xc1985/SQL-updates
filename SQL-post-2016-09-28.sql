-- AQ Idols, 2% for pool to drop idol
-- Add reference pool
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20874, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20875, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20876, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20877, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20878, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20879, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20880, 0, 1, 1, 1, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`reference_loot_template` VALUES (152290, 20881, 0, 1, 1, 1, 0, 0, 0);

-- replace first idol with pool
UPDATE `zp_mangosd`.`creature_loot_template` SET `item`=152290, `ChanceOrQuestChance`=2, `mincountOrRef`=-152290 WHERE `item`=20874;

-- remove old drop rates
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20875;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20876;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20877;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20878;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20879;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20880;
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE `item`=20881;

-- Maraudine Scout increased ranged damage, spell 6660 before
UPDATE `zp_mangosd`.`creature_ai_scripts` SET `action1_param1`=15620 WHERE  `id`=465402;

-- Cthun, adjusted drop rate in pool to 100%, slightly more for weapons than before
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=4.4 WHERE  `entry`=34049 AND `item`=21839;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=4.4 WHERE  `entry`=34049 AND `item`=21134;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=4.4 WHERE  `entry`=34049 AND `item`=21126;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=22732;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=22731;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=22730;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21596;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21586;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21585;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21583;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21582;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21581;
UPDATE `zp_mangosd`.`reference_loot_template` SET `ChanceOrQuestChance`=8.68 WHERE  `entry`=34049 AND `item`=21579;

-- add missing rep for trash post twins AQ40
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15246, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15250, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15252, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15312, 910, 0, 3, 0, 100, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`creature_onkill_reputation` VALUES (15311, 910, 0, 3, 0, 100, 0, 0, 0, 0);

-- Soldier of the Frozen Wastes speed
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.25, `speed_run`=0.285715 WHERE  `entry`=16427;

-- Unstoppable Abomination
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.7, `speed_run`=0.800002 WHERE  `entry`=16428;

-- Soul Weaver
UPDATE `zp_mangosd`.`creature_template` SET `speed_walk`=0.1, `speed_run`=0.114286 WHERE  `entry`=16429;

-- Shadow Fissure
UPDATE `zp_mangosd`.`creature_template` SET `AIName`='', `ScriptName`='npc_shadow_fissure' WHERE  `entry`=16129;