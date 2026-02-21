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