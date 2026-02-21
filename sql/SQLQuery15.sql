SELECT TOP (1000) [CertID]
      ,[Certification]
  FROM [HospitaIDictionary].[dbo].[Certification]
  DELETE FROM Certification
  WHERE CertID = 1023