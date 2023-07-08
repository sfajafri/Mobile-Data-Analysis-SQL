use mobile_data;
select * from mobile_analysis;

-- Total Mobile Phones --
select count(Total_Mobile) as Total_Mobiles from mobile_analysis;

-- Total Brands --
select count(distinct(brands)) as Total_Brands from mobile_analysis;

-- -	Total Number of Mobile Phones against each brand --
select brands, count(Total_Mobile) as Total_Mobiles
from mobile_analysis
group by brands
order by Total_Mobiles desc;



-- Question 1: List of Mobile Phones available ordered as per Price List? --
select phone_name, price from mobile_analysis
order by price desc;

-- Question 2: Which are the ten most expensive phones? --
select * from mobile_analysis
order by price desc
limit 10;

-- Question 3: Which are the top ten cheapest phones? --
select * from mobile_analysis
order by price
limit 10;

-- Question 4: List of Top 10 Samsung phones as per price with all features? --
select * from mobile_analysis
where brands = 'Samsung'
order by price desc
limit 10;

-- Question 5: List of Top 10 mobile phones as per price with Android? --
select * from mobile_analysis
where Operating_System_Type = 'Android'
order by price desc
limit 10;

-- Question 6: List of 10 cheapest mobile phones as per price with Android? --
select * from mobile_analysis
where Operating_System_Type = 'Android'
order by price
limit 10;

-- Question 7: List of Top 10 mobile phones as per price with IOS? --
select * from mobile_analysis
where Operating_System_Type = 'iOS'
order by price desc
limit 10;

-- Question 8: List of 10 cheapest mobile phones as per price with IOS? --
select * from mobile_analysis
where Operating_System_Type = 'iOS'
order by price
limit 10;

-- Question 9: List of Top 10 mobile phones as per price with 5G? --
select * from mobile_analysis
where 5G_Availability = "Yes"
order by price desc
limit 10;

-- Question 10: Total price of all mobiles of each brand? --
select brands as Brand_Name, sum(price) as Total_Price from mobile_analysis
group by brands
order by Total_Price desc;
