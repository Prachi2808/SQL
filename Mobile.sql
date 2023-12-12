create database mobile;
use mobile;
select*from mobile;
-- check mobile features and price list --
select phone_name,price from mobile;
-- find out the most 5 expensive mobiles --
select phone_name,price from mobile 
order by price desc 
limit 5;
-- find out the most 5 cheapest mobiles --
select phone_name,price from mobile 
order by price asc
limit 5;
-- List of top 5 samsung phones with price aand all features --
select phone_name,price from mobile 
where Brands="Samsung"
order by price desc
limit 5;
-- Must have andoid phone list then top 5 high price android phones --
select phone_name,price,operating_system_type from mobile where operating_system_type="Android"
order by price desc
limit 5;
-- Must have IOS phone list then top 5 high price IOS phones --
select phone_name,price,operating_system_type from mobile where operating_system_type="IOS"
order by price desc
limit 5;

-- Must have IOS phone list then bottom 5 lower price IOS phones --
select phone_name,price,operating_system_type from mobile where operating_system_type="IOS"
order by price asc
limit 5;
-- Write a query with phone support 5G  and alse top 5 phone with 5G support--
select phone_name,5G_Availability,price from mobile
where 5G_Availability="Yes"
order by price desc
limit 5;
-- Total price of all mobiles is to be found with brand name--
select Brands,sum(price) from mobile
group by Brands;
-- avg price of all mobiles is to be found with brand name--
select Brands,avg(price) from mobile
group by Brands;



--  End --