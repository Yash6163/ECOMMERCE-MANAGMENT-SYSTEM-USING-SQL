CREATE TABLE Cart (
    Cart_id VARCHAR(7) NOT NULL,
    PRIMARY KEY (Cart_id)
);

CREATE TABLE Customer (
    Customer_id VARCHAR(6) NOT NULL,
    c_pass VARCHAR(10) NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Address VARCHAR(20) NOT NULL,
    Pincode INT NOT NULL,
    Phone_number BIGINT NOT NULL,
    Cart_id VARCHAR(7) NOT NULL,
    PRIMARY KEY (Customer_id),
    FOREIGN KEY (Cart_id) REFERENCES Cart(Cart_id)
);

CREATE TABLE Seller (
    Seller_id VARCHAR(6) NOT NULL,
    s_pass VARCHAR(10) NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Address VARCHAR(20) NOT NULL,
    PRIMARY PRIMARY KEY (Seller_id)
);

CREATE TABLE Seller_Phone_num (
    Phone_num BIGINT NOT NULL,
    Seller_id VARCHAR(6) NOT NULL,
    PRIMARY KEY (Phone_num, Seller_id),
    FOREIGN KEY (Seller_id) REFERENCES Seller(Seller_id) ON DELETE CASCADE
);

CREATE TABLE Product (
    Product_id VARCHAR(7) NOT NULL,
    Type VARCHAR(20) NOT NULL,
    Color VARCHAR(15) NOT NULL,
    P_Size VARCHAR(2) NOT NULL,
    Gender CHAR(1) NOT NULL,
    Commission INT NOT NULL,
    Cost INT NOT NULL,
    Quantity INT NOT NULL,
    Seller_id VARCHAR(6),
    PRIMARY KEY (Product_id),
    FOREIGN KEY (Seller_id) REFERENCES Seller(Seller_id) ON DELETE SET NULL
);

CREATE TABLE Cart_item (
    Quantity_wished INT NOT NULL,
    Date_Added DATE NOT NULL,
    Cart_id VARCHAR(7) NOT NULL,
    Product_id VARCHAR(7) NOT NULL,
    purchased VARCHAR(3) DEFAULT 'NO',
    PRIMARY KEY (Cart_id, Product_id),
    FOREIGN KEY (Cart_id) REFERENCES Cart(Cart_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

CREATE TABLE Payment (
    payment_id VARCHAR(7) NOT NULL,
    payment_date DATE NOT NULL,
    payment_type VARCHAR(10) NOT NULL,
    Customer_id VARCHAR(6) NOT NULL,
    Cart_id VARCHAR(7) NOT NULL,
    total_amount INT,
    PRIMARY KEY (payment_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Cart_id) REFERENCES Cart(Cart_id)
);
