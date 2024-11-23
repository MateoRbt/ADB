use mydb;

ALTER TABLE `mydb`.`Professors_has_Class`
ADD COLUMN `Year` INT NOT NULL AFTER `Class_idClass`, -- Year the professor taught the class
ADD COLUMN `Semester` ENUM('Spring', 'Winter') NOT NULL AFTER `Year`; -- Semester as a descriptive string

ALTER TABLE `mydb`.`Professors_has_Class`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Professors_idProfessors`, `Class_idClass`, `Year`);


ALTER TABLE `mydb`.`Student_has_Class`
ADD COLUMN `Grade` DECIMAL(3,1) NULL AFTER `Class_idClass`;

ALTER TABLE `mydb`.`Student_has_Class`
ADD COLUMN `Semester` INT NOT NULL AFTER `Grade`,
ADD COLUMN `Year` INT NOT NULL AFTER `Semester`;


ALTER TABLE `mydb`.`Student_has_Class`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`Student_idStudent`, `Class_idClass`, `Semester`);

ALTER TABLE `mydb`.`Student_has_Class`
ADD COLUMN `Status` ENUM('Enrolled', 'Pass', 'Fail') NOT NULL AFTER `Grade`;


ALTER TABLE `mydb`.`Class`
ADD COLUMN `SemesterType` ENUM('Winter', 'Spring');

ALTER TABLE `mydb`.`Student`
ADD COLUMN `Enrollment_Year` INT NOT NULL;
