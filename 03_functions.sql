DELIMITER $$

CREATE FUNCTION numCartId(cd VARCHAR(10))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT DEFAULT 0;

    SELECT COUNT(*) INTO total
    FROM Cart_item
    WHERE Cart_id = cd;

    RETURN total;
END $$

DELIMITER ;



DELIMITER $$

CREATE FUNCTION total_cost(cId VARCHAR(10))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT DEFAULT 0;

    SELECT SUM(p.cost * c.Quantity_wished)
    INTO total
    FROM Product p
    JOIN Cart_item c ON p.Product_id = c.Product_id
    WHERE c.Cart_id = cId
      AND c.purchased = 'YES';

    RETURN total;
END $$

DELIMITER ;


