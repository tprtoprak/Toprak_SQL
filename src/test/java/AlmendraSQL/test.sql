select * from AlmendraShopping.customers;
select * from AlmendraShopping.orders;

select c.customer, registrationYear,paymentMethod,productId from AlmendraShopping.customers c
join AlmendraShopping.orders o on c.orderId = o.orderId;