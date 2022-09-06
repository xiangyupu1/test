-- Set random movement to all of them
UPDATE `creature` SET `MovementType`=1, `wander_distance`=3 WHERE `id1` IN (15316,15317) AND `map`=531;

-- Delete old spawns, add new spawns for patrolling critters
DELETE FROM `creature` WHERE `guid` IN (144235,144236,144237,144242,144244,144259,144332,144333,144348,144356,144291,144293,144310,144311,144312,144313,144399,144404,144405,144412,144679);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`) VALUES
(144235, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-8709.916,1662.6412,-84.64706, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144236, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-8879.1875,1362.2852,-98.36637, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144237, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-8901.615,1486.9878,-92.56509, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144242, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-8957.687,1441.4086,-92.35549, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144244, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-8797.018,1610.714,-90.64299, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144259, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-8891.035,1438.89,-89.74331, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144332, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-8822.126,1500.405,-93.86366, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144333, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-8760.808,1618.244,-84.36525, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144348, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-8754.792,1577.6238,-88.39652, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144356, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-8910.943,1403.7899,-97.94198, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144291, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-9161.17,1520.4386,-92.79693, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144293, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-9071.885,1481.3569,-105.22721, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144310, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-8931.336,1518.0297,-94.619255, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144311, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-9178.233,1555.376,-83.15645, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144312, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-9092.085,1471.9957,-103.95926, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144313, 15316, 0, 0, 531, 0, 0, 1, 1, 0,-9085.651,1336.6029,-104.9923, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144399, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-9088.224,1416.7762,-107.078896, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144404, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-9096.186,1444.9286,-104.47447, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144405, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-9095.084,1390.2705,-105.85795, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144412, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-9073.12,1388.0787,-107.209076, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, ''),
(144679, 15317, 0, 0, 531, 0, 0, 1, 1, 0,-9121.533,1375.1395,-106.184975, 0, 17400, 0, 0, 1, 0, 2, 0, 0, 0, '');

-- UPDATE MOVEMENTTYPE FOR NEW CREATURES
UPDATE `creature` SET `MovementType`=2, `wander_distance`=0 WHERE `guid` IN (144235,144236,144237,144242,144244,144259,144332,144333,144348,144356,144291,144293,144310,144311,144312,144313,144399,144404,144405,144412,144679);

-- Add addons
DELETE FROM `creature_addon` WHERE `guid` IN (144235,144236,144237,144242,144244,144259,144332,144333,144348,144356,144291,144293,144310,144311,144312,144313,144399,144404,144405,144412,144679);
INSERT INTO `creature_addon` (`guid`, `path_id`) VALUES 
(144235, 1442350),
(144236, 1442360),
(144237, 1442370),
(144242, 1442420),
(144244, 1442440),
(144259, 1442590),
(144332, 1443320),
(144333, 1443330),
(144348, 1443480),
(144356, 1443560),
(144291, 1442910),
(144293, 1442930),
(144310, 1443100),
(144311, 1443110),
(144312, 1443120),
(144313, 1443130),
(144399, 1443990),
(144404, 1444040),
(144405, 1444050),
(144412, 1444120),
(144679, 1446790);

-- Add waypoints
DELETE FROM `waypoint_data` WHERE `id` IN (1442350,1442360,1442370,1442420,1442440,1442590,1443320,1443330,1443480,1443560,1442910,1442930,1443100,1443110,1443120,1443130,1443990,1444040,1444050,1444120,1446790);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(1442350,1,-8709.916,1662.6412,-84.64706,0,0,0,0,100,0),
(1442350,2,-8704.922,1648.0223,-82.86381,0,0,0,0,100,0),
(1442350,3,-8720.256,1639.4169,-82.8503,0,0,0,0,100,0),
(1442350,4,-8737.091,1631.815,-81.6951,0,0,0,0,100,0),
(1442350,5,-8747.508,1627.3049,-82.07862,0,0,0,0,100,0),
(1442350,6,-8759.189,1617.1493,-83.763596,0,0,0,0,100,0),
(1442350,7,-8773.706,1603.3866,-87.08513,0,0,0,0,100,0),
(1442350,8,-8791.415,1623.7231,-87.6898,0,0,0,0,100,0),
(1442350,9,-8774.919,1635.5029,-84.493835,0,0,0,0,100,0),
(1442350,10,-8754.987,1649.186,-81.04529,0,0,0,0,100,0),
(1442350,11,-8738.826,1659.0065,-81.912865,0,0,0,0,100,0),
(1442350,12,-8724.29,1670.1774,-82.408104,0,0,0,0,100,0),

(1442360,1,-8879.1875,1362.2852,-98.36637,0,0,0,0,100,0),
(1442360,2,-8877.842,1374.6134,-98.13042,0,0,0,0,100,0),
(1442360,3,-8871.135,1389.6156,-96.69604,0,0,0,0,100,0),
(1442360,4,-8869.234,1406.5952,-94.331825,0,0,0,0,100,0),
(1442360,5,-8873.806,1419.1112,-92.369026,0,0,0,0,100,0),
(1442360,6,-8875.747,1434.907,-90.549904,0,0,0,0,100,0),
(1442360,7,-8871.698,1448.6813,-90.62127,0,0,0,0,100,0),
(1442360,8,-8864.111,1447.3325,-91.40244,0,0,0,0,100,0),
(1442360,9,-8862.138,1439.3253,-90.95677,0,0,0,0,100,0),
(1442360,10,-8861.489,1422.8735,-91.96901,0,0,0,0,100,0),
(1442360,11,-8859.439,1407.6573,-93.50757,0,0,0,0,100,0),
(1442360,12,-8861.519,1392.4116,-96.10952,0,0,0,0,100,0),
(1442360,13,-8863.297,1373.6831,-97.59476,0,0,0,0,100,0),
(1442360,14,-8870.3545,1363.8999,-98.28948,0,0,0,0,100,0),
(1442360,15,-8875.194,1362.149,-97.96593,0,0,0,0,100,0),
(1442360,16,-8870.3545,1363.8999,-98.28948,0,0,0,0,100,0),
(1442360,17,-8863.297,1373.6831,-97.59476,0,0,0,0,100,0),
(1442360,18,-8861.519,1392.4116,-96.10952,0,0,0,0,100,0),
(1442360,19,-8859.439,1407.6573,-93.50757,0,0,0,0,100,0),
(1442360,20,-8861.489,1422.8735,-91.96901,0,0,0,0,100,0),
(1442360,21,-8862.138,1439.3253,-90.95677,0,0,0,0,100,0),
(1442360,22,-8864.111,1447.3325,-91.40244,0,0,0,0,100,0),
(1442360,23,-8871.698,1448.6813,-90.62127,0,0,0,0,100,0),
(1442360,24,-8875.747,1434.907,-90.549904,0,0,0,0,100,0),
(1442360,25,-8873.806,1419.1112,-92.369026,0,0,0,0,100,0),
(1442360,26,-8869.234,1406.5952,-94.331825,0,0,0,0,100,0),
(1442360,27,-8871.135,1389.6156,-96.69604,0,0,0,0,100,0),
(1442360,28,-8877.842,1374.6134,-98.13042,0,0,0,0,100,0),

(1442370,1,-8901.615,1486.9878,-92.56509,0,0,0,0,100,0),
(1442370,2,-8894.615,1501.9271,-93.31495,0,0,0,0,100,0),
(1442370,3,-8893.057,1512.8271,-94.24682,0,0,0,0,100,0),
(1442370,4,-8902.624,1518.0614,-92.5049,0,0,0,0,100,0),
(1442370,5,-8906.995,1520.1177,-93.1783,0,0,0,0,100,0),
(1442370,6,-8916.412,1514.2351,-94.16516,0,0,0,0,100,0),
(1442370,7,-8922.951,1500.2008,-93.495995,0,0,0,0,100,0),
(1442370,8,-8929.048,1484.6302,-92.72202,0,0,0,0,100,0),
(1442370,9,-8934.22,1471.741,-92.128784,0,0,0,0,100,0),
(1442370,10,-8930.449,1464.1768,-91.627365,0,0,0,0,100,0),
(1442370,11,-8922.018,1459.343,-92.51893,0,0,0,0,100,0),
(1442370,12,-8914.986,1463.158,-92.310745,0,0,0,0,100,0),
(1442370,13,-8908.553,1475.0021,-91.95947,0,0,0,0,100,0),

(1442420,1,-8957.687,1441.4086,-92.35549,0,0,0,0,100,0),
(1442420,2,-8957.109,1448.8145,-91.779015,0,0,0,0,100,0),
(1442420,3,-8954.798,1461.109,-91.92982,0,0,0,0,100,0),
(1442420,4,-8950.785,1475.7125,-92.5044,0,0,0,0,100,0),
(1442420,5,-8940.726,1499.1289,-93.43882,0,0,0,0,100,0),
(1442420,6,-8931.336,1518.0297,-94.619255,0,0,0,0,100,0),
(1442420,7,-8921.133,1532.732,-95.145676,0,0,0,0,100,0),
(1442420,8,-8913.712,1545.54,-95.47196,0,0,0,0,100,0),
(1442420,9,-8900.031,1566.4486,-95.75281,0,0,0,0,100,0),
(1442420,10,-8891.205,1567.1182,-94.31571,0,0,0,0,100,0),
(1442420,11,-8887.606,1557.8823,-95.07148,0,0,0,0,100,0),
(1442420,12,-8892.903,1544.9524,-95.09268,0,0,0,0,100,0),
(1442420,13,-8906.302,1535.4017,-95.15878,0,0,0,0,100,0),
(1442420,14,-8912.736,1526.1064,-94.81041,0,0,0,0,100,0),
(1442420,15,-8921.759,1508.2211,-93.969986,0,0,0,0,100,0),
(1442420,16,-8926.561,1493.8021,-93.25992,0,0,0,0,100,0),
(1442420,17,-8937.755,1465.6974,-92.20584,0,0,0,0,100,0),
(1442420,18,-8939.568,1453.1688,-91.83563,0,0,0,0,100,0),
(1442420,19,-8939.462,1439.5057,-92.06916,0,0,0,0,100,0),
(1442420,20,-8939.116,1429.8024,-93.09846,0,0,0,0,100,0),
(1442420,21,-8942.206,1420.408,-95.6026,0,0,0,0,100,0),
(1442420,22,-8949.488,1418.712,-95.651375,0,0,0,0,100,0),
(1442420,23,-8956.407,1423.2029,-93.34446,0,0,0,0,100,0),
(1442420,24,-8959.321,1430.307,-92.080696,0,0,0,0,100,0),

(1442440,1,-8797.018,1610.714,-90.64299,0,0,1,0,100,0),
(1442440,2,-8799.708,1576.0378,-92.291405,0,0,1,0,100,0),
(1442440,3,-8832.841,1576.931,-94.97763,0,0,1,0,100,0),
(1442440,4,-8836.67,1548.1146,-95.38926,0,0,1,0,100,0),
(1442440,5,-8878.974,1531.4718,-95.186424,0,0,1,0,100,0),
(1442440,6,-8876.113,1496.8469,-92.22732,0,0,1,0,100,0),
(1442440,7,-8902.331,1492.512,-92.26631,0,0,1,0,100,0),
(1442440,8,-8893.682,1467.2194,-91.18648,0,0,1,0,100,0),
(1442440,9,-8912.335,1447.5905,-92.25001,0,0,1,0,100,0),
(1442440,10,-8889.106,1431.9249,-90.12599,0,0,1,0,100,0),
(1442440,11,-8914.496,1419.4996,-94.89586,0,0,1,0,100,0),
(1442440,12,-8893.065,1397.7928,-96.55446,0,0,1,0,100,0),
(1442440,13,-8913.483,1393.8298,-99.049255,0,0,1,0,100,0),
(1442440,14,-8911.748,1365.6313,-103.29147,0,0,1,0,100,0),
(1442440,15,-8930.997,1371.5281,-104.26125,0,0,1,0,100,0),
(1442440,16,-8911.748,1365.6313,-103.29147,0,0,1,0,100,0),
(1442440,17,-8913.504,1393.8258,-99.04673,0,0,1,0,100,0),
(1442440,18,-8893.065,1397.7928,-96.55446,0,0,1,0,100,0),
(1442440,19,-8914.496,1419.4996,-94.89586,0,0,1,0,100,0),
(1442440,20,-8889.106,1431.9249,-90.12599,0,0,1,0,100,0),
(1442440,21,-8912.335,1447.5905,-92.25001,0,0,1,0,100,0),
(1442440,22,-8893.657,1467.1482,-91.116905,0,0,1,0,100,0),
(1442440,23,-8902.331,1492.512,-92.26631,0,0,1,0,100,0),
(1442440,24,-8876.113,1496.8469,-92.22732,0,0,1,0,100,0),
(1442440,25,-8878.974,1531.4718,-95.186424,0,0,1,0,100,0),
(1442440,26,-8836.67,1548.1146,-95.38926,0,0,1,0,100,0),
(1442440,27,-8832.841,1576.931,-94.97763,0,0,1,0,100,0),
(1442440,28,-8799.708,1576.0378,-92.291405,0,0,1,0,100,0),

(1442590,1,-8891.035,1438.89,-89.74331,0,0,0,0,100,0),
(1442590,2,-8879.028,1437.6437,-90.06562,0,0,0,0,100,0),
(1442590,3,-8865.397,1433.4955,-91.751205,0,0,0,0,100,0),
(1442590,4,-8861.905,1425.7185,-91.67395,0,0,0,0,100,0),
(1442590,5,-8867.022,1417.7177,-93.1436,0,0,0,0,100,0),
(1442590,6,-8885.744,1425.2048,-90.67367,0,0,0,0,100,0),
(1442590,7,-8898.218,1431.0944,-92.211716,0,0,0,0,100,0),
(1442590,8,-8901.993,1435.3002,-92.81072,0,0,0,0,100,0),
(1442590,9,-8919.422,1437.7391,-93.23863,0,0,0,0,100,0),
(1442590,10,-8924.775,1435.864,-93.11082,0,0,0,0,100,0),
(1442590,11,-8941.288,1442.17,-92.097916,0,0,0,0,100,0),
(1442590,12,-8948.592,1445.0094,-92.205505,0,0,0,0,100,0),
(1442590,13,-8954.505,1450.9745,-92.264305,0,0,0,0,100,0),
(1442590,14,-8952.63,1455.1658,-92.66071,0,0,0,0,100,0),
(1442590,15,-8936.276,1460.8806,-91.96269,0,0,0,0,100,0),
(1442590,16,-8928.016,1459.0157,-91.83072,0,0,0,0,100,0),
(1442590,17,-8912.489,1457.1178,-92.21006,0,0,0,0,100,0),
(1442590,18,-8900.334,1452.6049,-91.78114,0,0,0,0,100,0),
(1442590,19,-8895.714,1439.8229,-90.47308,0,0,0,0,100,0),

(1443320,1,-8822.126,1500.405,-93.86366,0,0,0,0,100,0),
(1443320,2,-8828.658,1494.334,-93.68562,0,0,0,0,100,0),
(1443320,3,-8838.2295,1503.8063,-94.373146,0,0,0,0,100,0),
(1443320,4,-8841.758,1514.9296,-94.69837,0,0,0,0,100,0),
(1443320,5,-8850.98,1521.575,-95.04134,0,0,0,0,100,0),
(1443320,6,-8860.441,1524.6168,-94.80845,0,0,0,0,100,0),
(1443320,7,-8873.537,1522.2963,-95.11584,0,0,0,0,100,0),
(1443320,8,-8884.092,1523.0099,-94.82321,0,0,0,0,100,0),
(1443320,9,-8899.644,1525.0096,-93.69322,0,0,0,0,100,0),
(1443320,10,-8913.182,1532.5382,-95.240395,0,0,0,0,100,0),
(1443320,11,-8909.919,1542.7625,-95.77908,0,0,0,0,100,0),
(1443320,12,-8905.436,1549.5841,-96.07218,0,0,0,0,100,0),
(1443320,13,-8899.203,1555.4316,-96.22511,0,0,0,0,100,0),
(1443320,14,-8884.99,1548.4818,-94.76164,0,0,0,0,100,0),
(1443320,15,-8875.507,1542.3378,-95.588036,0,0,0,0,100,0),
(1443320,16,-8858.749,1538.0184,-95.86659,0,0,0,0,100,0),
(1443320,17,-8844.169,1536.9783,-95.33141,0,0,0,0,100,0),
(1443320,18,-8825.314,1532.5233,-95.50407,0,0,0,0,100,0),
(1443320,19,-8816.446,1525.8988,-95.47302,0,0,0,0,100,0),
(1443320,20,-8818.018,1510.5206,-94.65973,0,0,0,0,100,0),

(1443330,1,-8760.808,1618.244,-84.36525,0,0,0,0,100,0),
(1443330,2,-8772.906,1610.891,-87.32371,0,0,0,0,100,0),
(1443330,3,-8787.417,1623.8663,-87.48943,0,0,0,0,100,0),
(1443330,4,-8782.579,1631.1953,-85.72162,0,0,0,0,100,0),
(1443330,5,-8766.031,1641.5411,-82.6734,0,0,0,0,100,0),
(1443330,6,-8750.186,1653.0125,-81.00926,0,0,0,0,100,0),
(1443330,7,-8726.348,1669.038,-82.59135,0,0,0,0,100,0),
(1443330,8,-8708.614,1668.9208,-83.7078,0,0,0,0,100,0),
(1443330,9,-8705.537,1648.5631,-83.06354,0,0,0,0,100,0),
(1443330,10,-8727.311,1636.0825,-82.477104,0,0,0,0,100,0),
(1443330,11,-8743.633,1626.1401,-81.32434,0,0,0,0,100,0),

(1443480,1,-8754.792,1577.6238,-88.39652,0,0,0,0,100,0),
(1443480,2,-8759.031,1561.37,-90.63265,0,0,0,0,100,0),
(1443480,3,-8773.014,1544.3585,-93.6597,0,0,0,0,100,0),
(1443480,4,-8787.051,1529.0981,-95.33403,0,0,0,0,100,0),
(1443480,5,-8800.996,1518.8502,-94.883484,0,0,0,0,100,0),
(1443480,6,-8826.272,1501.1176,-94.76043,0,0,0,0,100,0),
(1443480,7,-8838.889,1507.8043,-94.42932,0,0,0,0,100,0),
(1443480,8,-8848.135,1515.5707,-94.45049,0,0,0,0,100,0),
(1443480,9,-8849.216,1524.4657,-95.217255,0,0,0,0,100,0),
(1443480,10,-8824.049,1543.6608,-95.95855,0,0,0,0,100,0),
(1443480,11,-8815.965,1554.2954,-94.66055,0,0,0,0,100,0),
(1443480,12,-8788.221,1568.3591,-91.13077,0,0,0,0,100,0),
(1443480,13,-8770.573,1577.815,-89.21338,0,0,0,0,100,0),

(1443560,1,-8910.943,1403.7899,-97.94198,0,0,0,0,100,0),
(1443560,2,-8912.83,1419.4586,-95.32133,0,0,0,0,100,0),
(1443560,3,-8919.317,1425.7145,-93.40584,0,0,0,0,100,0),
(1443560,4,-8940.032,1451.2579,-91.80255,0,0,0,0,100,0),
(1443560,5,-8919.317,1425.7145,-93.40584,0,0,0,0,100,0),
(1443560,6,-8912.83,1419.4586,-95.32133,0,0,0,0,100,0),
(1443560,7,-8910.943,1403.7899,-97.94198,0,0,0,0,100,0),
(1443560,8,-8917.794,1379.9219,-101.44869,0,0,0,0,100,0),
(1443560,9,-8926.473,1370.907,-104.26201,0,0,0,0,100,0),
(1443560,10,-8934.904,1361.403,-104.25662,0,0,0,0,100,0),
(1443560,11,-8914.032,1338.9567,-104.25077,0,0,0,0,100,0),
(1443560,12,-8934.904,1361.403,-104.25662,0,0,0,0,100,0),
(1443560,13,-8926.473,1370.907,-104.26201,0,0,0,0,100,0),
(1443560,14,-8917.794,1379.9219,-101.44869,0,0,0,0,100,0),

(1442910,1,-9161.17,1520.4386,-92.79693,0,0,0,0,100,0),
(1442910,2,-9130.765,1500.3616,-98.75215,0,0,0,0,100,0),
(1442910,3,-9135.577,1458.2761,-102.54528,0,0,0,0,100,0),
(1442910,4,-9130.765,1500.3616,-98.75215,0,0,0,0,100,0),
(1442910,5,-9161.17,1520.4386,-92.79693,0,0,0,0,100,0),
(1442910,6,-9158.677,1561.7367,-85.121376,0,0,0,0,100,0),
(1442910,7,-9190.653,1594.7052,-74.04944,0,0,0,0,100,0),
(1442910,8,-9173.741,1634.4298,-68.58729,0,0,0,0,100,0),
(1442910,9,-9158.677,1561.7367,-85.121376,0,0,0,0,100,0),

(1442930,1,-9071.885,1481.3569,-105.22721,0,0,0,0,100,0),
(1442930,2,-9060.615,1466.8123,-105.259155,0,0,0,0,100,0),
(1442930,3,-9079.044,1448.7009,-104.6841,0,0,0,0,100,0),
(1442930,4,-9071.177,1434.1946,-106.11778,0,0,0,0,100,0),
(1442930,5,-9041.022,1427.2418,-105.7893,0,0,0,0,100,0),
(1442930,6,-9071.111,1434.0739,-106.12702,0,0,0,0,100,0),
(1442930,7,-9079.044,1448.7009,-104.6841,0,0,0,0,100,0),
(1442930,8,-9060.615,1466.8123,-105.259155,0,0,0,0,100,0),

(1443100,1,-8931.336,1518.0297,-94.619255,0,0,0,0,100,0),
(1443100,2,-8921.133,1532.732,-95.145676,0,0,0,0,100,0),
(1443100,3,-8913.712,1545.54,-95.47196,0,0,0,0,100,0),
(1443100,4,-8900.031,1566.4486,-95.75281,0,0,0,0,100,0),
(1443100,5,-8891.205,1567.1182,-94.31571,0,0,0,0,100,0),
(1443100,6,-8887.606,1557.8823,-95.07148,0,0,0,0,100,0),
(1443100,7,-8892.903,1544.9524,-95.09268,0,0,0,0,100,0),
(1443100,8,-8906.302,1535.4017,-95.15878,0,0,0,0,100,0),
(1443100,9,-8912.736,1526.1064,-94.81041,0,0,0,0,100,0),
(1443100,10,-8921.759,1508.2211,-93.969986,0,0,0,0,100,0),
(1443100,11,-8926.561,1493.8021,-93.25992,0,0,0,0,100,0),
(1443100,12,-8937.755,1465.6974,-92.20584,0,0,0,0,100,0),
(1443100,13,-8939.568,1453.1688,-91.83563,0,0,0,0,100,0),
(1443100,14,-8939.462,1439.5057,-92.06916,0,0,0,0,100,0),
(1443100,15,-8939.116,1429.8024,-93.09846,0,0,0,0,100,0),
(1443100,16,-8942.206,1420.408,-95.6026,0,0,0,0,100,0),
(1443100,17,-8949.488,1418.712,-95.651375,0,0,0,0,100,0),
(1443100,18,-8956.407,1423.2029,-93.34446,0,0,0,0,100,0),
(1443100,19,-8959.321,1430.307,-92.080696,0,0,0,0,100,0),
(1443100,20,-8957.687,1441.4086,-92.35549,0,0,0,0,100,0),
(1443100,21,-8957.109,1448.8145,-91.779015,0,0,0,0,100,0),
(1443100,22,-8954.798,1461.109,-91.92982,0,0,0,0,100,0),
(1443100,23,-8950.785,1475.7125,-92.5044,0,0,0,0,100,0),
(1443100,24,-8940.726,1499.1289,-93.43882,0,0,0,0,100,0),

(1443110,1,-9178.233,1555.376,-83.15645,0,0,0,0,100,0),
(1443110,2,-9167.777,1584.2893,-79.79106,0,0,0,0,100,0),
(1443110,3,-9189.589,1586.6539,-75.309814,0,0,0,0,100,0),
(1443110,4,-9174.193,1619.9218,-71.54867,0,0,0,0,100,0),
(1443110,5,-9193.841,1633.76,-67.11974,0,0,0,0,100,0),
(1443110,6,-9167.777,1584.2893,-79.79106,0,0,0,0,100,0),
(1443110,7,-9178.233,1555.376,-83.15645,0,0,0,0,100,0),
(1443110,8,-9151.221,1542.8898,-88.77483,0,0,0,0,100,0),
(1443110,9,-9160.63,1516.2305,-94.12372,0,0,0,0,100,0),
(1443110,10,-9133.765,1502.3481,-98.33693,0,0,0,0,100,0),
(1443110,11,-9143.146,1472.9918,-101.21955,0,0,0,0,100,0),
(1443110,12,-9108.831,1465.2284,-102.95489,0,0,0,0,100,0),
(1443110,13,-9114.237,1442.453,-105.926094,0,0,0,0,100,0),
(1443110,14,-9092.371,1419.9313,-107.13244,0,0,0,0,100,0),
(1443110,15,-9108.026,1392.3177,-105.1018,0,0,0,0,100,0),
(1443110,16,-9131.012,1395.0933,-106.94944,0,0,0,0,100,0),
(1443110,17,-9131.191,1415.7412,-105.08317,0,0,0,0,100,0),
(1443110,18,-9131.012,1395.0933,-106.94944,0,0,0,0,100,0),
(1443110,19,-9108.026,1392.3177,-105.1018,0,0,0,0,100,0),
(1443110,20,-9092.371,1419.9313,-107.13244,0,0,0,0,100,0),
(1443110,21,-9114.237,1442.453,-105.926094,0,0,0,0,100,0),
(1443110,22,-9108.831,1465.2284,-102.95489,0,0,0,0,100,0),
(1443110,23,-9143.146,1472.9918,-101.21955,0,0,0,0,100,0),
(1443110,24,-9133.765,1502.3481,-98.33693,0,0,0,0,100,0),
(1443110,25,-9160.63,1516.2305,-94.12372,0,0,0,0,100,0),
(1443110,26,-9151.186,1542.8734,-88.78504,0,0,0,0,100,0),

(1443120,1,-9092.085,1471.9957,-103.95926,0,0,1,0,100,0),
(1443120,2,-9102.179,1479.8092,-102.8728,0,0,1,0,100,0),
(1443120,3,-9110.067,1480.0641,-101.70714,0,0,1,0,100,0),
(1443120,4,-9092.085,1471.9957,-103.95926,0,0,1,0,100,0),
(1443120,5,-9082.689,1455.4238,-104.146194,0,0,1,0,100,0),
(1443120,6,-9075.948,1438.5471,-104.75654,0,0,1,0,100,0),
(1443120,7,-9081.033,1431.1344,-104.84649,0,0,1,0,100,0),
(1443120,8,-9096.013,1444.2252,-104.60646,0,0,1,0,100,0),
(1443120,9,-9102.711,1455.3546,-103.723785,0,0,1,0,100,0),
(1443120,10,-9108.812,1463.8667,-103.24451,0,0,1,0,100,0),
(1443120,11,-9112.757,1474.4939,-102.87201,0,0,1,0,100,0),
(1443120,12,-9102.711,1455.3546,-103.723785,0,0,1,0,100,0),
(1443120,13,-9096.013,1444.2252,-104.60646,0,0,1,0,100,0),
(1443120,14,-9088.046,1434.5918,-105.35985,0,0,1,0,100,0),
(1443120,15,-9081.033,1431.1344,-104.84649,0,0,1,0,100,0),
(1443120,16,-9075.948,1438.5471,-104.75654,0,0,1,0,100,0),
(1443120,17,-9082.689,1455.4238,-104.146194,0,0,1,0,100,0),
(1443120,18,-9092.085,1471.9957,-103.95926,0,0,1,0,100,0),
(1443120,19,-9102.179,1479.8092,-102.8728,0,0,1,0,100,0),
(1443120,20,-9110.067,1480.0641,-101.70714,0,0,1,0,100,0),

(1443130,1,-9085.651,1336.6029,-104.9923,0,0,1,0,100,0),
(1443130,2,-9119.982,1368.3717,-105.290474,0,0,1,0,100,0),
(1443130,3,-9116.589,1396.586,-105.531105,0,0,1,0,100,0),
(1443130,4,-9141.109,1401.1655,-106.611755,0,0,1,0,100,0),
(1443130,5,-9129.991,1420.1001,-103.56941,0,0,1,0,100,0),
(1443130,6,-9135.993,1428.6875,-103.10408,0,0,1,0,100,0),
(1443130,7,-9159.872,1426.0575,-103.80925,0,0,1,0,100,0),
(1443130,8,-9150.262,1450.0487,-101.24118,0,0,1,0,100,0),
(1443130,9,-9177.595,1447.4342,-101.04538,0,0,1,0,100,0),
(1443130,10,-9187.247,1463.9581,-99.04017,0,0,1,0,100,0),
(1443130,11,-9167.497,1489.6934,-96.0687,0,0,1,0,100,0),
(1443130,12,-9202.894,1490.942,-94.153076,0,0,1,0,100,0),
(1443130,13,-9184.8125,1524.3752,-87.429214,0,0,1,0,100,0),
(1443130,14,-9202.894,1490.942,-94.153076,0,0,1,0,100,0),
(1443130,15,-9167.497,1489.6934,-96.0687,0,0,1,0,100,0),
(1443130,16,-9187.247,1463.9581,-99.04017,0,0,1,0,100,0),
(1443130,17,-9177.595,1447.4342,-101.04538,0,0,1,0,100,0),
(1443130,18,-9150.239,1450.1044,-101.21063,0,0,1,0,100,0),
(1443130,19,-9159.872,1426.0575,-103.80925,0,0,1,0,100,0),
(1443130,20,-9135.993,1428.6875,-103.10408,0,0,1,0,100,0),
(1443130,21,-9129.969,1420.1389,-103.554955,0,0,1,0,100,0),
(1443130,22,-9141.109,1401.1655,-106.611755,0,0,1,0,100,0),
(1443130,23,-9116.589,1396.586,-105.531105,0,0,1,0,100,0),
(1443130,24,-9119.982,1368.3717,-105.290474,0,0,1,0,100,0),

(1443990,1,-9088.224,1416.7762,-107.078896,0,0,0,0,100,0),
(1443990,2,-9064.474,1433.8949,-107.40771,0,0,0,0,100,0),
(1443990,3,-9045.458,1413.9893,-105.14605,0,0,0,0,100,0),
(1443990,4,-9060.456,1439.5322,-107.87486,0,0,0,0,100,0),
(1443990,5,-9075.492,1447.3765,-106.04157,0,0,0,0,100,0),
(1443990,6,-9068.736,1473.6458,-105.594604,0,0,0,0,100,0),
(1443990,7,-9090.594,1477.8917,-105.19114,0,0,0,0,100,0),
(1443990,8,-9087.122,1499.0575,-102.4129,0,0,0,0,100,0),
(1443990,9,-9134.32,1492.2637,-100.58225,0,0,0,0,100,0),
(1443990,10,-9131.947,1457.0625,-103.54422,0,0,0,0,100,0),
(1443990,11,-9142.201,1498.5511,-99.481766,0,0,0,0,100,0),
(1443990,12,-9155.63,1544.8326,-88.94196,0,0,0,0,100,0),
(1443990,13,-9186.541,1579.5227,-77.94017,0,0,0,0,100,0),
(1443990,14,-9155.63,1544.8326,-88.94196,0,0,0,0,100,0),
(1443990,15,-9142.201,1498.5511,-99.481766,0,0,0,0,100,0),
(1443990,16,-9131.947,1457.0625,-103.54422,0,0,0,0,100,0),
(1443990,17,-9134.32,1492.2637,-100.58225,0,0,0,0,100,0),
(1443990,18,-9087.122,1499.0575,-102.4129,0,0,0,0,100,0),
(1443990,19,-9090.594,1477.8917,-105.19114,0,0,0,0,100,0),
(1443990,20,-9068.736,1473.6458,-105.594604,0,0,0,0,100,0),
(1443990,21,-9075.492,1447.3765,-106.04157,0,0,0,0,100,0),
(1443990,22,-9060.456,1439.5322,-107.87486,0,0,0,0,100,0),
(1443990,23,-9045.458,1413.9893,-105.14605,0,0,0,0,100,0),
(1443990,24,-9064.474,1433.8949,-107.40771,0,0,0,0,100,0),
(1443990,25,-9088.224,1416.7762,-107.078896,0,0,0,0,100,0),
(1443990,26,-9109.554,1398.6786,-104.97673,0,0,0,0,100,0),
(1443990,27,-9125.061,1382.0105,-106.36454,0,0,0,0,100,0),
(1443990,28,-9091.705,1348.9445,-105.59918,0,0,0,0,100,0),
(1443990,29,-9113.404,1388.1455,-105.58472,0,0,0,0,100,0),
(1443990,30,-9098.755,1402.1635,-106.73558,0,0,0,0,100,0),
(1443990,31,-9074.518,1396.3596,-106.83152,0,0,0,0,100,0),
(1443990,32,-9070.744,1367.5884,-105.04272,0,0,0,0,100,0),
(1443990,33,-9038.456,1356.9011,-103.17066,0,0,0,0,100,0),
(1443990,34,-9030.489,1332.9258,-104.20322,0,0,0,0,100,0),
(1443990,35,-9029.674,1316.1685,-104.25114,0,0,0,0,100,0),
(1443990,36,-9030.489,1332.9258,-104.20322,0,0,0,0,100,0),
(1443990,37,-9038.456,1356.9011,-103.17066,0,0,0,0,100,0),
(1443990,38,-9070.744,1367.5884,-105.04272,0,0,0,0,100,0),
(1443990,39,-9074.518,1396.3596,-106.83152,0,0,0,0,100,0),
(1443990,40,-9098.755,1402.1635,-106.73558,0,0,0,0,100,0),
(1443990,41,-9113.404,1388.1455,-105.58472,0,0,0,0,100,0),
(1443990,42,-9091.705,1348.9445,-105.59918,0,0,0,0,100,0),
(1443990,43,-9125.061,1382.0105,-106.36454,0,0,0,0,100,0),
(1443990,44,-9109.554,1398.6786,-104.97673,0,0,0,0,100,0),

(1444040,1,-9096.186,1444.9286,-104.47447,0,0,0,0,100,0),
(1444040,2,-9104.419,1415.1979,-106.00152,0,0,0,0,100,0),
(1444040,3,-9096.186,1444.9286,-104.47447,0,0,0,0,100,0),
(1444040,4,-9119.389,1449.448,-105.36713,0,0,0,0,100,0),
(1444040,5,-9116.547,1472.7252,-103.54946,0,0,0,0,100,0),
(1444040,6,-9132.342,1456.4852,-103.345665,0,0,0,0,100,0),
(1444040,7,-9116.547,1472.7252,-103.54946,0,0,0,0,100,0),
(1444040,8,-9119.389,1449.448,-105.36713,0,0,0,0,100,0),

(1444050,1,-9095.084,1390.2705,-105.85795,0,0,0,0,100,0),
(1444050,2,-9126.132,1378.705,-105.72979,0,0,0,0,100,0),
(1444050,3,-9122.575,1402.7551,-105.24444,0,0,0,0,100,0),
(1444050,4,-9145.673,1408.1447,-105.48799,0,0,0,0,100,0),
(1444050,5,-9137.399,1432.448,-102.555534,0,0,0,0,100,0),
(1444050,6,-9163.476,1429.0597,-103.73565,0,0,0,0,100,0),
(1444050,7,-9153.607,1454.8204,-100.4185,0,0,0,0,100,0),
(1444050,8,-9176.5,1455.4498,-101.46861,0,0,0,0,100,0),
(1444050,9,-9147.856,1481.0919,-100.3486,0,0,0,0,100,0),
(1444050,10,-9187.243,1476.0885,-98.5702,0,0,0,0,100,0),
(1444050,11,-9177.395,1509.4562,-91.8547,0,0,0,0,100,0),
(1444050,12,-9187.243,1476.0885,-98.5702,0,0,0,0,100,0),
(1444050,13,-9147.856,1481.0919,-100.3486,0,0,0,0,100,0),
(1444050,14,-9176.5,1455.4498,-101.46861,0,0,0,0,100,0),
(1444050,15,-9153.607,1454.8204,-100.4185,0,0,0,0,100,0),
(1444050,16,-9163.476,1429.0597,-103.73565,0,0,0,0,100,0),
(1444050,17,-9137.399,1432.448,-102.555534,0,0,0,0,100,0),
(1444050,18,-9145.673,1408.1447,-105.48799,0,0,0,0,100,0),
(1444050,19,-9122.575,1402.7551,-105.24444,0,0,0,0,100,0),
(1444050,20,-9126.132,1378.705,-105.72979,0,0,0,0,100,0),

(1444120,1,-9073.12,1388.0787,-107.209076,0,0,0,0,100,0),
(1444120,2,-9086.354,1422.7172,-106.65163,0,0,0,0,100,0),
(1444120,3,-9113.222,1429.3259,-105.54492,0,0,0,0,100,0),
(1444120,4,-9111.067,1456.3689,-104.99337,0,0,0,0,100,0),
(1444120,5,-9138.88,1468.191,-102.23187,0,0,0,0,100,0),
(1444120,6,-9140.315,1512.219,-96.46165,0,0,0,0,100,0),
(1444120,7,-9160.634,1513.8718,-94.40244,0,0,0,0,100,0),
(1444120,8,-9150.69,1538.1831,-89.95865,0,0,0,0,100,0),
(1444120,9,-9172.558,1540.6093,-87.60278,0,0,0,0,100,0),
(1444120,10,-9174.308,1574.9885,-81.43824,0,0,0,0,100,0),
(1444120,11,-9161.178,1583.6495,-79.079315,0,0,0,0,100,0),
(1444120,12,-9174.308,1574.9885,-81.43824,0,0,0,0,100,0),
(1444120,13,-9172.558,1540.6093,-87.60278,0,0,0,0,100,0),
(1444120,14,-9150.69,1538.1831,-89.95865,0,0,0,0,100,0),
(1444120,15,-9160.634,1513.8718,-94.40244,0,0,0,0,100,0),
(1444120,16,-9140.317,1512.2665,-96.451584,0,0,0,0,100,0),
(1444120,17,-9138.88,1468.191,-102.23187,0,0,0,0,100,0),
(1444120,18,-9111.067,1456.3689,-104.99337,0,0,0,0,100,0),
(1444120,19,-9113.222,1429.3259,-105.54492,0,0,0,0,100,0),
(1444120,20,-9086.354,1422.7172,-106.65163,0,0,0,0,100,0),

(1446790,1,-9121.533,1375.1395,-106.184975,0,0,1,0,100,0),
(1446790,2,-9101.4,1370.6641,-104.91555,0,0,1,0,100,0),
(1446790,3,-9097.856,1345.2212,-105.78354,0,0,1,0,100,0),
(1446790,4,-9076.13,1343.7213,-103.98316,0,0,1,0,100,0),
(1446790,5,-9097.856,1345.2212,-105.78354,0,0,1,0,100,0),
(1446790,6,-9101.385,1370.6605,-104.910065,0,0,1,0,100,0),
(1446790,7,-9121.533,1375.1395,-106.184975,0,0,1,0,100,0),
(1446790,8,-9092.77,1414.0785,-107.31365,0,0,1,0,100,0),
(1446790,9,-9109.889,1427.7504,-106.22019,0,0,1,0,100,0),
(1446790,10,-9101.874,1447.5159,-105.35749,0,0,1,0,100,0),
(1446790,11,-9135.379,1472.7727,-102.675354,0,0,1,0,100,0),
(1446790,12,-9128.466,1497.2003,-99.4334,0,0,1,0,100,0),
(1446790,13,-9162.139,1515.9567,-93.688705,0,0,1,0,100,0),
(1446790,14,-9128.466,1497.2003,-99.4334,0,0,1,0,100,0),
(1446790,15,-9135.379,1472.7727,-102.675354,0,0,1,0,100,0),
(1446790,16,-9101.874,1447.5159,-105.35749,0,0,1,0,100,0),
(1446790,17,-9109.8545,1427.8356,-106.239525,0,0,1,0,100,0),
(1446790,18,-9092.672,1414.2106,-107.29711,0,0,1,0,100,0);
