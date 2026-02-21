SELECT TOP (1000) [SpecialtyID]
      ,[Specialty]
  FROM [HospitaIDictionary].[dbo].[Specialty]
  update Specialty
  set Specialty = 'Dentist' 
  where SpecialtyID = 2