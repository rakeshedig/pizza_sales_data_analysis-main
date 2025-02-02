-- calculate the total revenue generated from pizza sales

select round(sum(pizzas.price * order_details.quantity),2) as revenue
from pizzas join order_details
on pizzas.pizza_id=order_details.pizza_id
order by revenue desc limit 1;



