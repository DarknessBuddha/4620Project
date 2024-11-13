USE PizzaDB;

INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Pepperoni', 2, 2.75, 3.5, 4.5, 1.25, 0.2, 50, 100);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Sausage', 2.5, 3, 3.5, 4.25, 1.25, 0.15, 50, 100);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Ham', 2, 2.5, 3.25, 4, 1.5, 0.15, 25, 78);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Chicken', 1.5, 2, 2.25, 3, 1.75, 0.25, 25, 56);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Green Pepper', 1, 1.5, 2, 2.5, 0.5, 0.02, 25, 79);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Onion', 1, 1.5, 2, 2.75, 0.5, 0.02, 25, 85);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Roma Tomato', 2, 3, 3.5, 4.5, 0.75, 0.03, 10, 86);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Mushrooms', 1.5, 2, 2.5, 3, 0.75, 0.1, 50, 52);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Black Olives', 0.75, 1, 1.5, 2, 0.6, 0.1, 25, 39);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Pineapple', 1, 1.25, 1.75, 2, 1, 0.25, 0, 15);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Jalapenos', 0.5, 0.75, 1.25, 1.75, 0.5, 0.05, 0, 64);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Banana Peppers', 0.6, 1, 1.3, 1.75, 0.5, 0.05, 0, 36);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Regular Cheese', 2, 3.5, 5, 7, 0.5, 0.12, 50, 250);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Four Cheese Blend', 2, 3.5, 5, 7, 1, 0.15, 25, 150);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Feta Cheese', 1.75, 3, 4, 5.5, 1.5, 0.18, 0, 75);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Goat Cheese', 1.6, 2.75, 4, 5.5, 1.5, 0.2, 0, 54);
INSERT INTO topping (topping_TopName, topping_SmallAMT, topping_MedAMT, topping_LgAMT, topping_XLAMT, topping_CustPrice, topping_BusPrice, topping_MinINVT, topping_CurINVT)
VALUES ('Bacon', 1, 1.5, 2, 3, 1.5, 0.25, 0, 89);

INSERT INTO discount (discount_DiscountName, discount_Amount, discount_IsPercent) VALUES ('Employee', 15, TRUE);
INSERT INTO discount (discount_DiscountName, discount_Amount, discount_IsPercent) VALUES ('Lunch Special Medium', 1, FALSE);
INSERT INTO discount (discount_DiscountName, discount_Amount, discount_IsPercent) VALUES ('Lunch Special Large', 2, FALSE);
INSERT INTO discount (discount_DiscountName, discount_Amount, discount_IsPercent) VALUES ('Speciality Pizza', 1.5, FALSE);
INSERT INTO discount (discount_DiscountName, discount_Amount, discount_IsPercent) VALUES ('Happy Hour', 10, TRUE);
INSERT INTO discount (discount_DiscountName, discount_Amount, discount_IsPercent) VALUES ('Gameday Special', 20, TRUE);

INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Small', 'Thin', 3, 0.5);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Small', 'Original', 3, 0.75);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Small', 'Pan', 3.5, 1);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Small', 'Gluten-Free', 4, 2);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Medium', 'Thin', 5, 1);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Medium', 'Original', 5, 1.5);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Medium', 'Pan', 6, 2.25);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Medium', 'Gluten-Free', 6.25, 3);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Large', 'Thin', 8, 1.25);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Large', 'Original', 8, 2);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Large', 'Pan', 9, 3);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('Large', 'Gluten-Free', 9.5, 4);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('XLarge', 'Thin', 10, 2);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('XLarge', 'Original', 10, 3);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('XLarge', 'Pan', 11.5, 4.5);
INSERT INTO baseprice (baseprice_Size, baseprice_CrustType, baseprice_CustPrice, baseprice_BusPrice)
VALUES ('XLarge', 'Gluten-Free', 12.5, 6);

INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice, ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'dinein','2024-03-05 12:03:00', 19.75, 3.68, TRUE);
SET @last_order_id = LAST_INSERT_ID();
INSERT INTO pizza (pizza_Size, pizza_CrustType, pizza_PizzaState, pizza_PizzaDate, pizza_CustPrice, pizza_BusPrice, ordertable_OrderID)
VALUES ('Large', 'Thin', 'Completed', '2024-03-05 12:03:00', 19.75, 3.68, @last_order_id);
SET @last_pizza_id = LAST_INSERT_ID();
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 13, TRUE);
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 1, FALSE);
INSERT INTO pizza_topping (pizza_PizzaID, topping_TopID, pizza_topping_IsDouble) VALUES (@last_pizza_id, 2, FALSE);


INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice, ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'dinein','2024-04-03 12:05:00', 19.78, 4.63, TRUE);
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice, ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'pickup','2024-03-03 21:30:00', 89.28, 19.80, TRUE);
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice, ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'delivery','2024-04-20 19:11:00', 86.19, 23.62, TRUE);
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice, ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'pickup','2024-03-02 17:30:00', 27.45, 7.88, TRUE);
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice, ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'delivery','2024-03-02 18:17:00', 25.81, 4.24, TRUE);
INSERT INTO ordertable (customer_CustID, ordertable_OrderType, ordertable_OrderDateTime, ordertable_CustPrice, ordertable_BusPrice, ordertable_isComplete)
VALUES (NULL, 'pickup','2024-04-13 20:32:00', 37.25, 6, TRUE);

SELECT * FROM topping;
SELECT * FROM pizza_topping;
SELECT * FROM ToppingPopularity;