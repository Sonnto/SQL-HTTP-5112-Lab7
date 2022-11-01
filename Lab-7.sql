-- 1
SELECT DISTINCT shiftDate, firstName, lastName, shifts FROM shifts s1
JOIN staff s2
ON s1.employeeID = s2.employeeID
JOIN shiftType st 
ON s1.shiftID = st.shiftID
WHERE shiftDate = '2022-11-14'

-- 2
SELECT shiftDate, firstName, lastName, shifts, duties FROM shifts s1
JOIN staff s2
ON s1.employeeID = s2.employeeID
JOIN shiftType st 
ON s1.shiftID = st.shiftID
JOIN duties d 
ON d.dutyID = s1.dutyID
WHERE firstName = 'Beverly'
AND lastName = 'Cleary'
AND shiftDate = '2022-11-14'

-- TABLE CREATION BELOW --

-- 1 staff TABLE
CREATE TABLE IF NOT EXISTS staff (
employeeID INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
firstName VARCHAR(255),
lastName VARCHAR(255))

-- 2 shifts TABLE
CREATE TABLE IF NOT EXISTS shifts (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
shiftDate DATE,
shiftID INT,
employeeID INT,
dutyID INT)

-- 3 duties TABLE
CREATE TABLE IF NOT EXISTS duties (
dutyID INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
duties VARCHAR(255))

-- 4 shiftType TABLE
CREATE TABLE IF NOT EXISTS shiftType (
shiftID INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
shifts VARCHAR(255))

-- 5 insert data for columns inside staff table
INSERT INTO staff
VALUES (NULL, 'Jesse', 'Shera'),
(NULL, 'Anne Carroll', 'Moore'),
(NULL, 'Beverly', 'Cleary'),
(NULL, 'Marcel', 'Duchamp'),
(NULL, 'Carla', 'Hayden'),
(NULL, 'Audre', 'Lorde'),
(NULL, 'Melvil', 'Dewey'),
(NULL, 'Dolly', 'Parton')

-- 6 insert data for columns inside duties table
INSERT INTO duties 
VALUES (NULL, 'main desk'),
(NULL, 'catalogue'),
(NULL, 'reference'),
(NULL, 'children''s library')

-- 7 insert data for columns inside shiftType table
INSERT INTO shiftType  
VALUES (NULL, 'morning'),
(NULL, 'afternoon')

-- 8 insert data for columns inside shifts table (shiftDate, shiftID, employeeID, dutyID) WEEK 1
INSERT INTO shifts
VALUES (NULL, '2022-11-07', 1, 1, 1), (NULL, '2022-11-07', 1, 1, 2),
(NULL, '2022-11-07', 2, 2, 4),
(NULL, '2022-11-07', 1, 3, 3), (NULL, '2022-11-07', 1, 3, 2),
(NULL, '2022-11-08', 1, 4, 1), (NULL, '2022-11-08', 1, 4, 3), 
(NULL, '2022-11-08', 2, 5, 1), (NULL, '2022-11-08', 2, 5, 2), 
(NULL, '2022-11-09', 1, 6, 1), (NULL, '2022-11-09', 1, 6, 2)

-- 9 insert data for columns inside shifts table (shiftDate, shiftID, employeeID, dutyID) WEEK 2
INSERT INTO shifts
VALUES (NULL, '2022-11-14', 1, 7, 1), (NULL, '2022-11-14', 1, 7, 3),
(NULL, '2022-11-14', 1, 8, 4),
(NULL, '2022-11-14', 1, 3, 3), (NULL, '2022-11-14', 1, 3, 2),
(NULL, '2022-11-15', 1, 4, 1), (NULL, '2022-11-15', 1, 4, 3), 
(NULL, '2022-11-15', 2, 5, 1), (NULL, '2022-11-15', 2, 5, 2), 
(NULL, '2022-11-16', 1, 6, 1), (NULL, '2022-11-16', 1, 6, 2)
