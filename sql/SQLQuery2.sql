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

