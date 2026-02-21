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
/* ===== From SQLQuery2.sql ===== */
SELECT TOP (1000) [PatientID]
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[DOB]
      ,[Street]
      ,[City]
      ,[State]
      ,[Zip]
      ,[PhoneNumber]
      ,[AltPhone]
      ,[Email]
      ,[Age]
      ,[BedID]
  FROM [HospitaIDictionary].[dbo].[Patient]
-- Update Row 3
UPDATE Patient
SET FirstName = 'Alex',
    LastName = 'Morgan',
    Gender = 'M',
    DOB = '1987-12-05',
    Street = '789 Pine Tree Blvd',
    City = 'Miami',
    State = 'FL',
    Zip = '33133',
    PhoneNumber = '305-555-9876',
    AltPhone = '305-555-6543',
    Email = 'alexmorgan@example.com',
    BedID = 5
WHERE PatientID = 3;

-- Update Row 4
UPDATE Patient
SET FirstName = 'Emma',
    LastName = 'Watson',
    Gender = 'F',
    DOB = '1990-03-15',
    Street = '456 Maple Ave',
    City = 'Jacksonville',
    State = 'FL',
    Zip = '32256',
    PhoneNumber = '904-555-7654',
    AltPhone = '904-555-4321',
    Email = 'emmawatson@example.com',
    BedID = 6
WHERE PatientID = 4;



