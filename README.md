# RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL
INTRODUCTION

This project aims to develop a robust data management and analysis system using SQL for a supermarket's orders. The primary goal is to organize, query, and analyze this data to derive actionable insights that can drive strategic decisions, improve customer satisfaction, and enhance operational efficiency.

DATASET INFORMATION

The dataset contains detailed records of customer transactions, including product information, sales data, customer demographics, and shipping details. The dataset provided is made up of a file in Microsoft Excel format containing the company's order data for a period. The dataset contains at least 9,994 rows and 11 columns, each giving specific information. The dataset can be downloaded here. Below is the data dictionary:

            Order ID: Unique identifier for each order.
            Order Date: Date when the order was placed.
            Ship Date: Date when the order was shipped.
            Ship Mode: Mode of shipping used for the order (e.g., First Class, Second Class).
            Customer ID: Unique identifier for each customer.
            CountryID: Identifier for the country where the customer is located.
            Product ID: Unique identifier for each product.
            Sales: Total sales amount for the order.
            Quantity: Quantity of the product ordered.
            Discount: Discount applied to the order.
            Profit: Total profit from the order.


TOOLS USED

Microsoft SQL Server Management Studio

DATA TRANSFORMATION

The transformation done was importing the Excel file into the SQL server using the IMPORT FLAT FILE option in the MS SQL Studio.

ANALYSIS

Using Microsoft SQL Server, I will be doing the analysis of the orders dataset below.

1. Which ship mode has the highest sales revenue, profit, and quantity?

            SELECT Ship_Mode,
            SUM(Sales) AS total_sales,
            SUM(Profit) AS total_profit,
            SUM(Quantity) AS total_quantity 
            FROM [Order]
            GROUP BY Ship_Mode
            ORDER BY total_sales DESC,
            	     total_profit DESC,
            		 total_quantity DESC;

The Customers prefer to have their orders shipped using the Standard class, as seen in the quantity purchased which in turn allows high sales and increased profit.

2. Kindly show the breakdown of sales according to their order date.

            SELECT Order_Date,
            SUM(Sales) Total_Sales 
            FROM[Order]
            GROUP BY Order_Date
            ORDER BY Order_Date;
   
The above query shows the breakdown of sales by their order dates.

3. Which date has the highest quantity shipped?

            SELECT Top 1 Ship_Date,
            COUNT(Quantity) Quantity_Shipped 
            FROM [Order]
            GROUP BY Ship_Date 
            ORDER BY Quantity_Shipped DESC;

The date with the highest quantity shipped is 16th December 2015.

4. Which customerID has the highest purchase record in the company?

            SELECT Top 1 Customer_ID,
            SUM(Sales) Total_Sales
            FROM[Order]
            GROUP BY Customer_ID
            ORDER BY Total_Sales DESC;

The customer with ID SM-20320 has the highest purchase record, having made purchases worth 25.043.05
   
5. What is the maximum, minimum, and average quantity for the sales record?

            SELECT MAX(Quantity) MaxQuantity,
            MIN(Quantity) MinQuantity,
            AVG(Quantity) AveQuantity
            FROM[Order]
            ORDER BY MaxQuantity DESC,
            MinQuantity DESC,
            AveQuantity DESC;

The above query shows the maximum, minimum and average quantity purchased for the record.

6. Which productid would you advise the business to ensure constant restocking considering the amount of sales revenue they generate for the business

            SELECT Top 1 Product_ID,
            SUM(Sales) Total_Sales
            FROM [Order]
            GROUP BY Product_ID
            ORDER BY Total_Sales DESC;

The query shows the ProductID with the highest Sales revenue indicating which product should be considered for constant restocking due to its significant contribution to the business's revenue.

7. Kindly calculate the sales revenue where the customerID starts with C and countryID starts with T.

            SELECT Customer_ID,CountryID,
            SUM(Sales) Total_Sales
            FROM [Order]
            WHERE Customer_ID LIKE 'C%' AND CountryID LIKE 'T%'
            GROUP BY Customer_ID,CountryID 
            ORDER BY Total_Sales DESC;

The query above shows the sales revenue for Customer IDs that start with C and Country IDs that start with T.

8. How many customers bought goods that were shipped by first class?

            SELECT Ship_Mode, 
            COUNT(DISTINCT Customer_ID) NumberofFirstClassCustomers
            FROM [Order]
            WHERE Ship_Mode = 'First Class'
            GROUP BY Ship_Mode;

 A total of 494 customers bought goods that were shipped using First class mode.

 9. Show the manager the top 3 countryID with the highest customer.

            SELECT Top 3 CountryID, 
            COUNT(DISTINCT Customer_ID) AS NumberOfCustomers
            FROM [Order]
            GROUP BY CountryID
            ORDER BY NumberOfCustomers DESC;

The query above shows the top 3 Country IDs with the highest number of customers.

10. Using customerID (Tb-21520), kindly show the quantity of goods bought and their shipping mode.

            SELECT Ship_Mode,
            COUNT(Quantity) QuantityBought
            FROM [Order]
            WHERE Customer_ID = 'TB-21250'
            GROUP BY Ship_Mode
            ORDER BY QuantityBought DESC;

    The query above shows the quantity of goods bought and the various shipping modes used by customer ID TB-21520.
