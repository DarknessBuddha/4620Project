DROP SCHEMA IF EXISTS PizzaDB;
CREATE SCHEMA PizzaDB;
USE PizzaDB;

CREATE TABLE baseprice (
    baseprice_Size VARCHAR(30),
    baseprice_CrustType VARCHAR(30),
    baseprice_CustPrice DECIMAL(5,2) NOT NULL,
    baseprice_BusPrice DECIMAL(5,2) NOT NULL,
    CONSTRAINT baseprice_Size_CrustType_PK PRIMARY KEY(baseprice_Size, baseprice_CrustType)
);

CREATE TABLE customer (
    customer_CustID INT PRIMARY KEY AUTO_INCREMENT,
    customer_FName VARCHAR(30) NOT NULL,
    customer_LName VARCHAR(30) NOT NULL,
    customer_PhoneNum VARCHAR(30) NOT NULL
);

CREATE TABLE topping (
    topping_TopID INT PRIMARY KEY AUTO_INCREMENT,
    topping_TopName VARCHAR(30) NOT NULL,
    topping_SmallAMT DECIMAL(5,2) NOT NULL,
    topping_MedAMT DECIMAL(5,2) NOT NULL,
    topping_LgAMT DECIMAL(5,2) NOT NULL,
    topping_XLAMT DECIMAL(5,2) NOT NULL,
    topping_CustPrice DECIMAL(5,2) NOT NULL,
    topping_BusPrice DECIMAL(5,2) NOT NULL,
    topping_MinINVT INT NOT NULL,
    topping_CurINVT INT NOT NULL
);

CREATE TABLE ordertable (
    ordertable_OrderID INT PRIMARY KEY AUTO_INCREMENT,
    customer_CustID INT,
    ordertable_OrderType VARCHAR(30) NOT NULL,
    ordertable_OrderDateTime DATETIME NOT NULL,
    ordertable_CustPrice DECIMAL(5,2) NOT NULL,
    ordertable_BusPrice DECIMAL(5,2) NOT NULL,
    ordertable_isComplete BOOLEAN,
    CONSTRAINT ordertable_CustID_FK FOREIGN KEY(customer_CustID) REFERENCES customer(customer_CustID)
);

CREATE TABLE pizza (
    pizza_PizzaID INT PRIMARY KEY AUTO_INCREMENT,
    pizza_Size VARCHAR(30) NOT NULL,
    pizza_CrustType VARCHAR(30) NOT NULL,
    pizza_PizzaState VARCHAR(30) NOT NULL,
    pizza_PizzaDate DATETIME NOT NULL,
    pizza_CustPrice DECIMAL(5,2) NOT NULL,
    pizza_BusPrice DECIMAL(5,2) NOT NULL,
    ordertable_OrderID INT NOT NULL,
    CONSTRAINT pizza_Size_FK FOREIGN KEY(pizza_Size, pizza_CrustType) REFERENCES baseprice(baseprice_Size, baseprice_CrustType),
    CONSTRAINT pizza_OrderID_FK FOREIGN KEY(ordertable_OrderID) REFERENCES ordertable(ordertable_OrderID)
    #CONSTRAINT pizza_CrustType_CHECK
        #CHECK (pizza_CrustType = 'thin' OR pizza_CrustType = 'original' OR pizza_CrustType = 'pan' OR pizza_CrustType = 'gluten free'),
    #CONSTRAINT pizza_Size_CHECK
        #CHECK (pizza_Size = 'small' OR pizza_Size = 'medium' OR pizza_Size = 'large' OR pizza_Size = 'x-large')
);

CREATE TABLE pizza_topping (
    pizza_PizzaID INT,
    topping_TopID INT,
    pizza_topping_IsDouble INT NOT NULL,
    CONSTRAINT pizza_topping_Pizza_Top_PK PRIMARY KEY(pizza_PizzaID, topping_TopID),
    CONSTRAINT pizza_topping_PizzaID_FK FOREIGN KEY(pizza_PizzaID) REFERENCES pizza(pizza_PizzaID),
    CONSTRAINT pizza_topping_TopID_FK FOREIGN KEY (topping_TopID) REFERENCES topping(topping_TopID)
);

CREATE TABLE discount (
    discount_DiscountID INT PRIMARY KEY AUTO_INCREMENT,
    discount_DiscountName VARCHAR(30) NOT NULL,
    discount_Amount DECIMAL(5,2) NOT NULL,
    discount_IsPercent BOOLEAN NOT NULL
);

CREATE TABLE pizza_discount (
    pizza_PizzaID INT,
    discount_DiscountID INT,
    CONSTRAINT pizza_discount_PizzaID_DiscountID_PK PRIMARY KEY(pizza_PizzaID, discount_DiscountID),
    CONSTRAINT pizza_discount_PizzaID_FK FOREIGN KEY(pizza_PizzaID) REFERENCES pizza(pizza_PizzaID),
    CONSTRAINT pizza_discount_DiscountID_FK FOREIGN KEY(discount_DiscountID) REFERENCES discount(discount_DiscountID)
);

CREATE TABLE order_discount (
    ordertable_OrderID INT,
    discount_DiscountID INT,
    CONSTRAINT order_discount_OrderID_DiscountID_PK PRIMARY KEY(ordertable_OrderID, discount_DiscountID),
    CONSTRAINT order_discount_OrderID_FK FOREIGN KEY(ordertable_OrderID) REFERENCES ordertable(ordertable_OrderID),
    CONSTRAINT order_discount_DiscountID_FK FOREIGN KEY(discount_DiscountID) REFERENCES discount(discount_DiscountID)
);




CREATE TABLE pickup (
    ordertable_OrderID INT,
    pickup_IsPickedUp BOOLEAN NOT NULL,
    CONSTRAINT pickup_OrderID_PK PRIMARY KEY(ordertable_OrderID),
    CONSTRAINT pickup_OrderID_FK FOREIGN KEY(ordertable_OrderID) REFERENCES ordertable(ordertable_OrderID)
);

CREATE TABLE delivery (
    ordertable_OrderID INT,
    delivery_HouseNum INT NOT NULL,
    delivery_Street VARCHAR(30) NOT NULL,
    delivery_City VARCHAR(30) NOT NULL,
    delivery_State VARCHAR(2) NOT NULL,
    delivery_Zip INT NOT NULL,
    delivery_IsDelivered BOOLEAN,
    CONSTRAINT delivery_OrderID_PK PRIMARY KEY(ordertable_OrderID),
    CONSTRAINT delivery_OrderID_FK FOREIGN KEY(ordertable_OrderID) REFERENCES ordertable(ordertable_OrderID)
);

CREATE TABLE dinein (
    ordertable_OrderID INT,
    dinein_TableNum INT NOT NULL,
    CONSTRAINT dinein_OrderID_PK PRIMARY KEY(ordertable_OrderID),
    CONSTRAINT dinein_OrderID_FK FOREIGN KEY(ordertable_OrderID) REFERENCES ordertable(ordertable_OrderID)
);