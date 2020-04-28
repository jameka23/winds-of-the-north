-- What is the cost after discount for each order?  Discounts should be applied as a percentage off.

select OrderID, ROUND(SUM((UnitPrice * Quantity)-((UnitPrice * Quantity) * Discount)), 2) as DiscountApplied
from [Order Details]
group by OrderID
order by OrderID