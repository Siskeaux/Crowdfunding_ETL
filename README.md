# Crowdfunding_ETL
TCC/EdX Data Analytics Bootcamp Project #2, Group #3: "Extract, Transform, Load"
1/26/2023

For the ETL mini project, you will work with a partner to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, you’ll upload the CSV file data into a Postgres database.

Since this is a one-week project, make sure that you have done at least half of your project before the third day of class to stay on track.

Although you and your partner will divide the work, it’s essential to collaborate and communicate while working on different parts of the project. Be sure to check in with your partner regularly and offer support.
Files

Download the starter code and files to help you get started:

Project 2 ETL files

Links to an external site.
Before You Begin

    Create a new repository, named Crowdfunding_ETL, for this project. Do not add this homework to an existing repository.

    Clone the new repository to your computer.

    Rename the ETL_Mini_Project_Starter_Code.ipynb file with your first name initial and last name, for example, ETL_Mini_Project_NRomanoff.ipynb. Then, add this Jupyter notebook file and the Resources folder containing the crowdfunding.xlsx and the contacts.xlsx files to your repository.

    Push the changes to GitHub

Instructions

The instructions for this mini project are divided into the following subsections:

    Create the Category and Subcategory DataFrames
    Create the Campaign DataFrame
    Create the Contacts DataFrame
    Create the Crowdfunding Database

Create the Category and Subcategory DataFrames

    Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

        A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

        A "category" column that contains only the category titles

        The following image shows this category DataFrame:

        category DataFrame

    Export the category DataFrame as category.csv and save it to your GitHub repository.

    Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

        A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories

        A "subcategory" column that contains only the subcategory titles

        The following image shows this subcategory DataFrame:

        subcategory DataFrame

    Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

Create the Campaign DataFrame

    Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

        The "cf_id" column

        The "contact_id" column

        The "company_name" column

        The "blurb" column, renamed to "description"

        The "goal" column, converted to the float data type

        The "pledged" column, converted to the float data type

        The "outcome" column

        The "backers_count" column

        The "country" column

        The "currency" column

        The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

        The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

        The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

        The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

        The following image shows this campaign DataFrame:

        campaign DataFrame

    Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

Create the Contacts DataFrame

    Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

        Option 1: Use Python dictionary methods.

        Option 2: Use regular expressions.

    If you chose Option 1, complete the following steps:
        Import the contacts.xlsx file into a DataFrame.
        Iterate through the DataFrame, converting each row to a dictionary.
        Iterate through each dictionary, doing the following:
            Extract the dictionary values from the keys by using a Python list comprehension.
            Add the values for each row to a new list.
        Create a new DataFrame that contains the extracted data.
        Split each "name" column value into a first and last name, and place each in a new column.
        Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

    If you chose Option 2, complete the following steps:
        Import the contacts.xlsx file into a DataFrame.
        Extract the "contact_id", "name", and "email" columns by using regular expressions.
        Create a new DataFrame with the extracted data.
        Convert the "contact_id" column to the integer type.
        Split each "name" column value into a first and a last name, and place each in a new column.
        Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

    Check that your final DataFrame resembles the one in the following image:

    final contact DataFrame

Create the Crowdfunding Database

    Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBD 

    Links to an external site..

    Use the information from the ERD to create a table schema for each CSV file.

    Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

    Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

    Create a new Postgres database, named crowdfunding_db.

    Using the database schema, create the tables in the correct order to handle the foreign keys.

    Verify the table creation by running a SELECT statement for each table.

    Import each CSV file into its corresponding SQL table.

    Verify that each table has the correct data by running a SELECT statement for each.
    
References

Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.
