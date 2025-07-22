
-- CREATE TABLE Country (
--     id int PRIMARY KEY auto_increment,
--     Entity VARCHAR(100)
-- );

-- INSERT INTO Country (Entity)
-- SELECT DISTINCT Entity FROM disease_cases_1nf;


-- CREATE TABLE Diseases (
--     Disease_ID INT PRIMARY KEY AUTO_INCREMENT,
--     Disease_Name VARCHAR(50) UNIQUE
-- );

CREATE TABLE Disease_Cases_2nf (
	Country_ID INT,
    Year INT,
    Disease VARCHAR(50),
    Cases varchar(50),
    FOREIGN KEY (Country_ID) REFERENCES country(id)
);

INSERT INTO Disease_Cases_2nf (Country_ID, Year, Disease, Cases)
SELECT c.id, d.Year, d.Disease, d.Cases
FROM disease_cases_1nf d
JOIN Country c ON d.Entity = c.Entity;
