SET @GUID=147238;

UPDATE creature SET spawndist=0, MovementType = 2 WHERE guid=@GUID;

INSERT IGNORE INTO creature_addon (guid) VALUE (@GUID);
UPDATE creature_addon SET path_id=@GUID WHERE guid=@GUID;

DELETE FROM waypoint_data WHERE id=@GUID;
INSERT INTO waypoint_data (id, point, position_x, position_y, position_z, orientation, delay) values
(147238, 0, 22.18469, 410.2513, -44.65253, 1.759216, 3000),
(147238, 1, 20.54841, 403.4381, -43.63189, 4.476693, 0),
(147238, 2, 14.09387, 398.7827, -44.27258, 3.636318, 0),
(147238, 3, 4.395556, 392.275, -44.91478, 3.758054, 0),
(147238, 4, 2.240539, 402.5429, -46.852, 1.759215, 0),
(147238, 5, 3.7324, 406.3488, -47.26102, 1.17802, 3000),
(147238, 6, 2.240539, 402.5429, -46.852, 1.759215, 0),
(147238, 7, 4.395556, 392.275, -44.91478, 3.758054, 0),
(147238, 8, 14.09387, 398.7827, -44.27258, 3.636318, 0),
(147238, 9, 20.54841, 403.4381, -43.63189, 4.476693, 0);
