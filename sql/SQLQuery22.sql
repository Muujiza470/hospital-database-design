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