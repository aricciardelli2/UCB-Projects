# Amazon Reviews Analysis

## Overview of the Analysis

The purpose of this project is to use historical Amazon Review [data](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt) to determine if paid Vine reviews bias towards more positive reviews than unpaid non-Vine reviews. For this analysis, the historical Video Game review [data](https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Video_Games_v1_00.tsv.gz) was used.

## Results

To assess if paid Vine reviews impact review scores, the percentage of 5-Star reviews for both Vine and Non-Vine reviews was determined. To arrive at these values, ETL was performed on the Video Game review [data](https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Video_Games_v1_00.tsv.gz) to an AWS RDS using the AWS [notebook](https://github.com/aricciardelli2/UCB-Projects/blob/main/amazon_vine_analysis/Amazon_Reviews_ETL.ipynb) in Google Colab. The database in AWS is a Postgres Database and the tables created follow the [schema](https://github.com/aricciardelli2/UCB-Projects/blob/main/amazon_vine_analysis/challenge_schema.sql) provided.

After the Video Game review data was uploaded to AWS, the [Vine table](https://github.com/aricciardelli2/UCB-Projects/blob/main/amazon_vine_analysis/resources/vine_table.csv) was downloaded as a CSV. The Vine and non-Vine review stats were then calculated using the Vine [notebook](https://github.com/aricciardelli2/UCB-Projects/blob/main/amazon_vine_analysis/Vine_Review_Analysis.ipynb).

### Vine and Non-Vine Stats

From the Vine [notebook](https://github.com/aricciardelli2/UCB-Projects/blob/main/amazon_vine_analysis/Vine_Review_Analysis.ipynb) analysis, the Vine and non-Vine stats were calculated.

**Vine Stats**

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/amazon_vine_analysis/analysis/paid_stats.png)

**Non-Vine Stats**

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/amazon_vine_analysis/analysis/unpaid_stats.png)

#### Number of Vine and Non-Vine Reviews

From the stats listed above, the Vine (Paid) total reviews were 94 and non-Vine (Unpaid) were 40,471. This number alone does not point to a bias in review score but does show that there is a large difference in the number of Vine and non-Vine reviews.

#### Number of Vine and Non-Vine Five-Star Reviews

From the stats listed above, the Vine (Paid) total 5-Star reviews were 48 and non-Vine (Unpaid) were 15,663. This number alone does not point to a bias in review score but does show that there is a large difference in the number of Vine and non-Vine 5-Star reviews.

#### Percentage of Vine and Non-Vine Five-Star Reviews

From the stats listed above, the Vine (Paid) total reviews were 51.1% and non-Vine (Unpaid) were 38.7%. As these numbers are both normalized for the number of reviews in both the Vine and Non-Vine categories, this information can be used to determine if there is a bias towards positive reviews from the paid Vine program. As the percentage of 5-Star reviews is 13.4% higher for the Vine reviews vs. Non-Vine reviews, there appears to be a bias towards positive reviews from the paid Vine program.

## Summary

From the analysis above, the percentage of 5-Star reviews is 13.4% higher for the Vine reviews vs. Non-Vine reviews, there appears to be a bias towards positive reviews from the paid Vine program. The total number of reviews being much lower in the Vine program vs. the non-Vine program it could be argued that the 5-Star percentage gap is due to the sample size difference. However, as there are nearly 100 reviews in the Vine program and the percentage difference is fairly large at ~13%, we argue that this percentage difference is genuine.

Additional analysis that can be performed to gain more insights into what drives a positive 5-Star review is to perform a similar analysis based on if the review was for a Verified Purchase or not.
