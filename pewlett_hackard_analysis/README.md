# Employee Database Analysis with SQL

## Overview of Project

### Purpose

The purpose of this project is to provide insights into an upcoming increase in retirements, or "silver tsunami", at Pewlett Hackard (PH) by analyzing their employee database. The analysis of employee date of birth and title focuses on providing insights into which positions should be expected to be vacaant shortly. An additional analysis performed to determine the number of employees to could be tapped as a potential mentorship pool based on age.

## Results

To gain insights into the scale and impact of the "silver tsunami", [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/pewlett_hackard_analysis/queries/Employee_Database_challenge.sql) was performed on multiple employee database [files](https://github.com/aricciardelli2/UCB-Projects/tree/main/pewlett_hackard_analysis/data). The following insights are gleaned from the analysis

*
*
*
*


## Summary

Based on the results gleaned from the analysis, we address the two high level operation questions that are important to PH.

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
By querying the resulting [retiring_titles](https://github.com/aricciardelli2/UCB-Projects/blob/main/pewlett_hackard_analysis/data/retiring_titles.csv) table using the following query we see that there will be 90,398 roles that will need to be filled.
```
select
sum("count")
from retiring_titles;
```

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
By querying the resulting mentorship_eligibilty, we see that there are 1,549 retirement-ready employees to mentor the next generation at PH. This number provides a roughly 60:1 ratio of potential mentor to position that will need to be filled. This number seems very large and I would summarize that there are not enough retirement-ready potential mentors to help mentor the next generation at PH.
```
select
count(emp_no)
from mentorship_eligibilty;
```
