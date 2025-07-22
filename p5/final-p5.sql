DROP FUNCTION IF EXISTS pandemic.date_diff;
DELIMITER //

CREATE FUNCTION date_diff (compare_year int)
RETURNS int
DETERMINISTIC
BEGIN
  
    DECLARE result int;
  
    SET result = DATEDIFF(NOW(), MAKEDATE(compare_year, 1));

    RETURN result;
END //

DELIMITER ;
