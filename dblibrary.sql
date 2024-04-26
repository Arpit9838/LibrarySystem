create database LMSDB;
use LMSDB;
CREATE TABLE tblStudentInfos (
    stId INT AUTO_INCREMENT PRIMARY KEY,
    stName VARCHAR(50) NOT NULL,
    stNumber VARCHAR(50) NOT NULL,
    stDepartment VARCHAR(50) NOT NULL,
    stSemester VARCHAR(50) NOT NULL,
    stContact BIGINT NOT NULL,
    stEmail VARCHAR(50) NOT NULL
);
INSERT INTO tblStudentInfos (stName, stNumber, stDepartment, stSemester, stContact, stEmail)
VALUES
('Student 1', 'S001', 'Department 1', 'Semester 1', 1234567890, 'student1@example.com'),
('Student 2', 'S002', 'Department 2', 'Semester 2', 2345678901, 'student2@example.com'),
('Student 3', 'S003', 'Department 3', 'Semester 3', 3456789012, 'student3@example.com'),
('Student 4', 'S004', 'Department 4', 'Semester 4', 4567890123, 'student4@example.com'),
('Student 5', 'S005', 'Department 5', 'Semester 5', 5678901234, 'student5@example.com'),
('Student 6', 'S006', 'Department 6', 'Semester 6', 6789012345, 'student6@example.com'),
('Student 7', 'S007', 'Department 7', 'Semester 7', 7890123456, 'student7@example.com'),
('Student 8', 'S008', 'Department 8', 'Semester 8', 8901234567, 'student8@example.com'),
('Student 9', 'S009', 'Department 9', 'Semester 9', 9012345678, 'student9@example.com'),
('Student 10', 'S010', 'Department 10', 'Semester 10', 1234567890, 'student10@example.com');




CREATE TABLE tblLogin (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL
);
INSERT INTO tblLogin (UserName, Password)
VALUES
('user1', 'password1'),
('user2', 'password2'),
('user3', 'password3'),
('user4', 'password4'),
('user5', 'password5'),
('user6', 'password6'),
('user7', 'password7'),
('user8', 'password8'),
('user9', 'password9'),
('user10', 'password10');


CREATE TABLE tblIssueBooks (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    stName VARCHAR(50) NOT NULL,
    stNumber VARCHAR(50) NOT NULL,
    stDepartment VARCHAR(50) NOT NULL,
    stSemester VARCHAR(50) NOT NULL,
    stContact BIGINT NOT NULL,
    stEmail VARCHAR(50) NOT NULL,
    bkName VARCHAR(1250) NOT NULL,
    bkIssueDate VARCHAR(250) NOT NULL,
    bkReturnDate VARCHAR(250)
);

INSERT INTO tblIssueBooks (stName, stNumber, stDepartment, stSemester, stContact, stEmail, bkName, bkIssueDate, bkReturnDate)
VALUES
('Student 1', 'S001', 'Department 1', 'Semester 1', 1234567890, 'student1@example.com', 'Book 1', '2024-04-23', NULL),
('Student 2', 'S002', 'Department 2', 'Semester 2', 2345678901, 'student2@example.com', 'Book 2', '2024-04-24', NULL),
('Student 3', 'S003', 'Department 3', 'Semester 3', 3456789012, 'student3@example.com', 'Book 3', '2024-04-25', NULL),
('Student 4', 'S004', 'Department 4', 'Semester 4', 4567890123, 'student4@example.com', 'Book 4', '2024-04-26', NULL),
('Student 5', 'S005', 'Department 5', 'Semester 5', 5678901234, 'student5@example.com', 'Book 5', '2024-04-27', NULL),
('Student 6', 'S006', 'Department 6', 'Semester 6', 6789012345, 'student6@example.com', 'Book 6', '2024-04-28', NULL),
('Student 7', 'S007', 'Department 7', 'Semester 7', 7890123456, 'student7@example.com', 'Book 7', '2024-04-29', NULL),
('Student 8', 'S008', 'Department 8', 'Semester 8', 8901234567, 'student8@example.com', 'Book 8', '2024-04-30', NULL),
('Student 9', 'S009', 'Department 9', 'Semester 9', 9012345678, 'student9@example.com', 'Book 9', '2024-05-01', NULL),
('Student 10', 'S010', 'Department 10', 'Semester 10', 1234567890, 'student10@example.com', 'Book 10', '2024-05-02', NULL);

ALTER TABLE tblIssueBooks
ADD CONSTRAINT FK_IssueBook_BookInfo FOREIGN KEY (bkId) REFERENCES tblBookInfos(bkId);

ALTER TABLE tblIssueBooks
ADD CONSTRAINT FK_IssueBook_StudentInfo FOREIGN KEY (stId) REFERENCES tblStudentInfos(stId);



CREATE TABLE tblBookInfos (
    bkId INT AUTO_INCREMENT PRIMARY KEY,
    bkName VARCHAR(50) NOT NULL,
    bkAuthor VARCHAR(50) NOT NULL,
    bkPublication VARCHAR(50) NOT NULL,
    bkDate VARCHAR(50) NOT NULL,
    bkPrice BIGINT NOT NULL,
    bkQuanity BIGINT NOT NULL
);

INSERT INTO tblBookInfos (bkName, bkAuthor, bkPublication, bkDate, bkPrice, bkQuanity)
VALUES
('Book 1', 'Author 1', 'Publication 1', '2024-04-23', 100, 10),
('Book 2', 'Author 2', 'Publication 2', '2024-04-24', 120, 8),
('Book 3', 'Author 3', 'Publication 3', '2024-04-25', 90, 12),
('Book 4', 'Author 4', 'Publication 4', '2024-04-26', 80, 15),
('Book 5', 'Author 5', 'Publication 5', '2024-04-27', 150, 20),
('Book 6', 'Author 6', 'Publication 6', '2024-04-28', 110, 9),
('Book 7', 'Author 7', 'Publication 7', '2024-04-29', 130, 18),
('Book 8', 'Author 8', 'Publication 8', '2024-04-30', 70, 11),
('Book 9', 'Author 9', 'Publication 9', '2024-05-01', 95, 14),
('Book 10', 'Author 10', 'Publication 10', '2024-05-02', 140, 16);



