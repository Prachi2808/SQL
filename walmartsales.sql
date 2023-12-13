-- Sales Analysis--
create database db1;
use db1;

-- Retrieve All Data from the Table--
select * from WlmartData;

-- Total Sales by Product Line--
select ProductLine, sum(Total) as Total_sales from WlmartData group by productline;

-- Average Rating by Branch--
select Branch,avg(Rating) as average_rating from WlmartData group by branch;

-- Number of Customers by City--
select city,count(distinct(customertype)) as No_of_customers from wlmartdata group by city;

-- Total Gross Income by Payment Method --
select payment,sum(grossincome) as Total_gross_income from wlmartdata group by payment;

-- Number of Sales by Customer Type --
select customertype, count(*) as No_of_sales from wlmartdata group by customertype;

-- Top-Selling Products-- 
select productline, sum(quantity) as Total_quantity from wlmartdata 
group by productline
order by Total_quantity desc
limit 5;

-- Find Sales by Date Range--
select * from wlmartdata 
where Date between "1/5/2019" and "1/27/2019" ;

-- Calculate Profit Margin--
select invoiceid,(total-cogs) as Profit from wlmartdata;

-- Identify Anomalies (Outliers)--
select * from wlmartdata
where total>(select avg(total)+2*stddev(total) from wlmartdata);

