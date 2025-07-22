CREATE TABLE disease_cases_1nf (
    Entity VARCHAR(100),
    Code CHAR(10),
    Year INT,
    Disease VARCHAR(50),
    Cases varchar(50)
);

INSERT INTO disease_cases_1nf (Entity, Code, Year, Disease, Cases)
SELECT Entity, Code, Year, 'yaws', NULLIF(Number_yaws, '') FROM infectious_cases
UNION ALL
SELECT Entity, Code, Year, 'polio', NULLIF(polio_cases, '') FROM infectious_cases
UNION ALL
SELECT Entity, Code, Year, 'guinea_worm', NULLIF(cases_guinea_worm, '') FROM infectious_cases
UNION ALL
SELECT Entity, Code, Year, 'rabies', NULLIF(Number_rabies, '') FROM infectious_cases
UNION ALL
SELECT Entity, Code, Year, 'malaria', NULLIF(Number_malaria, '') FROM infectious_cases
UNION ALL
SELECT Entity, Code, Year, 'hiv', NULLIF(Number_hiv, '') FROM infectious_cases
UNION ALL
SELECT Entity, Code, Year, 'tuberculosis', NULLIF(Number_tuberculosis, '') FROM infectious_cases
UNION ALL
SELECT Entity, Code, Year, 'smallpox', NULLIF(Number_smallpox, '') FROM infectious_cases
UNION ALL
SELECT Entity, Code, Year, 'cholera', NULLIF(Number_cholera_cases, '') FROM infectious_cases;
