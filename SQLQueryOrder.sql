
--Question 1
--which ship mode has the highest sales revenue, profit, and quantity?
SELECT Ship_Mode,
SUM(Sales) AS total_sales,
SUM(Profit) AS total_profit,
SUM(Quantity) AS total_quantity 
FROM [Order]
GROUP BY Ship_Mode
ORDER BY total_sales DESC,
	     total_profit DESC,
		 total_quantity DESC;


--Question 2
--Kindly show the breakdown of sales according to their order date.
SELECT Order_Date,
SUM(Sales) Total_Sales 
FROM[Order]
GROUP BY Order_Date
ORDER BY Order_Date;


--Question 3
--Which date has the highest quantity shipped.
SELECT Top 1 Ship_Date,
COUNT(Quantity) Quantity_Shipped 
FROM [Order]
GROUP BY Ship_Date 
ORDER BY Quantity_Shipped DESC;


--Question 4
-- which customerID has the highest purchase record in the company.
SELECT Top 1 Customer_ID,
SUM(Sales) Total_Sales
FROM[Order]
GROUP BY Customer_ID
ORDER BY Total_Sales DESC;



--Question 5
--What is the maximum, minimum, and average quantity for the sales record
SELECT MAX(Quantity) MaxQuantity,
MIN(Quantity) MinQuantity,
AVG(Quantity) AveQuantity
FROM[Order]
GROUP BY Sales
ORDER BY MaxQuantity DESC,
MinQuantity DESC,
AveQuantity DESC;


--Question 6
--which productid would you advise the business to ensure constant restocking considering the amount of sales revenue they generate for the business
SELECT Top 1 Product_ID,
SUM(Sales) Total_Sales
FROM [Order]
GROUP BY Product_ID
ORDER BY Total_Sales DESC;


--Question 7
--Kindly calculate the sales revenue where the customerID starts with C and countryID starts with T
SELECT Customer_ID,CountryID,
SUM(Sales) Total_Sales
FROM [Order]
WHERE Customer_ID LIKE 'C%' AND CountryID LIKE 'T%'
GROUP BY Customer_ID,CountryID 
ORDER BY Total_Sales DESC;


--Question 8
--How many customers bought goods that were shipped by first class
SELECT Ship_Mode, 
COUNT(DISTINCT Customer_ID) NumberofFirstClassCustomers
FROM [Order]
WHERE Ship_Mode = 'First Class'
GROUP BY Ship_Mode;


--Question9
--Show the manager the top 3 countryID with the highest customer
SELECT Top 3 CountryID, 
COUNT(DISTINCT Customer_ID) AS NumberOfCustomers
FROM [Order]
GROUP BY CountryID
ORDER BY NumberOfCustomers DESC;


--Question 10
--Using customerID (Tb-21520), kindly show the quantity of goods bought and their shipping mode
SELECT Ship_Mode,
COUNT(Quantity) QuantityBought
FROM [Order]
WHERE Customer_ID = 'TB-21250'
GROUP BY Ship_Mode
ORDER BY QuantityBought DESC;


SELECT * FROM [Order]