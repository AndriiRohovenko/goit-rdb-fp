SELECT 
    MAKEDATE(dc.year, 1) date,
    NOW() Date_Now,
    DATEDIFF(NOW(), MAKEDATE(dc.year, 1)) diff_days
FROM
    pandemic.disease_cases dc;