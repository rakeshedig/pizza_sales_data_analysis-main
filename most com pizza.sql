-- Identify the most common pizza size ordered.
use pizza;
select pizza_id,count(order_details_id) as most
from order_details
group by pizza_id
order by most desc limit 1;