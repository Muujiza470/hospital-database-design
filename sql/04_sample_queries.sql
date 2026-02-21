/* ===== From SQLQuery1.sql ===== */
SELECT TOP (1000) [BedID]
      ,[Size]
      ,[Type]
      ,[Availability]
      ,[WardID]
  FROM [HospitaIDictionary].[dbo].[Bed]
  INSERT INTO Bed (Size, Type, Availability, WardID)
VALUES
('L', 'M', 'O', 1),  -- Large bed, Medical, Occupied, WardID = 1
('S', 'E', 'A', 2),  -- Small bed, Emergency, Available, WardID = 2
('XL', 'M', 'O', 3), -- Extra-large bed, Medical, Occupied, WardID = 3
('L', 'E', 'A', 4),  -- Large bed, Emergency, Available, WardID = 4
('S', 'M', 'A', 5),  -- Small bed, Medical, Available, WardID = 5
('XL', 'E', 'O', 6), -- Extra-large bed, Emergency, Occupied, WardID = 6
('L', 'M', 'A', 7),  -- Large bed, Medical, Available, WardID = 7
('S', 'E', 'O', 8),  -- Small bed, Emergency, Occupied, WardID = 8
('L', 'M', 'O', 9),  -- Large bed, Medical, Occupied, WardID = 9
('XL', 'E', 'A', 10); -- Extra-large bed, Emergency, Available, WardID = 10


