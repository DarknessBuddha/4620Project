
-- Ivan Lin and Don Tran
USE PizzaDB;

INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice,
                     topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Pepperoni', 2, 2.75, 3.5, 4.5, 1.25, 0.2, 50, 100),
       ('Sausage', 2.5, 3, 3.5, 4.25, 1.25, 0.15, 50, 100),
       ('Ham', 2, 2.5, 3.25, 4, 1.5, 0.15, 25, 78),
       ('Chicken', 1.5, 2, 2.25, 3, 1.75, 0.25, 25, 56),
       ('Green Pepper', 1, 1.5, 2, 2.5, 0.5, 0.02, 25, 79),
       ('Onion', 1, 1.5, 2, 2.75, 0.5, 0.02, 25, 85),
       ('Roma Tomato', 2, 3, 3.5, 4.5, 0.75, 0.03, 10, 86),
       ('Mushrooms', 1.5, 2, 2.5, 3, 0.75, 0.1, 50, 52),
       ('Black Olives', 0.75, 1, 1.5, 2, 0.6, 0.1, 25, 39),
       ('Pineapple', 1, 1.25, 1.75, 2, 1, 0.25, 0, 15),
       ('Jalapenos', 0.5, 0.75, 1.25, 1.75, 0.5, 0.05, 0, 64),
       ('Banana Peppers', 0.6, 1, 1.3, 1.75, 0.5, 0.05, 0, 36),
       ('Regular Cheese', 2, 3.5, 5, 7, 0.5, 0.12, 50, 250),
       ('Four Cheese Blend', 2, 3.5, 5, 7, 1, 0.15, 25, 150),
       ('Feta Cheese', 1.75, 3, 4, 5.5, 1.5, 0.18, 0, 75),
       ('Goat Cheese', 1.6, 2.75, 4, 5.5, 1.5, 0.2, 0, 54),
       ('Bacon', 1, 1.5, 2, 3, 1.5, 0.25, 0, 89);


INSERT INTO discount (discount_DiscountName, discount_Amount, discount_IsPercent)
VALUES ('Employee', 15, TRUE),
       ('Lunch Special Medium', 1, FALSE),
       ('Lunch Special Large', 2, FALSE),
       ('Speciality Pizza', 1.5, FALSE),
       ('Happy Hour', 10, TRUE),
       ('Gameday Special', 20, TRUE);


INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Small', 'Thin', 3, 0.5),
       ('Small', 'Original', 3, 0.75),
       ('Small', 'Pan', 3.5, 1),
       ('Small', 'Gluten-Free', 4, 2),
       ('Medium', 'Thin', 5, 1),
       ('Medium', 'Original', 5, 1.5),
       ('Medium', 'Pan', 6, 2.25),
       ('Medium', 'Gluten-Free', 6.25, 3),
       ('Large', 'Thin', 8, 1.25),
       ('Large', 'Original', 8, 2),
       ('Large', 'Pan', 9, 3),
       ('Large', 'Gluten-Free', 9.5, 4),
       ('XLarge', 'Thin', 10, 2),
       ('XLarge', 'Original', 10, 3),
       ('XLarge', 'Pan', 11.5, 4.5),
       ('XLarge', 'Gluten-Free', 12.5, 6);

-- march 5th ---------------------------------------
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice,
                        ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'dinein', '2024-03-05 12:03:00', 19.75, 3.68, TRUE);
SET @last_order_id = LAST_INSERT_ID();

INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice,
                   ordertable_OrderID)

VALUES ('Large', 'Thin', 'Completed', '2024-03-05 12:03:00', 19.75, 3.68, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 13, TRUE);
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 1, FALSE);
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 2, FALSE);

INSERT INTO
    pizza_discount (pizza_PizzaID, discount_DiscountID)
VALUE (
    @last_pizza_id,
      3
    );


-- april 3rd ---------------------------------------
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice,
                        ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'dinein', '2024-04-03 12:05:00', 19.78, 4.63, TRUE);
SET @last_order_id = LAST_INSERT_ID();

INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice,
                   ordertable_OrderID)
VALUES ('Medium', 'Pan', 'Completed', '2024-04-03 12:05:00', 12.85, 3.23, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 3, FALSE), -- Feta Cheese
       (@last_pizza_id, 7, FALSE), -- Black Olives
       (@last_pizza_id, 8, FALSE), -- Roma Tomatoes
       (@last_pizza_id, 4, FALSE), -- Mushrooms
       (@last_pizza_id, 12, FALSE); -- Banana Peppers

INSERT INTO
    pizza_discount (pizza_PizzaID, discount_DiscountID)
VALUES (@last_pizza_id, 2),
       (@last_pizza_id, 4);

INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice,
                   ordertable_OrderID)
VALUES ('Small', 'Original', 'Completed', '2024-04-03 12:05:00', 6.93, 1.40, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 13, FALSE), -- Regular Cheese
       (@last_pizza_id, 4, FALSE), -- Chicken
       (@last_pizza_id, 12, FALSE); -- Banana Peppers


-- march 3rd ---------------------------------------------
INSERT INTO customer (customer_FName, customer_LName, customer_PhoneNum)
VALUES ('Andrew', 'Wilkes-Krier', '864-254-5861');
SET @last_customer_id = LAST_INSERT_ID();
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice,
                        ordertable_BusPrice, ordertable_isComplete)
VALUES (@last_customer_id, 'pickup', '2024-03-03 21:30:00', 89.28, 19.80, TRUE);
SET @last_order_id = LAST_INSERT_ID();

-- pizza 1
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Original', 'Completed', '2024-03-03 21:30:00', 14.88, 3.30, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 13, FALSE); -- Regular Cheese
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 1, FALSE); -- Pepperoni

-- pizza 2
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Original', 'Completed', '2024-03-03 21:30:00', 14.88, 3.30, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 13, FALSE); -- Regular Cheese
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 1, FALSE); -- Pepperoni

-- pizza 3
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Original', 'Completed', '2024-03-03 21:30:00', 14.88, 3.30, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 13, FALSE); -- Regular Cheese
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 1, FALSE); -- Pepperoni

-- pizza 4
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Original', 'Completed', '2024-03-03 21:30:00', 14.88, 3.30, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 13, FALSE); -- Regular Cheese
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 1, FALSE); -- Pepperoni

-- pizza 5
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Original', 'Completed', '2024-03-03 21:30:00', 14.88, 3.30, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 13, FALSE); -- Regular Cheese
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 1, FALSE); -- Pepperoni

-- pizza 6
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Original', 'Completed', '2024-03-03 21:30:00', 14.88, 3.30, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 13, FALSE); -- Regular Cheese
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 1, FALSE); -- Pepperoni

-- april 20
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice, ordertable_BusPrice, ordertable_isComplete)
VALUES (@last_customer_id, 'delivery', '2024-04-20 19:11:00', 86.19, 23.62, TRUE);
SET @last_order_id = LAST_INSERT_ID();

INSERT INTO order_discount(ordertable_OrderID, discount_DiscountID)
VALUES (@last_order_id, 6);

-- Insert 3 xlarge original crust pizzas
-- Insert the first pizza (Pepperoni and Sausage with Four Cheese Blend)
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('XLarge', 'Original', 'Completed', '2024-04-20 19:11:00', 27.94, 9.19, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

-- Insert toppings for the first pizza
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 1, FALSE), -- Pepperoni
       (@last_pizza_id, 2, FALSE),  -- Sausage
       (@last_pizza_id, 14, FALSE); -- Four Cheese Blend


-- Insert the second pizza (Ham and Pineapple extra with Four Cheese Blend)
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('XLarge', 'Original', 'Completed', '2024-04-20 19:11:00', 31.50, 6.25, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

-- Insert toppings for the second pizza
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 3, TRUE), -- Ham (extra)
       (@last_pizza_id, 10, TRUE), -- Pineapple (extra)
       (@last_pizza_id, 14, FALSE); -- Four Cheese Blend

INSERT INTO
    pizza_discount (pizza_PizzaID, discount_DiscountID)
VALUES (@last_pizza_id, 4);

-- Insert the third pizza (Chicken and Bacon with Four Cheese Blend)
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('XLarge', 'Original', 'Completed', '2024-04-20 19:11:00', 26.75, 8.18, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

-- Insert toppings for the third pizza
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 4, FALSE), -- Chicken
       (@last_pizza_id, 17, FALSE), -- Bacon
       (@last_pizza_id, 14, FALSE); -- Four Cheese Blend



-- march 2nd matt engers ---------------------------------------------
INSERT INTO customer (customer_FName, customer_LName, customer_PhoneNum)
VALUES ('Matt', 'Engers', '864-474-9953');
SET @last_customer_id = LAST_INSERT_ID();

INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice,
                        ordertable_BusPrice, ordertable_isComplete)
VALUES (@last_customer_id, 'pickup', '2024-03-02 17:30:00', 27.45, 7.88, TRUE);
SET @last_order_id = LAST_INSERT_ID();

-- Insert the pizza for the order
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('XLarge', 'Gluten-Free', 'Completed', '2024-03-02 17:30:00', 27.45, 7.88, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

-- Insert the toppings for the pizza
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 5, FALSE),  -- Green Pepper
       (@last_pizza_id, 6, FALSE),  -- Onion
       (@last_pizza_id, 7, FALSE),  -- Roma Tomatoes
       (@last_pizza_id, 8, FALSE),  -- Mushrooms
       (@last_pizza_id, 9, FALSE),  -- Black Olives
       (@last_pizza_id, 16, FALSE); -- Goat Cheese

INSERT INTO pizza_discount (pizza_PizzaID, discount_DiscountID)
VALUES (@last_pizza_id, 4);

-- march 2nd frank turner --------------------------
INSERT INTO customer (customer_FName, customer_LName, customer_PhoneNum)
VALUES ('Frank', 'Turner', '864-232-8944');
SET @last_customer_id = LAST_INSERT_ID();

INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice,
                        ordertable_BusPrice, ordertable_isComplete)
VALUES (@last_customer_id, 'delivery', '2024-03-02 18:17:00', 25.81, 4.24, TRUE);

-- Insert the pizza for the order
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Thin', 'Completed', '2024-03-02 18:17:00', 25.81, 4.24, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();

-- Insert the toppings for the pizza
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id, 4, FALSE),  -- Chicken
       (@last_pizza_id, 5, FALSE),  -- Green Peppers
       (@last_pizza_id, 6, FALSE),  -- Onions
       (@last_pizza_id, 8, FALSE),  -- Mushrooms
       (@last_pizza_id, 14, TRUE);  -- Four Cheese Blend (extra)



-- april 13th ---------------------------

INSERT INTO customer (customer_FName, customer_LName, customer_PhoneNum)
VALUES ('Milo', 'Auckerman', '864-878-5679');
SET @last_customer_id = LAST_INSERT_ID();

INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice,
                        ordertable_BusPrice, ordertable_isComplete)
VALUES (@last_customer_id, 'delivery', '2024-04-13 20:32:00', 37.25, 6, TRUE);

-- Insert the first pizza (Four Cheese Blend on Thin Crust)
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Thin', 'Completed', '2024-04-13 20:32:00', 18.00, 2.75, @last_order_id);
SET @last_pizza_id_1 = LAST_INSERT_ID();

-- Insert the toppings for the first pizza (Four Cheese Blend)
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id_1, 14, TRUE); -- Four Cheese Blend (extra)

-- Insert the second pizza (Regular Cheese and Pepperoni on Thin Crust)
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Thin', 'Completed', '2024-04-13 20:32:00', 19.25, 3.25, @last_order_id);
SET @last_pizza_id_2 = LAST_INSERT_ID();

-- Insert the toppings for the second pizza (Regular Cheese and Pepperoni)
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble)
VALUES (@last_pizza_id_2, 1, TRUE),  -- Pepperoni (extra)
       (@last_pizza_id_2, 13, FALSE); -- Regular Cheese

INSERT INTO order_discount(ordertable_OrderID, discount_DiscountID)
VALUES (@last_order_id, 1);
