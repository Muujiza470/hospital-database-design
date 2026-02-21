/* 
Hospital Database – Sample SQL Queries
Author: Preciosa Muujiza Ngoy Kalumba

Description:
A collection of analytical SQL queries to support hospital operations reporting,
including patient stays, nurse assignments, treatments, and itemized charges.
*/
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
/* ===== From SQLQuery10.sql ===== */
SELECT ad.PatientID, ad.AdmitDoc, ad.AdmitDate, p.BedID, b.WardID
FROM AdmitDischarge ad
JOIN Patient p
ON ad.PatientID = p.PatientID
JOIN Doctor d
on ad.AdmitDoc = d.DoctorID
JOIN Bed b
on p.BedID = b.BedID
ORDER BY 
    ad.AdmitDate ASC

/* ===== From SQLQuery11.sql ===== */
SELECT TOP (1000) [BedID]
      ,[Size]
      ,[Type]
      ,[Availability]
      ,[WardID]
  FROM [HospitaIDictionary].[dbo].[Bed]
      
/* ===== From SQLQuery12.sql ===== */
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
  insert into Patient
  (FirstName, LastName, Gender, DOB, Street, City, State, Zip, PhoneNumber, Email, BedID)
  Values 
  ('Pietro', 'Izzo', 'M', '2002-03-03', 'Mayp', 'Milan', 'WA', '34555', '900456789', 'pipi@izzo.as',1)
/* ===== From SQLQuery13.sql ===== */
SELECT TOP (1000) [CareEventID]
      ,[EventType]
      ,[Date]
      ,[Time]
      ,[PatientID]
      ,[NurseID]
  FROM [HospitaIDictionary].[dbo].[CareEvent]

insert into CareEvent
(EventType, Date, Time, PatientID, NurseID)
Values 
('Christmas', '2024-12-25', '05:00', 4, 2)
/* ===== From SQLQuery14.sql ===== */
SELECT TOP (1000) [ChargeID]
      ,[Date]
      ,[Quantity]
      ,[PatientID]
      ,[ItemID]
  FROM [HospitaIDictionary].[dbo].[ItemCharge]
  insert into ItemCharge
  (Date, Quantity, PatientID, ItemID)
  Values 
  ('2024-12-05',5,4,1)
/* ===== From SQLQuery15.sql ===== */
SELECT TOP (1000) [CertID]
      ,[Certification]
  FROM [HospitaIDictionary].[dbo].[Certification]
  DELETE FROM Certification
  WHERE CertID = 1023

/* ===== From SQLQuery17.sql ===== */
SELECT 
    p.PatientID, 
    p.FirstName AS PatientFirstName, 
    p.LastName AS PatientLastName, 
    t.Name, 
    d.DoctorID, 
    d.FirstName AS DoctorFirstName, 
    d.LastName AS DoctorLastName
FROM Patient p
INNER JOIN Treatment t 
ON p.PatientID = PatientID
INNER JOIN Doctor d 
ON d.DoctorID = DoctorID

/* ===== From SQLQuery18.sql ===== */
SELECT 
    p.PatientID,  
    p.LastName AS PatientLastName, 
    i.Name, 
    i.Charge, 
    ic.Date
FROM 
    Patient p
INNER JOIN 
    ItemCharge ic 
ON 
    p.PatientID = ic.PatientID
INNER JOIN 
    Item i 
ON 
    ic.ItemID = i.ItemID

/* ===== From SQLQuery19.sql ===== */
SELECT 
    p.PatientID, 
    p.FirstName AS PatientFirstName, 
    p.LastName AS PatientLastName, 
    ad.AdmitDate, 
    ad.DischargeDate, 
    admitDoc.DoctorID AS AdmittingDoctorID, 
    admitDoc.FirstName AS AdmittingDoctorFirstName, 
    admitDoc.LastName AS AdmittingDoctorLastName, 
    dischargeDoc.DoctorID AS DischargingDoctorID, 
    dischargeDoc.FirstName AS DischargingDoctorFirstName, 
    dischargeDoc.LastName AS DischargingDoctorLastName
FROM 
    Patient p
INNER JOIN 
    AdmitDischarge ad 
ON 
    p.PatientID = ad.PatientID
INNER JOIN 
    Doctor admitDoc 
ON 
    ad.AdmitDoc = admitDoc.DoctorID
INNER JOIN 
    Doctor dischargeDoc 
ON 
    ad.DischargeDoc = dischargeDoc.DoctorID

/* ===== From SQLQuery20.sql ===== */
SELECT 
    p.PatientID, 
    p.FirstName AS PatientFirstName, 
    p.LastName AS PatientLastName, 
    DATEDIFF(YEAR, p.DOB, GETDATE()) AS Age, 
    b.BedID, 
    n.NurseID, 
    n.FirstName AS NurseFirstName, 
    n.LastName AS NurseLastName, 
    ce.Date, 
    ce.EventType AS Reason, 
    c.Certification AS NurseCertification, 
    admitDoc.DoctorID AS AdmittingDoctorID, 
    admitDoc.FirstName AS AdmittingDoctorFirstName, 
    admitDoc.LastName AS AdmittingDoctorLastName, 
    ds.SpecialtyID AS DoctorSpecialty, 
    w.WardID, 
    w.Location AS WardLocation, 
    w.NurseCharged AS ChargeNurseID
FROM Patient p
LEFT JOIN Bed b 
ON p.BedID = b.BedID
LEFT JOIN CareEvent ce 
ON p.PatientID = ce.PatientID
LEFT JOIN Nurse n 
ON ce.NurseID = n.NurseID
LEFT JOIN NurseCertification nc 
ON n.NurseID = nc.NurseID
LEFT JOIN Certification c 
ON nc.CertID = c.CertID 
LEFT JOIN AdmitDischarge ad 
ON p.PatientID = ad.PatientID
LEFT JOIN Doctor admitDoc 
ON ad.AdmitDoc = admitDoc.DoctorID
LEFT JOIN DoctorSpecialty ds 
ON admitDoc.DoctorID = ds.DoctorID
LEFT JOIN Ward w 
ON b.WardID = w.WardID;

/* ===== From SQLQuery21.sql ===== */
SELECT TOP (1000) [AdminTreatmentID]
      ,[Date]
      ,[Time]
      ,[Results]
      ,[PatientID]
      ,[DoctorID]
      ,[TreatmentID]
  FROM [HospitaIDictionary].[dbo].[AdminTreatment]

/* ===== From SQLQuery22.sql ===== */
SELECT TOP (1000) [AdmitID]
      ,[AdmitDate]
      ,[DischargeDate]
      ,[PatientID]
      ,[AdmitDoc]
      ,[DischargeDoc]
  FROM [HospitaIDictionary].[dbo].[AdmitDischarge]
  INSERT INTO AdmitDischarge
  (AdmitDate, DischargeDate, PatientID, AdmitDoc, DischargeDoc)
  VALUES
 ('2024-12-01', '2024-12-10', 1038, 1, 2),
 ('2024-12-02', '2024-12-15', 1039, 1003, 1004),
 ('2024-12-05', '2024-12-20', 1040, 1005, 1006),
 ('2024-12-07', NULL, 1041, 1007, NULL),
 ('2024-12-10', '2024-12-25', 1042, 1008, 1009),
 ('2024-12-12', '2024-12-18', 1043, 1010, 1011),
 ('2024-12-15', '2024-12-22', 1044, 1012, 1013),
 ('2024-12-20', NULL, 1045, 2, NULL),
 ('2024-12-22', '2024-12-28', 1046, 1002, 1003),
 ('2024-12-25', '2024-12-30', 1047, 1004, 1005);

/* ===== From SQLQuery24.sql ===== */
SELECT TOP (1000) [CareEventID]
      ,[EventType]
      ,[Date]
      ,[Time]
      ,[PatientID]
      ,[NurseID]
  FROM [HospitaIDictionary].[dbo].[CareEvent]
      
/* ===== From SQLQuery26.sql ===== */
SELECT TOP (1000) [DoctorID]
      ,[FirstName]
      ,[LastName]
      ,[Street]
      ,[City]
      ,[State]
      ,[Zip]
      ,[Phone]
      ,[AltPhone]
      ,[Email]
  FROM [HospitaIDictionary].[dbo].[Doctor]

/* ===== From SQLQuery32.sql ===== */
SELECT TOP (1000) [ChargeID]
      ,[Date]
      ,[Quantity]
      ,[PatientID]
      ,[ItemID]
  FROM [HospitaIDictionary].[dbo].[ItemCharge]
  DELETE FROM ItemCharge
  WHERE ChargeID IN (1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025)

/* ===== From SQLQuery34.sql ===== */
SELECT TOP (1000) [NurseAssignmentID]
      ,[AssignDate]
      ,[StartTime]
      ,[EndTime]
      ,[HourCalc]
      ,[WardID]
      ,[NurseID]
  FROM [HospitaIDictionary].[dbo].[NurseAssignment]
  DELETE FROM NurseAssignment
  WHERE NurseAssignmentID IN (1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021)

/* ===== From SQLQuery36.sql ===== */
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

/* ===== From SQLQuery37.sql ===== */
SELECT TOP (1000) [SpecialtyID]
      ,[Specialty]
  FROM [HospitaIDictionary].[dbo].[Specialty]
  DELETE FROM Specialty
  WHERE SpecialtyID IN (1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021)

/* ===== From SQLQuery38.sql ===== */
SELECT TOP (1000) [WardID]
      ,[Location]
      ,[PhoneNumber]
      ,[NurseCharged]
  FROM [HospitaIDictionary].[dbo].[Ward]
  DELETE FROM Ward
  WHERE WardID IN (33, 34, 35)
