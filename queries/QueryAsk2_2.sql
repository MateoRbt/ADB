SELECT 
    c.SemesterType, 
    phc.Year, 
    COUNT(*) AS TotalAssignments
FROM 
    Professors_has_Class phc
JOIN 
    Class c ON c.idClass = phc.Class_idClass
WHERE 
    (phc.Year = 2022 AND c.SemesterType = 'Spring')  -- Select Spring or Winter
GROUP BY 
    c.SemesterType, phc.Year
ORDER BY 
    phc.Year, c.SemesterType;
