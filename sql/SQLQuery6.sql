SELECT TOP (1000) [CertID]
      ,[Certification]
  FROM [HospitaIDictionary].[dbo].[Certification]
Update Certification
set Certification = 'Emergency Med Technician'
Where CertID = 2
