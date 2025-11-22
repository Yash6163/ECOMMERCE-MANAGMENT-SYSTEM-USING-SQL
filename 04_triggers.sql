DELIMITER $$

CREATE TRIGGER before_customer
BEFORE INSERT ON Customer
FOR EACH ROW
BEGIN
    DECLARE n INT;

    SET n = numCartId(NEW.Cart_id);

    IF n > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot assign this cart: items already exist';
    END IF;

    INSERT INTO Cart (Cart_id) VALUES (NEW.Cart_id);
END $$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER before_pay_up
BEFORE INSERT ON Payment
FOR EACH ROW
BEGIN
    SET NEW.total_amount = total_cost(NEW.Cart_id);
END $$

DELIMITER ;
