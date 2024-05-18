# RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL #

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/b21c97d4-c2ef-4f10-96f1-4ae5b4a4815e)


# INTRODUCTION #

This project aims to develop a robust data management and analysis system using SQL for a supermarket's orders. The primary goal is to organize, query, and analyze this data to derive actionable insights that can drive strategic decisions, improve customer satisfaction, and enhance operational efficiency.

# DATASET INFORMATION #

The dataset contains detailed records of customer transactions, including product information, sales data, customer demographics, and shipping details. The dataset provided is made up of a file in Microsoft Excel format containing the company's order data for a period. The dataset contains at least 9,994 rows and 11 columns, each giving specific information. The dataset can be downloaded here. Below is the data dictionary:

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/b4ecf3a2-2093-464d-946d-3ec9649e94ff)

# TOOLS USED #

Microsoft SQL Server Management Studio

# DATA TRANSFORMATION #

The transformation done was importing the Excel file into the SQL server using the IMPORT FLAT FILE option in the MS SQL Studio.

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/20d0aaa6-376f-436f-8f30-11628b183fbe)

# ANALYSIS #

Using Microsoft SQL Server, I will be doing the analysis of the orders dataset below.

1. Which ship mode has the highest sales revenue, profit, and quantity?

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/bc44764c-43c2-4365-8344-27a87707ee35)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/42239b00-1e27-444b-add2-69263cb5d7fc)

The table above indicates that customers prefer to have their orders shipped using the Standard class, as seen in the quantity purchased which in turn allows high sales and increased profit.

2. Kindly show the breakdown of sales according to their order date.

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/3812e753-25fa-4732-ad1a-877b07f16728)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/e67aa1c6-33d8-46c4-9ecb-2507f320280f)

The above query shows the breakdown of sales by their order dates.

3. Which date has the highest quantity shipped?

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/7da2184a-d06c-4d2d-a5ab-8d7cd3a8e0be)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/1d1381bf-c714-406c-9013-9bf174fcc877)

The date with the highest quantity shipped is 16th December 2015.

4. Which customerID has the highest purchase record in the company?

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/60bf807d-99bb-4bc2-80aa-804e3e3cffcd)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/86cd1713-b7ff-464f-8d51-0c7ea33a7686)

The customer with ID SM-20320 has the highest purchase record, having made purchases worth 25.043.05
   
5. What is the maximum, minimum, and average quantity for the sales record?

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/15cc1378-545d-4583-a889-de0876184077)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/215fbe45-971d-45c1-9eef-daa8fdbb9a48)

The above table shows the maximum, minimum and average quantity purchased for the record.

6. Which productid would you advise the business to ensure constant restocking considering the amount of sales revenue they generate for the business

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/7dfcc438-a9bd-4c3f-b2d4-c807b8b61b61)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/73edfaa3-c8ff-4511-81b7-5ba75b8d195d)

The table shows the ProductID with the highest Sales revenue indicating which product should be considered for constant restocking due to its significant contribution to the business's revenue.

7. Kindly calculate the sales revenue where the customerID starts with C and countryID starts with T.

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/0221d4a5-7192-4a18-9735-cbf63f9bfcb8)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/ff57cc25-8001-4733-86c7-94606e121bdd)

The query above shows the sales revenue for Customer IDs that start with C and Country IDs that start with T.

8. How many customers bought goods that were shipped by first class?

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/0ed98de3-b598-49df-8d56-8d72e2d91757)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/e12bacbe-5bb0-45e5-a5e6-feb9c21b4da7)

 A total of 494 customers bought goods that were shipped using First class mode.

 9. Show the manager the top 3 countryID with the highest customer.

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/b4828f14-61e0-4d5e-bafa-e881cec7702a)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/680834f3-a5a7-4266-8f41-42b0b1067e2d)

The table above shows the top 3 Country IDs with the highest number of customers.

10. Using customerID (Tb-21520), kindly show the quantity of goods bought and their shipping mode.

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/e97dd805-a87a-498d-bc3f-0745f8952b0a)

![image](https://github.com/Adeola05-pelz/RAYS-SUPERMARKET-ORDERS-ANALYSIS-USING-SQL/assets/111251042/38d5be6a-9772-4050-aa96-8eeeabe78516)

The query above shows the quantity of goods bought and the various shipping modes used by customer ID TB-21520.
