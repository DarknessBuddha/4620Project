-- Ivan Lin and Don Tran

USE PizzaDB;

CREATE VIEW ToppingPopularity AS (
    SELECT
        topping.topping_TopName AS 'Topping',
        CAST(
            SUM(
                IF(
                    pizza_topping.topping_TopID IS NOT NULL,
                    IF(pizza_topping_IsDouble = TRUE, 2, 1),
                    0
                )
            ) AS DECIMAL(33, 0)
        ) AS ToppingCount
    FROM topping
    LEFT JOIN pizza_topping ON topping.topping_TopID = pizza_topping.topping_TopID
    GROUP BY pizza_topping.topping_TopID
    ORDER BY ToppingCount DESC
);
#not done yet
CREATE VIEW ProfitByPizza AS
(
    SELECT
        p.pizza_Size as 'Size',
        p.pizza_CrustType as 'Crust',
        SUM(p.pizza_CustPrice - p.pizza_BusPrice) AS Profit,
        CONCAT(EXTRACT(MONTH FROM p.pizza_PizzaDate), '/', EXTRACT(YEAR FROM p.pizza_PizzaDate)) as OrderMonth
    FROM
        pizza p
    LEFT JOIN
        baseprice b ON p.pizza_Size = b.baseprice_Size AND p.pizza_CrustType = b.baseprice_CrustType
    GROUP BY
        p.pizza_Size, p.pizza_CrustType, EXTRACT(YEAR FROM p.pizza_PizzaDate), EXTRACT(MONTH FROM p.pizza_PizzaDate)
    ORDER BY
        profit
);

#not done yet
CREATE VIEW ProfitByOrderType AS
(
    SELECT
        ordertable_OrderType as 'customerType',
        CONCAT(EXTRACT(MONTH FROM ordertable_OrderDateTime), '/', EXTRACT(YEAR FROM ordertable_OrderDateTime)) as OrderMonth,
        SUM(ordertable_CustPrice) as 'TotalOrderPrice',
        SUM(ordertable_BusPrice) AS 'TotalOrderCost',
        SUM(ordertable_CustPrice - ordertable_BusPrice) AS Profit
    FROM
        ordertable
    GROUP BY
        OrderMonth,
        ordertable.ordertable_OrderType
    ORDER BY
        ordertable.ordertable_OrderType desc ,
        Profit
);

