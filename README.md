Food Delivery Data Analysis :

Project Overview:
This project focuses on analyzing food delivery data to derive insights and trends. It includes four tables: users, goldusers, sales, and product. These tables store information about users, gold membership, sales transactions, and products, respectively.

Installation Instructions:
To set up the project, follow these steps:

1. Clone the project repository from GitHub.
2. Ensure you have the required database software (e.g., MySQL) installed.
3. Create a new database and import the provided SQL files to create the required tables.
4. Load the data into the tables, either by executing SQL insert statements or importing CSV files.
5. Make sure you have the necessary libraries or dependencies installed (if any) for executing the analysis queries.

Data Description:
The project includes the following tables:

1.users: Contains information about the users who have registered in the food delivery system. It includes columns like userid and joining_date.

2.goldusers: Stores details of users who have subscribed to the gold membership. This table includes columns specific to gold membership information.

3.sales: Stores information about the products purchased by users. It includes columns like userid, date, and product_id.

4.product: Contains information about the products available for purchase. It includes columns like product_id, price, and other relevant attributes.

Queries and Analysis:
The project includes a set of SQL queries designed to perform data analysis on the food delivery data. These queries aim to provide insights and answer specific questions related to the business. The SQL files provided contain examples of these queries.

Examples of analysis queries:

1. what is total easch customer spend
2. how many days each customer visited
3. what is the first product of a customer
4. what is the most brought product
5. how many times each customer brought most broght product
6. which product a customer brought after they become a member
7. what was broght before becoming gold member
8. what are the total orders and money spent by customer after becoming member
9. if product 1 gives 1 point , product 2 =2 points , product 3 gives 3 points , how many points each customer got till now 
10. calculate which user gets most points
11. give total amount spend by each non gold member user


Usage:
To use the provided SQL files and run the analysis queries:

1. Connect to the database using your preferred database management tool.
2. Execute the SQL files using the appropriate tool or by copy-pasting the queries into the SQL editor.
3. Review the query results to gain insights into the food delivery data.
4. Feel free to modify the queries according to your specific analysis needs or explore new questions using the available data.
