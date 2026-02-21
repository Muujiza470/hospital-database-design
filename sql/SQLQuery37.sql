SELECT TOP (1000) [SpecialtyID]
      ,[Specialty]
  FROM [HospitaIDictionary].[dbo].[Specialty]
  DELETE FROM Specialty
  WHERE SpecialtyID IN (1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021)