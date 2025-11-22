SELECT * 
FROM Product 
WHERE Product_id IN (
    SELECT Product_id 
    FROM Cart_item 
    WHERE Cart_id = (
        SELECT Cart_id 
        FROM Customer 
        WHERE Customer_id = 'cid100'
    )
    AND purchased = 'NO'
);


SELECT Product_id, Quantity_wished 
FROM Cart_item 
WHERE purchased = 'YES'
AND Cart_id = (
    SELECT Cart_id 
    FROM Customer 
    WHERE Customer_id = 'cid101'
);

SELECT c.Cart_id, c.Product_id, p.Type, p.Color, p.Cost, c.Quantity_wished
FROM Cart_item c
JOIN Product p ON c.Product_id = p.Product_id
WHERE c.purchased = 'YES';

SELECT * 
FROM Product 
WHERE Product_id NOT IN (
    SELECT Product_id 
    FROM Cart_item 
    WHERE purchased = 'YES'
);

SELECT cu.Customer_id,
       COUNT(ci.Product_id) AS purchased_items
FROM Customer cu
LEFT JOIN Cart_item ci 
     ON cu.Cart_id = ci.Cart_id 
    AND ci.purchased = 'YES'
GROUP BY cu.Customer_id;

SELECT DISTINCT cu.Customer_id, p.Product_id, p.Cost
FROM Customer cu
JOIN Cart_item ci ON cu.Cart_id = ci.Cart_id
JOIN Product p ON ci.Product_id = p.Product_id
WHERE ci.purchased = 'YES'
AND p.Cost > 1000;


SELECT DISTINCT s.Seller_id, s.Name
FROM Seller s
JOIN Product p ON s.Seller_id = p.Seller_id
JOIN Cart_item c ON p.Product_id = c.Product_id
WHERE c.purchased = 'YES';

SELECT cu.Customer_id,
       SUM(ci.Quantity_wished * p.Cost) AS total_spent
FROM Customer cu
JOIN Cart_item ci ON cu.Cart_id = ci.Cart_id
JOIN Product p ON ci.Product_id = p.Product_id
WHERE ci.purchased = 'YES'
GROUP BY cu.Customer_id;


SELECT *
FROM Cart_item
WHERE Date_Added BETWEEN '2024-05-01' AND '2024-06-01';


SELECT p.Product_id, p.Type, SUM(ci.Quantity_wished) AS total_quantity
FROM Product p
JOIN Cart_item ci ON p.Product_id = ci.Product_id
WHERE ci.purchased = 'YES'
GROUP BY p.Product_id
ORDER BY total_quantity DESC
LIMIT 1;


SELECT s.Seller_id, s.Name,
       SUM(ci.Quantity_wished * p.Cost) AS seller_sales
FROM Seller s
JOIN Product p ON s.Seller_id = p.Seller_id
JOIN Cart_item ci ON p.Product_id = ci.Product_id
WHERE ci.purchased = 'YES'
GROUP BY s.Seller_id;


SELECT Product_id,
       COUNT(DISTINCT Cart_id) AS buyers
FROM Cart_item
WHERE purchased = 'YES'
GROUP BY Product_id
HAVING buyers > 1;
