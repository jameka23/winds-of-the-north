-- What is the undiscounted subtotal for each Order (identified by OrderID).


select  od.OrderID, SUM(od.Quantity * od.UnitPrice) as NoDiscountSubtotal
from [Order Details] od
where od.Discount = 0
group by od.OrderID
order by od.OrderID