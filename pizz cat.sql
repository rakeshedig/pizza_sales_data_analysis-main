-- Join the necessary tables to find the total quantity of each pizza category ordered.

use pizza;
select pizza_types.category as categ , sum(order_details.quantity) as quan
from pizzas join pizza_types
on pizzas.pizza_type_id=pizza_types.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by categ
order by quan desc;