# ECOMMERCE-MANAGMENT-SYSTEM-USING-SQL


🛒 E-Commerce Database Management System
A complete MySQL-based database system that manages customers, sellers, products, carts, payments, and automated trigger-based updates.
This project demonstrates SQL fundamentals, constraints, stored procedures, functions, and triggers in a real-life e-commerce scenario.
📚 Project Structure
📦 ecommerce-sql-project
 ┣ 📂 sql
 ┃ ┣ 📜 01_create_tables.sql
 ┃ ┣ 📜 02_insert_data.sql
 ┃ ┣ 📜 03_functions.sql
 ┃ ┣ 📜 04_triggers.sql
 ┃ ┣ 📜 05_procedures.sql
 ┃ ┗ 📜 06_test_calls.sql
 ┗ 📜 README.md
🏗️ 1. Database Schema
Includes the following tables:
Cart
Customer
Seller
Seller_Phone_num
Product
Cart_item
Payment
All tables are relational and linked through foreign keys.
✔ Supports cascading deletes
✔ Supports auto-insert by triggers
✔ Ensures referential integrity
Complete schema available in:
/sql/01_create_tables.sql
📥 2. Sample Data
The project includes high-quality sample test data:
3 customers
3 sellers
6 products
7 cart items
1 initial payment
Maps all foreign keys correctly
Sample data available in:
/sql/02_insert_data.sql
⚙️ 3. Stored Functions
This project includes two important functions:
🔹 numCartId(cart_id)
Counts the total items inside a cart.
🔹 total_cost(cart_id)
Calculates the total payable amount for all purchased items in a cart.
Code available in:
/sql/03_functions.sql
🧠 4. Stored Procedures
🔹 cost_filter(cost, type)
Shows all products cheaper than a given price for a given type.
🔹 prod_details(product_id)
Displays quantity of a product or returns an error message if not found.
Code available in:
/sql/05_procedures.sql
🔥 5. Triggers
Two real-world automation triggers are implemented:
🔹 before_customer
Executed before inserting a new customer:
Validates cart usage
Auto-inserts the cart in Cart table
🔹 before_pay_up
Executed before inserting payment:
Automatically calculates and sets the total_amount using total_cost()
Code available in:
/sql/04_triggers.sql
🧪 6. Test Calls
To verify all functionality:
Call functions
Call procedures
Insert customer to trigger before_customer
Insert payment to trigger before_pay_up
Tests available in:
/sql/06_test_calls.sql
