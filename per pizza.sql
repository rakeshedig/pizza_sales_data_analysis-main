-- Calculate the percentage contribution of each pizza type to total revenue.

select ((revenue/total_revenue)*100) as percentage_revenue,pizza_types.name from 
(select pizzas.price*order_details.quantity as revenue,sum(pizzas.price*order_details.quantity) as total_revenue
from pizzas join order_details
on pizzas.pizza_id=order_details.pizza_id) as revenue_whole
from pizzas join pizza_types
pizza_types.pizza_type_id=pizzas.pizza_type_id


SELECT 
    pizza_types.category,
    ROUND(SUM(order_details.quantity * pizzas.price) / 
    (SELECT
        ROUND(SUM(order_details.quantity * pizzas.price), 2) 
     FROM
        order_details
     JOIN
        pizzas ON pizzas.pizza_id = order_details.pizza_id) * 100, 2) AS revenue
FROM 
    pizza_types 
JOIN 
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN 
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY 
    pizza_types.category 
ORDER BY 
    revenue DESC;


