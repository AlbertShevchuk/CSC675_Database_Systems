#	Final Report Project
#	Part 2
 
 
#	By: Ryan Jin, Albert Shevchuk
#	CSC 675 – M. Hasan
#	SFSU – Spring 2018
 
 
# Creates Database

CREATE DATABASE University;
 
# Switches to desired database

Use University
 
# Creating Entity Tables

CREATE TABLE Course(
        	cid varchar(255),
        	cName varchar(255),
        	meetingDays varchar(255),
        	startTime varchar(255),
        	endTime varchar(255),
        	primary key (cid)
);
 
CREATE TABLE Department(
        	did varchar(255),
        	primary key (did)
);
 
CREATE TABLE Professor(
        	pid varchar(255),
        	firstName varchar(255),
        	lastName varchar(255),
        	email varchar(255),
        	primary key (pid)
);
 
CREATE TABLE Student(
        	sid varchar(255),
        	firstName varchar(255),
        	lastName varchar(255),
        	email varchar(255),
        	primary key (sid)
);
 
# Creating Relation Tables

CREATE TABLE Offers(
        	did varchar(255),
        	cid varchar(255),
        	primary key (did, cid),
        	foreign key (did) references Department(did),
        	foreign key (cid) references Course(cid)
);
 
CREATE TABLE Enrolled(
        	cid varchar(255),
        	sid varchar(255),
        	primary key (cid, sid),
        	foreign key (cid) references Course(cid),
        	foreign key (sid) references Student(sid)
);
 
CREATE TABLE Instructed(
        	cid varchar(255),
        	pid varchar(255),
        	lastName varchar(255),
        	primary key (cid, pid),
        	foreign key (cid) references Course(cid),
        	foreign key (pid) references Professor(pid)
);
 
CREATE TABLE Contains(
        	did varchar(255),
        	pid varchar(255),
        	lastName varchar(255),
        	primary key (did, pid),
        	foreign key (did) references Department(did),
        	foreign key (pid) references Professor(pid)
);
 
 
# INSERTING DATA INTO DATABASE
# Inserting Data into Professor Table (Computer Science, Mathematics, Physics)

INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0001', 'Anthony', 'Souza', 'ajsouza@mail.sfsu.edu');
 
INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0002', 'Maryam', 'Hasan', 'maryamhn@sfsu.edu');
 
INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0003', 'William', 'Tsun-Yuk Hsu', 'whsu@sfsu.edu');
 
INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0004', 'Mohammad', 'Kafai', 'kafai@sfsu.edu');
 
INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0005', 'Chun Kit', 'Lai', 'cklai@sfsu.edu');
 
INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0006', 'Daniel', 'Wheeler', 'dwheeler@sfsu.edu');
 
INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0007', 'Weining', 'Man', 'weining@sfsu.edu');
 
INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0008', 'Andrew', 'Carmichael', 'ancarmichael@sfsu.edu');
 
INSERT INTO Professor (pid, firstName, lastName, email) VALUES ('0009', 'Jeff', 'Greensite', 'greensit@sfsu.edu');
 
# Inserting Data into Department Table

INSERT INTO Department (did) VALUES ('Computer Science');
 
INSERT INTO Department (did) VALUES ('Mathematics');
 
INSERT INTO Department (did) VALUES ('Physics');
 
# Inserting Data into Course Table

INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('3503', 'MATH 300GW', 'M/W/F', '1:10 PM', '2:00 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('8614', 'MATH 245', 'M/W/F', '8:10 AM', '9:00 AM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('3513', 'MATH 380', 'Tu/Th', '2:10 PM', '3:25 AM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('9868', 'MATH 495', 'Tu/Th', '5:00 PM', '6:15 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('3505', 'MATH 324', 'M/W/F', '8:10 AM', '9:00 AM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('3510', 'MATH 440', 'M/W/F', '11:10 AM', '12:00 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('10118', 'CSC 256', 'Tu/Th', '5:35 PM', '6:50 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('2397', 'CSC 413', 'Tu/Th', '7:00 PM', '8:15 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('10779', 'CSC 675', 'M', '4:10 PM', '6:55 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('7071', 'CSC 775', 'F', '4:10 PM', '6:55 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('5420', 'CSC 412', 'W', '11:10 AM', '1:00 PM');

INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('8574', 'CSC 656', 'Th', '4:10 PM', '6:55 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('8372', 'PHYS 230', 'Tu/Th', '12:35 PM', '1:50 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('3874', 'PHYS 491GW', 'F', '2:10 PM', '4:55 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('3853', 'PHYS 122', 'Tu', '2:00 PM', '4:45 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('8266', 'PHYS 232', 'W', '2:10 PM', '4:55 PM');
 
INSERT INTO Course (cid, cName, meetingDays, startTime, endTime) VALUES ('3871', 'PHYS 370', 'Tu/Th', '3:35 PM', '4:50 PM');
 
# STUDENT
 
INSERT INTO Student (sid, firstName, lastName, email) VALUES ('916132964', 'Kobe', 'Bryant', 'kingmamba@mail.sfsu.edu');
 
INSERT INTO Student (sid, firstName, lastName, email) VALUES ('916896746', 'Lebron', 'James', 'hairline@mail.sfsu.edu');
 
INSERT INTO Student (sid, firstName, lastName, email) VALUES ('916789321', 'Stephen', 'Curry', 'thesniper@mail.sfsu.edu');
 
INSERT INTO Student (sid, firstName, lastName, email) VALUES ('916946327', 'Kevin', 'Durant', 'paycut@mail.sfsu.edu');
 
INSERT INTO Student (sid, firstName, lastName, email) VALUES ('917147963', 'Draymond', 'Green', 'professionalkickboxer@mail.sfsu.edu');
 
INSERT INTO Student (sid, firstName, lastName, email) VALUES ('916337951', 'Tiger', 'Woods', 'williteverbethesame@mail.sfsu.edu');
 
INSERT INTO Student (sid, firstName, lastName, email) VALUES ('916499372', 'Allen', 'Iverson', 'practice@mail.sfsu.edu');
 
INSERT INTO Student (sid, firstName, lastName, email) VALUES ('000000001', 'Michael', 'Jordan', 'GOAT@mail.sfsu.edu');
 
# OFFERS
 
INSERT INTO Offers (did, cid) VALUES ('Computer Science', '8574');
 
INSERT INTO Offers (did, cid) VALUES ('Computer Science', '7071');
 
INSERT INTO Offers (did, cid) VALUES ('Computer Science', '5420');
 
INSERT INTO Offers (did, cid) VALUES ('Computer Science', '2397');
 
INSERT INTO Offers (did, cid) VALUES ('Computer Science', '10779');
 
INSERT INTO Offers (did, cid) VALUES ('Computer Science', '10118');
 
INSERT INTO Offers (did, cid) VALUES ('Mathematics', '3503');
 
INSERT INTO Offers (did, cid) VALUES ('Mathematics', '3505');
 
INSERT INTO Offers (did, cid) VALUES ('Mathematics', '3510');
 
INSERT INTO Offers (did, cid) VALUES ('Mathematics', '3513');
 
INSERT INTO Offers (did, cid) VALUES ('Mathematics', '8614');
 
INSERT INTO Offers (did, cid) VALUES ('Mathematics', '9868');
 
INSERT INTO Offers (did, cid) VALUES ('Physics', '3853');
 
INSERT INTO Offers (did, cid) VALUES ('Physics', '3871');
 
INSERT INTO Offers (did, cid) VALUES ('Physics', '3874');
 
INSERT INTO Offers (did, cid) VALUES ('Physics', '8266');
 
INSERT INTO Offers (did, cid) VALUES ('Physics', '8372');
 
# ENROLELD
 
INSERT INTO Enrolled (cid, sid) VALUES ('2397', '000000001');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3853', '000000001');
 
INSERT INTO Enrolled (cid, sid) VALUES ('9868', '000000001');
 
INSERT INTO Enrolled (cid, sid) VALUES ('10118', '916132964');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3871', '916132964');
 
INSERT INTO Enrolled (cid, sid) VALUES ('10779', '916896746');
 
INSERT INTO Enrolled (cid, sid) VALUES ('8266', '916896746');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3513', '916789321');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3874', '916789321');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3874', '916946327');
 
INSERT INTO Enrolled (cid, sid) VALUES ('7071', '916946327');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3505', '916946327');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3510', '917147963');
 
INSERT INTO Enrolled (cid, sid) VALUES ('2397', '917147963');
 
INSERT INTO Enrolled (cid, sid) VALUES ('8372', '917147963');
 
INSERT INTO Enrolled (cid, sid) VALUES ('8372', '916337951');
 
INSERT INTO Enrolled (cid, sid) VALUES ('10118', '916337951');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3513', '916337951');
 
INSERT INTO Enrolled (cid, sid) VALUES ('10779', '916499372');
 
INSERT INTO Enrolled (cid, sid) VALUES ('3871', '916499372');
 
INSERT INTO Enrolled (cid, sid) VALUES ('5420', '916499372');
 
# Instructed
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('10118', '0001', 'Souza');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('2397', '0001', 'Souza');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('10779', '0002', 'Hasan');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('7071', '0002', 'Hasan');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('5420', '0003', 'Tsun-Yuk Hsu');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('8574', '0003', 'Tsun-Yuk Hsu');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('3505', '0004', 'Kafai');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('3510', '0004', 'Kafai');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('9868', '0005', 'Lai');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('3513', '0005', 'Lai');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('8614', '0006', 'Wheeler');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('3503', '0006', 'Wheeler');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('8372', '0007', 'Man');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('3874', '0007', 'Man');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('8266', '0008', 'Carmichael');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('3853', '0008', 'Carmichael');
 
INSERT INTO Instructed (cid, pid, lastName) VALUES ('3871', '0009', 'Greensite');
 
# CONTAINS
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Computer Science', '0001', 'Souza');
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Computer Science', '0002', 'Hasan');
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Computer Science', '0003', 'Tsun-Yuk Hsu');
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Mathematics', '0004', 'Kafai');
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Mathematics', '0005', 'Lai');
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Mathematics', '0006', 'Wheeler');
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Physics', '0007', 'Man');
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Physics', '0008', 'Carmichael');
 
INSERT INTO Contains (did, pid, lastName) VALUES ('Physics', '0009', 'Greensite');
 
# SQL Queries
# Determines how many professors are teaching computer science

SELECT C.did, COUNT(*)
FROM contains C
GROUP BY C.did
HAVING C.did = 'Computer Science';
 
# Returns All classes that are offered with meeting days on M/W/F 

SELECT C.cName, C.meetingDays AS meetingDay
FROM course C
GROUP BY C.cName
HAVING C.meetingDays = 'M/W/F';
 
# Returns the first 6 professors according to their professor ID 

SELECT C.lastName, C.pid AS professorID
FROM contains C
GROUP BY C.lastName
HAVING C.pid < '0007';
  
# Returns all classes enrolled by student with sid = 000000001

SELECT E.sid, E.cid as classesEnrolled
FROM enrolled E
WHERE E.sid = '000000001';

# Find all the course ID's offered by the Computer Science Department

SELECT O.cid
FROM offers O 
WHERE O.did IN	(SELECT C.did
				 FROM contains C 
			     WHERE C.did = 'Computer Science');
 
# Find all the course ID's offered by the Physics Department
 
SELECT O.cid
FROM offers O 
WHERE EXISTS	(SELECT *
				 FROM contains C 
				 WHERE O.did = C.did AND c.did = 'Physics');
				 


