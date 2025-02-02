-- Determine the distribution of orders by hour of the day.
use pizza;
select hour(time) ,count(order_id)
from orders
group by hour(time);