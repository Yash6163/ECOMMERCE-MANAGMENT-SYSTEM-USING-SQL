# ECOMMERCE-MANAGMENT-SYSTEM-USING-SQL


A complete MySQL-based database system that manages customers, sellers, products, carts, payments, functions, procedures, and automated triggers. This project demonstrates DBMS concepts, relational schema design, data integrity, stored routines, and trigger-based business logic.

1. 📦 Database Schema
The project includes the following relational tables:

Cart

Customer

Seller

Seller_Phone_num

Product

Cart_item

Payment

Features:

Proper primary/foreign keys

1–M and M–M relationships

ON DELETE CASCADE and ON DELETE SET NULL

Clean referential integrity
All schema SQL available in: /sql/01_create_tables.sql

3. 📥 Sample Data


Sample dataset includes:

3 customers

3 sellers

6 products

7 cart items

1 initial payment

All insert queries available in: /sql/02_insert_data.sql

4. 🧮 Stored Functions
   
Two MySQL functions are implemented:

✔ numCartId(cart_id)

Returns the total number of cart items for a specific cart.

✔ total_cost(cart_id)

Returns the total payable amount for all purchased items in a cart.

Location: /sql/03_functions.sql

6. 🧰 Stored Procedures
   
✔ cost_filter(cost, type)

Returns all products whose cost is less than the given value and match a specific type.

✔ prod_details(product_id)

Displays the quantity of a product or returns a “not found” message.

Location: /sql/05_procedures.sql

8. ⚡ Triggers
   
Two important triggers automate business rules:

✔ before_customer

Fires before inserting a new customer

Ensures the cart is valid and not already in use

Automatically inserts the cart entry

✔ before_pay_up

Fires before inserting a payment

Automatically calculates the total_amount using function total_cost()

Location: /sql/04_triggers.sql

10. 🧪 Test Calls
    
A single test file is provided to validate:

Functions

Procedures

Trigger executions

Test scripts available in: /sql/06_test_calls.sql

