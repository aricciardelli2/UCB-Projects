# Surfs Up Weather Analysis

## Overview of Project

### Purpose

The purpose of the Surfs Up Weather Analysis is to provide insights for opening a surf and ice cream shop in Hawaii based on historical weather. The weather analysis focuses on temperature readings from different stations around the island of Oahu. The weather analysis aims to determine if the weather in Oahu is condusive for opening a successful surf and ice cream shop.

## Results

The weather analysis uses a SQLite database provided by the customer and queries the temperature data from the months of June and December to determine if the weather is suitable for opening a successful surf and ice cream shop.

### June Temperature Analysis
The data sources needed for the Move Ratings ETL pipeline are the [wikipedia-movies](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/resources/wikipedia-movies.json), [movies_metadata](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/resources/movies_metadata.csv), and [ratings](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/resources/ratings.csv). The first step in the ETL pipeline is to extract the data and create dataframes from each data source to be used in the next steps in the pipeline. The extraction is seen in the [notebook](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/ETL_function_test.ipynb).

### December Temperature Analysis
Once the data has been extracted, it needs to be transformed in to a useable form to load into a data base. This transformation step can consist of multiple parts and in this case consists of cleaning and combining the data. The transformation step is seen in two notebooks, [one](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/ETL_clean_wiki_movies.ipynb) for cleaning the wikipedia source, and [one](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/ETL_clean_kaggle_data.ipynb) for cleaning the kaggle source and merging the datasources.

### Infering Year Round Acceptable Weather
Once the data has been transformed, it is ready to loaded into a SQL data base. This step consists of connecting to a SQL database and then loading to the database. The load step is seen in the [notebook](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/ETL_create_database.ipynb).
The resulting SQL tables for the hackathon consist of 2 tables, a movies table and a ratings table. The movies table consists of 6,052 rows seen in the images below.
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/results/movies_query.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/results/movies_query_full.png)

The ratings table consists of 26,024,289 rows seen in the images below.
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/results/ratings_query.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/movies-etl/results/ratings_query_full.png)

## Summary

The successful creating of an ETL pipeline allows for data from disperate data sources to be extracted, transformed and then loaded into a database that is now available for the Hackathon.
