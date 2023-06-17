from datetime import datetime, timedelta
from airflow import DAG
from airflow.contrib.operators.ssh_operator import SSHOperator


default_args = {
    'owner': 'Aman Yadav',
    'start_date': datetime(2023, 6, 17),
    'retries': 5,
    'retry_delay': timedelta(minutes=5)
    # Add any other desired default arguments
}

dag = DAG('SQL-SQOOP-DATA-INGESTION-ETL-Final', default_args=default_args, schedule_interval='*/5 * * * *')

# Define your Sqoop import command here

sqoop_command_Users = "sqoop job --exec sqoop_job_Users"
    
sqoop_command_Membership = "sqoop job --exec sqoop_job_Membership"
    
sqoop_command_Buyers = "sqoop job --exec sqoop_job_Buyers"
    
sqoop_command_Department = "sqoop job --exec sqoop_job_Department"
    
sqoop_command_Product = "sqoop job --exec sqoop_job_Product"
    
sqoop_command_Reviews = "sqoop job --exec sqoop_job_Reviews"
    
sqoop_command_Discount = "sqoop job --exec sqoop_job_Discount"

sqoop_command_Offer = "sqoop job --exec sqoop_job_Offer"
    
sqoop_command_ShoppingCart = "sqoop job --exec sqoop_job_ShoppingCart"
    
sqoop_command_Wishlist = "sqoop job --exec sqoop_job_Wishlist"

sqoop_command_Sellers = "sqoop job --exec sqoop_job_Sellers"

sqoop_command_Shipper = "sqoop job --exec sqoop_job_Shipper"
    
sqoop_command_Orders = "sqoop job --exec sqoop_job_Orders"
    
sqoop_command_Payment = "sqoop job --exec sqoop_job_Payment"
    
sqoop_command_Payment_CreditCard = "sqoop job --exec sqoop_job_Payment_CreditCard"

sqoop_command_Address = "sqoop job --exec sqoop_job_Address"
    
sqoop_command_Orders_has_Product = "sqoop job --exec sqoop_job_Orders_has_Product"
    
sqoop_command_Payment_Giftcard = "sqoop job --exec sqoop_job_Payment_Giftcard"

    
# Create all the SSHOperator to execute the Sqoop commands mention above: 

sqoop_import_1 = SSHOperator(
        task_id='sqoop_Import_Users',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Users,
        dag=dag
    )
    

sqoop_import_2 = SSHOperator(
        task_id='sqoop_Import_Membership',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Membership,
        dag=dag
    )
    
sqoop_import_3 = SSHOperator(
        task_id='sqoop_Import_Buyers',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Buyers,
        dag=dag
    )

sqoop_import_4 = SSHOperator(
        task_id='sqoop_Import_Department',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Department,
        dag=dag
    )

sqoop_import_5 = SSHOperator(
        task_id='sqoop_Import_Product',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Product,
        dag=dag
    )
    
sqoop_import_6 = SSHOperator(
        task_id='sqoop_Import_Reviews',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Reviews,
        dag=dag
    )
    
    
sqoop_import_7 = SSHOperator(
        task_id='sqoop_Import_Discount',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Discount,
        dag=dag
    )
    
    
sqoop_import_8 = SSHOperator(
        task_id='sqoop_Import_Offer',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Offer,
        dag=dag
    )
    
sqoop_import_9 = SSHOperator(
        task_id='sqoop_Import_ShoppingCart',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_ShoppingCart,
        dag=dag
    )
    
    
sqoop_import_10 = SSHOperator(
        task_id='sqoop_Import_Wishlist',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Wishlist,
        dag=dag
    )

sqoop_import_11 = SSHOperator(
        task_id='sqoop_Import_Sellers',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Sellers,
        dag=dag
    )

sqoop_import_12 = SSHOperator(
        task_id='sqoop_Import_Shipper',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Shipper,
        dag=dag
    )

sqoop_import_13 = SSHOperator(
        task_id='sqoop_Import_Orders',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Orders,
        dag=dag
    )

sqoop_import_14 = SSHOperator(
        task_id='sqoop_Import_Payment',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Payment,
        dag=dag
    )
    
sqoop_import_15 = SSHOperator(
        task_id='sqoop_Import_Payment_CreditCard',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Payment_CreditCard,
        dag=dag
    )
    
    
sqoop_import_16 = SSHOperator(
        task_id='sqoop_Import_Address',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Address,
        dag=dag
    )
    
sqoop_import_17 = SSHOperator(
        task_id='sqoop_Import_Orders_has_Product',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Orders_has_Product,
        dag=dag
    )
    
sqoop_import_18 = SSHOperator(
        task_id='sqoop_Import_Payment_Giftcard',
        ssh_conn_id='emr-airflow',
        command=sqoop_command_Payment_Giftcard,
        dag=dag
    )


# task order

sqoop_import_1 >> sqoop_import_2 >> sqoop_import_3 >> sqoop_import_4 >> sqoop_import_5 >> sqoop_import_6 >> sqoop_import_7 >> sqoop_import_8 >> sqoop_import_9 >> sqoop_import_10 >> sqoop_import_11 >> sqoop_import_12 >> sqoop_import_13 >> sqoop_import_14 >> sqoop_import_15 >> sqoop_import_16 >> sqoop_import_17 >> sqoop_import_18