USE mydb;
INSERT INTO `mydb`.`student` (`idStudent`, `Student_Name`, `Student_Surname`, `Student_Semester`, `Enrollment_Year`) 
VALUES 
  (1, 'John', 'Doe', 4, 2022),
  (3,'Robert','Singer',2,2023),
  (2,'Alice','Smith',4,2022);
  
insert into `mydb`.`student_has_class` (`Student_idStudent`,`Class_idClass`,`Grade`,`Status`,`Semester`,`Year`)
values
(1,1,6.0,"Pass",1,2022),
(1,2,4.9,"Fail",1,2022),
(1,3,8.3,"Pass",2,2023),
(1,4,7.2,"Pass",2,2023),
(1,5,10.0,"Pass",3,2023),
(1,6,3.5,"Fail",3,2023),
(1,2,7.3,"Pass",3,2023),
(1,7,NULL,"Enrolled",4,2024),
(1,8,NULL,"Enrolled",4,2024);

insert into `mydb`.`student_has_class` (`Student_idStudent`,`Class_idClass`,`Grade`,`Status`,`Semester`,`Year`)
values
(3,1,3,"Fail",1,2023),
(3,2,4.9,"Fail",1,2023),
(3,3,NULL,"Enrolled",2,2024),
(3,4,NULL,"Enrolled",2,2024);

insert into `mydb`.`student_has_class` (`Student_idStudent`,`Class_idClass`,`Grade`,`Status`,`Semester`,`Year`)
values
(2,1,9.9,"Pass",1,2022),
(2,2,10.0,"Fail",1,2022),
(2,3,10.0,"Pass",2,2023),
(2,4,10.0,"Pass",2,2023),
(2,5,10.0,"Pass",3,2023),
(2,6,10.0,"Pass",3,2023),
(2,7,NULL,"Enrolled",4,2024),
(2,8,NULL,"Enrolled",4,2024);

select * from student_has_class
