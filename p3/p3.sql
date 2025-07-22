SELECT 
    c.Entity,
    AVG(cases) avg_cases,
    MIN(cases),
    MAX(cases),
    SUM(cases)
FROM
    pandemic.disease_cases dc
        JOIN
    pandemic.country c ON dc.country_id = c.id
WHERE
    disease_id = 4
GROUP BY country_id
ORDER BY avg_cases DESC
LIMIT 10;