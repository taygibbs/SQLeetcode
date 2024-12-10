CREATE TABLE person(
	personId INT,
	lastName VARCHAR(50),
	firstName VARCHAR(50)
);

CREATE TABLE address(
	addressId INT,
	personId INT,
	city VARCHAR(255),
	"state" VARCHAR(255)
);

INSERT INTO person(personid, lastname, firstname) 
Values(1,'Wang','Allen');

INSERT INTO person(personid, lastname, firstname) 
Values(2,'Alice','Bob');

INSERT INTO address(addressId, personid, city, "state")
VALUES(1,2,'New York City','New York');

INSERT INTO address(addressId, personid, city, "state")
VALUES(2,3,'Leetcode','California');

SELECT person.firstname, person.lastname, address.city, address.state 
FROM person 
JOIN address 
ON person.personId = address.personid; 

SELECT person.firstname, person.lastname, address.city, address.state
FROM person
LEFT JOIN address
ON person.personid = address.personid;