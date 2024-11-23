SELECT 
    s.idStudent,
    s.Student_Name,
    c.ClassName,
    shc.Grade,
    shc.Status,
    shc.Semester,
    shc.Year
FROM 
    student s
JOIN 
    student_has_class shc ON s.idStudent = shc.Student_idStudent
JOIN 
    class c ON shc.Class_idClass = c.idClass
WHERE 
    s.idStudent = 1 -- Add STUDENT iD here
    AND (shc.Status = 'Pass' OR shc.Status = 'Fail') 
ORDER BY 
    shc.Year, shc.Semester;
