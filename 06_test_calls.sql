SELECT numCartId('crt1012');

CALL cost_filter(2000, 'jeans');

CALL prod_details('pid1001');

INSERT INTO Customer VALUES ('cid200','pass123','John','Delhi',110001,9998887777,'crt2001');

INSERT INTO Payment (payment_id, payment_date, payment_type, customer_id, cart_id)
VALUES ('pmt9001','2024-06-15','upi','cid101','crt1012');

SELECT * FROM Payment;
