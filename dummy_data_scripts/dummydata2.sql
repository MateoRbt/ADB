INSERT INTO `mydb`.`Professors_has_Class` (`Professors_idProfessors`, `Class_idClass`, `Year`, `Semester`)
VALUES
  -- Math 101 taught by John and Jane
  (1, 1, 2022, 'Winter'), -- John (Math 101, Winter 2022)
  (2, 1, 2022,  'Winter'), -- Jane (Math 101, Winter 2022)
  (1, 1, 2023,  'Winter'), -- John (Math 101, Winter 2023)
  (2, 1, 2023,  'Winter'), -- Jane (Math 101, Winter 2023)

  -- Physics 101 taught by John
  (1, 2, 2022,  'Winter'), -- John (Physics 101, Winter 2022)

  -- History 101 taught by Robert
  (3, 3, 2022, 'Spring'), -- Robert (History 101, Spring 2022)

  -- Computer Science 101 taught by John
  (1, 4, 2022, 'Spring'), -- John (Computer Science 101, Spring 2022)

  -- Biology 101 taught by Emma and Michael
  (4, 5, 2022,  'Winter'), -- Emma (Biology 101, Winter 2022)
  (5, 5, 2022,  'Winter'), -- Michael (Biology 101, Winter 2022)

  -- Chemistry 101 taught by John and Emma
  (1, 6, 2023,  'Winter'), -- John (Chemistry 101, Winter 2023)
  (4, 6, 2023,  'Winter'), -- Emma (Chemistry 101, Winter 2023)

  -- English 101 taught by Robert
  (3, 7, 2023,  'Spring'), -- Robert (English 101, Spring 2023)

  -- Philosophy 101 taught by Robert and John
  (3, 8, 2023,  'Spring'), -- Robert (Philosophy 101, Spring 2023)
  (1, 8, 2023,  'Spring'); -- John (Philosophy 101, Spring 2023)



