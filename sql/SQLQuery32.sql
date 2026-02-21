SELECT TOP (1000) [ChargeID]
      ,[Date]
      ,[Quantity]
      ,[PatientID]
      ,[ItemID]
  FROM [HospitaIDictionary].[dbo].[ItemCharge]
  DELETE FROM ItemCharge
  WHERE ChargeID IN (1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025)
