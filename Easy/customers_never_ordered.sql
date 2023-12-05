select customers from (
select c.name as customers , o.id as order_id  from customers c
left join orders o 
on c.id = o.customerId
where o.id is null) sq
