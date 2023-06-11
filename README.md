# SQL-and-SQOOP-Data-Ingestion-ETL-


### Problem Statement:
Use Sqoop to read data from SQL database and import it into Hadoop.
You need to build the following requirement:

1. Create SQL database at any cloud platform.
2. Design an Ecommerce database and store 10 GB record in SQL Database.
3. Use Sqoop to load data from SQL Database to Hadoop.
4. Schedule pipeline such a way that new data from Database can be transferred to
Hadoop automatically on daily basis.


   ![Screenshot 2023-06-08 110652](https://github.com/Hare-krishnaa/SQL-and-SQOOP-Data-Ingestion-ETL-/assets/103299347/8ff7432f-9ce8-42c4-a21d-f5e642af53f9)


### Problem Solution:

## Environment : Cloud Platform (AWS RDS, AWS EMR and AWS EC2)

1. First set up the AWS RDS having MySql Engine.
2. Then set up the AWS EMR cluster having Hadoop, Sqoop, Hive and Spark tools and start the cluster.
3. Create another EC2 instance (t3.micro) and install the python3 and the Apache Airflow for scheduling.
    
