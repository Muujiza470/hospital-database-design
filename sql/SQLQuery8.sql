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