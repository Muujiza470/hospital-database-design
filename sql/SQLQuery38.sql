SELECT TOP (1000) [WardID]
      ,[Location]
      ,[PhoneNumber]
      ,[NurseCharged]
  FROM [HospitaIDictionary].[dbo].[Ward]
  DELETE FROM Ward
  WHERE WardID IN (33, 34, 35)
