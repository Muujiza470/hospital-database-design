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