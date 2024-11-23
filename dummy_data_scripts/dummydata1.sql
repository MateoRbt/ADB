USE mydb;

INSERT INTO `mydb`.`Class` (`idClass`, `ClassName`, `ClassDescription`, `Semester`, `SemesterType`)
VALUES
  (1, 'Math 101', 'Introduction to Mathematics', 1, 'Winter'),
  (2, 'Physics 101', 'Fundamentals of Physics', 1, 'Winter'),
  (3, 'History 101', 'World History', 2, 'Spring'),
  (4, 'Computer Science 101', 'Introduction to Programming', 2, 'Spring'),
  (5, 'Biology 101', 'Introduction to Biology', 3, 'Winter'),
  (6, 'Chemistry 101', 'Fundamentals of Chemistry', 3, 'Winter'),
  (7, 'English 101', 'Introduction to Literature', 4, 'Spring'),
  (8, 'Philosophy 101', 'Introduction to Philosophy', 4, 'Spring');


INSERT INTO `mydb`.`Professors` 
(`idProfessors`, `Professors_Name`, `Professors_Surname`)
VALUES
  (1, 'John', 'Smith'),
  (2, 'Alice', 'Johnson'),
  (3, 'Robert', 'Williams'),
  (4, 'Emma', 'Brown'),
  (5, 'Michael', 'Davis');



