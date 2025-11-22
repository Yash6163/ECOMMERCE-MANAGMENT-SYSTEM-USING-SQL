DELIMITER $$

CREATE PROCEDURE cost_filter(IN c INT, IN t VARCHAR(20))
BEGIN
    SELECT product_id, cost, type
    FROM Product
    WHERE cost < c AND type = t;
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE prod_details(IN p_id VARCHAR(10))
BEGIN
    DECLARE q INT DEFAULT -1;

    SELECT quantity INTO q
    FROM Product
    WHERE product_id = p_id;

    IF q = -1 THEN
        SELECT 'Sorry no such product exist !!' AS message;
    ELSE
        SELECT CONCAT('Quantity of product ', p_id, ' is ', q) AS message;
    END IF;
END $$

DELIMITER ;


