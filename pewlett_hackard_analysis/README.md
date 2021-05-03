# Employee Database Analysis with SQL

## Overview of Project

### Purpose

The purpose of this project is to provide insights into an upcoming increase in retirements, or "silver tsunami", at Pewlett Hackard (PH) by analyzing their employee database. The analysis of employee date of birth and title focuses on providing insights into which positions should be expected to be vacaant shortly. An additional analysis performed to determine the number of employees to could be tapped as a potential mentorship pool based on age.

## Results

To gain insights into the scale and impact of the "silver tsunami", [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/pewlett_hackard_analysis/queries/Employee_Database_challenge.sql) was performed on multiple employee database [files](https://github.com/aricciardelli2/UCB-Projects/tree/main/pewlett_hackard_analysis/data). The following insights are gleaned from the analysis

* Assessing the [retirment_titles](https://github.com/aricciardelli2/UCB-Projects/blob/main/pewlett_hackard_analysis/data/retirement_titles.csv) file, there are a large number of employees that are of retirement age, but many of them have had multiple titles and the most recent title is important in determining the impact of the retirements.
* Assessing the [unique_titles](https://github.com/aricciardelli2/UCB-Projects/blob/main/pewlett_hackard_analysis/data/unique_titles.csv) file we see that there are ~90,000 roles that will need to be filled by retiring employees.
* Assessing the [retiring_titles](https://github.com/aricciardelli2/UCB-Projects/blob/main/pewlett_hackard_analysis/data/retiring_titles.csv) file, there are differing impacts of the "silver tsunami" on different titles. The Senior Engineer role is impacted the most with 29,414 retirements and Manager impacted the least with 2 retirements. The Median impact on the impacted roles is 12,243 retirements.
* Assessing the [mentorship_eligibilty](https://github.com/aricciardelli2/UCB-Projects/blob/main/pewlett_hackard_analysis/data/mentorship_eligibilty.csv) file we see that there a number of employees that are of an age to mentor the next generation of employees at PH, with ~1,500 potential mentors.


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
By querying the resulting [mentorship_eligibilty](https://github.com/aricciardelli2/UCB-Projects/blob/main/pewlett_hackard_analysis/data/mentorship_eligibilty.csv), we see that there are 1,549 retirement-ready employees to mentor the next generation at PH. This number provides a roughly 60:1 ratio of potential mentor to position that will need to be filled. This number seems very large and I would summarize that there are not enough retirement-ready potential mentors to help mentor the next generation at PH.
```
select
count(emp_no)
from mentorship_eligibilty;
```
In summary, by assessing the employee database at Pewlett Hackard, we are able to determine that the "silver tsunami" is real and will have a large impact on the company to the tune of ~90,000 new openings. We are also able to determine that path of developing a mentorship program at PH to help quell the impact of the retirements is possible but will place a large burden in terms of responsibility on a relatively small group of employees.
