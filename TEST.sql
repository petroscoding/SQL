 
USE gregs_list;
CREATE TABLE clown_info
(
clone_id int(10) not null,
name VARCHAR(50),
gender VARCHAR(10),
description VARCHAR(20)
)
SELECT * FROM clown_info;
CREATE TABLE info_activities
(
clone_id int(10) not null,
activity_id int(10) not null
)

CREATE TABLE activities
(
activity_id int(10) not null AUTO_INCREMENT PRIMARY KEY,
activity VARCHAR(50)
)
CREATE TABLE location
(
location_id int(10) not null  PRIMARY KEY,
location VARCHAR(50)
)

CREATE TABLE info_location
(
clown_id int(10) NOT NULL PRIMARY KEY,
location_id int(10) not null  ,
party_time DATE

)
SELECT * FROM location
SELECT * FROM info_location
SELECT * FROM activities
SELECT * FROM clown_info
SELECT * FROM info_activities

ALTER TABLE info_location
ADD CONSTRAINT FK_Info_Location
FOREIGN KEY (location_id) REFERENCES location(location_id);

ALTER TABLE info_activities
ADD CONSTRAINT FK_Info_Activity
FOREIGN KEY (activity_id) REFERENCES activities(activity_id);


ALTER TABLE clown_info
ADD CONSTRAINT PK_Info_Clown
primary key  (clone_id);directorsdirectorsdirectorsmy_contancts

ALTER TABLE info_activities
ADD CONSTRAINT FK_Clown_Id
FOREIGN KEY (clone_id) REFERENCES clown_info(clone_id);

SELECT * FROM my_contacts WHERE gender = 'M' AND status_status_id = 6;

-- QUESTION I

SELECT my_contacts.last_name, my_contacts.first_name, my_contacts.email, interests.interest
FROM ((my_contacts
INNER JOIN contact_interest ON my_contacts.contact_id = contact_interest.contact_id)
INNER JOIN interests ON contact_interest.interest_id = interests.interest_id);

-- QUESTION 2
SELECT my_contacts.last_name, my_contacts.gender, zip_code.city AS Location
FROM my_contacts, zip_code
WHERE my_contacts.zip_code = zip_code.zip_code;

-- QUESTION 3
SELECT my_contacts.last_name, my_contacts.first_name, status.status FROM my_contacts,status
where my_contacts.status_status_id = status.status_id ;

-- QUESTION 4

SELECT my_contacts.first_name,my_contacts.last_name,my_contacts.gender, status.status,profession.profession

From my_contacts, contact_seeking, seeking, profession, status
 
WHERE my_contacts.contact_id = contact_seeking.contact_id
 
AND contact_seeking.seeking_id = seeking.seeking_id
 
AND my_contacts.status_status_id = status.status_id
 
AND  profession.profession like "Computer Programmer";
-- QUESTION 5

select count(status)  FROM status 
FULL join my_contacts
where status = "married";

-- QUESTION 6
SELECT * FROM zip_code;

SELECT my_contacts.first_name,my_contacts.last_name, zip_code.city AS Location
FROM my_contacts, zip_code
WHERE zip_code.city NOT LIKE "New York City"
AND my_contacts.zip_code = zip_code.zip_code;

-- QUESTION 7

SELECT * From my_contacts FULL JOIN interests
 where  interests.interest like "fishing" AND gender = 'M'
 limit 2;
 
 -- QUESTION 8
 
 SELECT * From my_contacts, contact_seeking, seeking, interests
WHERE my_contacts.contact_id = contact_seeking.contact_id
 AND contact_seeking.seeking_id = seeking.seeking_id
 AND  interests.interest like "fishing"
 AND gender = 'M'
 LIMIT 2;
 
 SELECT * FROM profession;
 
 UPDATE profession SET prof_id = 10
 WHERE prof_id =200;
 
 
 
 testing
 SET SQL_SAFE_UPDATES = 0;
 
 truncate table zip_code;
 select * FROM status;
ALTER TABLE profession 
    
ADD CONSTRAINT prof_id_chk CHECK (prof_id>=1 AND prof_id <=15);

ALTER TABLE status
ADD CONSTRAINT status_id_chk CHECK (status_status_id >=4 AND status_status_id <=7);

ALTER TABLE seeking
ADD CONSTRAINT seeking_id_chk CHECK (seeking_id>=1 AND seeking_id <=8);

ALTER TABLE interests
ADD CONSTRAINT interests_id_chk CHECK (interest_id>=1 AND interest_id <=13);


select * from my_contacts;activities
commit;


SELECT * FROM locations, clown_info;

QUESTION 1
SELECT * FROM pro;

DELETE  FROM profession where prof_id = 3;

QUESTION 2




QUESTION 3