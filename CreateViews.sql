USE pizzadb;

CREATE VIEW ToppingPopularity AS(
        SELECT
        topping_TopName,
        SUM(IF(pizza_topping_IsDouble = TRUE, 2, 1)) As 'ToppingCount'
        FROM pizza_topping JOIN topping USING(topping_TopID)
        GROUP BY topping_TopName
);

#not done yet
CREATE VIEW ProfitByPizza AS
(
    SELECT * FROM pizza
);

#not done yet
CREATE VIEW ProfitByOrderType AS
(
    SELECT * FROM pizza
);