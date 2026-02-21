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
/* ===== From SQLQuery3.sql ===== */
SELECT TOP (1000) [TreatmentID]
      ,[Name]
      ,[Description]
      ,[Charge]
  FROM [HospitaIDictionary].[dbo].[Treatment]
 INSERT INTO Treatment (Name, Description, Charge)
VALUES
('Physical Therapy', 'Rehabilitation to improve mobility.', 150.00),
('Chemotherapy', 'Anti-cancer drug therapy.', 1200.00),
('Dialysis', 'Removes waste from the blood.', 300.00),
('Laser Eye Surgery', 'Vision correction using lasers.', 2500.00),
('Tooth Extraction', 'Dental removal of a tooth.', 200.00),
('Appendectomy', 'Removal of the appendix.', 1800.00),
('Vaccination', 'Provides disease immunity.', 50.00),
('Fracture Treatment', 'Care for broken bones.', 500.00),
('Psychotherapy', 'Therapy for mental health.', 100.00),
('Blood Transfusion', 'Transfer of blood.', 250.00);

/* ===== From SQLQuery4.sql ===== */
SELECT TOP (1000) [SpecialtyID]
      ,[Specialty]
  FROM [HospitaIDictionary].[dbo].[Specialty]
  update Specialty
  set Specialty = 'Dentist' 
  where SpecialtyID = 2
/* ===== From SQLQuery5.sql ===== */
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
DELETE FROM Patient
WHERE PatientID = 5;

/* ===== From SQLQuery6.sql ===== */
SELECT TOP (1000) [CertID]
      ,[Certification]
  FROM [HospitaIDictionary].[dbo].[Certification]
Update Certification
set Certification = 'Emergency Med Technician'
Where CertID = 2

/* ===== From SQLQuery7.sql ===== */      
SELECT TOP (1000) [NurseID]
      ,[FirstName]
      ,[LastName]
      ,[Street]
      ,[City]
      ,[State]
      ,[Zip]
      ,[PhoneNumber]
      ,[AlternatePhone]
      ,[Email]
      ,[supervisorID]
  FROM [HospitaIDictionary].[dbo].[Nurse]

/* ===== From SQLQuery8.sql ===== */      
SELECT TOP (1000) [ChargeID]
      ,[Date]
      ,[Quantity]
      ,[PatientID]
      ,[ItemID]
  FROM [HospitaIDictionary].[dbo].[ItemCharge]
  INSERT into ItemCharge
  (Date,Quantity ,PatientID,ItemID)
 VALUES 
('2024-12-01', 2, 1038, 1),  
('2024-12-02', 1, 1039, 1002),  
('2024-12-03', 3, 1040, 1003),
('2024-12-04', 1, 1041, 1004),
('2024-12-05', 5, 1042, 1005),
('2024-12-06', 2, 1043, 1006),
('2024-12-07', 1, 1044, 1007),
('2024-12-09', 4, 1045, 1009),
('2024-12-10', 2, 1046, 1010)

/* ===== From SQLQuery9.sql ===== */
SELECT TOP (1000) [NurseAssignmentID]
      ,[AssignDate]
      ,[StartTime]
      ,[EndTime]
      ,[HourCalc]
      ,[WardID]
      ,[NurseID]
  FROM [HospitaIDictionary].[dbo].[NurseAssignment]
UPDATE NurseAssignment
SET AssignDate = '2024-12-06',
    StartTime = '07:00',
    EndTime = '15:00',
    WardID = 2,
    NurseID = 3
WHERE NurseAssignmentID = 1




