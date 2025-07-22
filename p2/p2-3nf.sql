 CREATE TABLE Diseases (
     Disease_ID INT PRIMARY KEY AUTO_INCREMENT,
     Disease_Name VARCHAR(50)
);


INSERT INTO Diseases (Disease_Name)
SELECT DISTINCT Disease FROM Disease_Cases_2nf;



CREATE TABLE Disease_Cases (
    country_id INT,
    disease_id INT,
    year INT,
    cases INT NULL,
    FOREIGN KEY (country_id) REFERENCES Country(id),
    FOREIGN KEY (disease_id) REFERENCES Diseases(Disease_ID)
);

INSERT INTO Disease_Cases (country_id, disease_id, year, cases)
SELECT
    c.id,
    d.Disease_ID,
    raw.Year,
    NULLIF(raw.Cases, '')
FROM disease_cases_1nf raw
JOIN Country c ON raw.Entity = c.Entity
JOIN Diseases d ON raw.Disease = d.Disease_Name;
