-- Group the orders by date and calculate the average number of pizzas ordered per day.

select round(avg(quantity),0) as orders_per_day from 
(select orders.date,sum(order_details.quantity) as quantity
from order_details join orders
on order_details.order_id=orders.order_id
group by orders.date) as order_quantity;