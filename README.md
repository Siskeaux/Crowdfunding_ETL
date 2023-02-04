Mini_ETL 
Contributers: 
William Thomer, Valerie Grannemann-Barber, Steve Reed, Levi McLeod
Levi and Valerie worked on the Jupyter Notebook both separately and combined them together; William and Steve contributed on the Jupyter notebook while going over the final draft.
Steve created the ERD after the Jupyter notebook was completed and combined.  Along with William, Levi, and Valerie's input once created.  The SQL code was created by Steve. 
William, Valerie, and Levi helped by going over the code, looking up correct coding to be used and completed this assignment as a team.


At least two Sources of Data:
contacts.xlsx
crowdfunding.xlsx
subcategory.csv


Final Production:
ETL_Mini_Project.ipynb
crowdfunding_db_schema.sql

Findings:
Libraries used: pandas, numpy, json
PgAdmin in SQL relational database
ERD

Extract:
contacts.csv
category.csv
campaign.csv

Transform:
Dataframes were created, columns "category/subcategory" were separated into their own columns and lists were formed and arranged into category_ids with the category, also subcategory_ids with the subcategory.
The dataframes were exported into new csv files. Some columns were renamed. The columns were cleaned and merged and output into a csv file, and excel spreadsheet. 
A contacts dataframe was created and columns were made for "first_name" and "last_name", then exported into a csv file.  The csv files were used to create an ERD and SQL code.


Load: Final Database
An ERD was used to create a visual table. It explains the primary keys used and foreign keys used.  It shows how the columns are connected.
A schema in SQL and PgAdmin was used to interact in both local and remote servers. 

