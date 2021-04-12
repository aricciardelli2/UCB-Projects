# School Analysis with Pandas

## Overview of Project

### Purpose

The purpose of this project is to provide insights into potential academic dishonesty among 9th graders at Thomas High School. The analysis of math and reading grades focuses on the grades of the other High School classes at Thomas High School and how aggregate grade performace among schools grouped by spending, size, and type are impacted by removing the suspect grades. This information aims to provide information to the school board as to the validity of the academic dishonesty suspicions.

## Results

To gain insights potential academic dishonesty among 9th graders at Thomas High School, [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/PyCitySchools_Challenge.ipynb) was performed on [school](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/schools_complete.csv) and [student](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/students_complete.csv) information across the whole district. After running the analysis both with and without the suspect class from Thomas High Scool, the following comparative results are available.

* Impact on District Summary Results

Comparing the summary of the district level results in the dataframe images below we see that the grades [without](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/district_summary.png) the suspect grades included (top) change a minimal amount vs. [with](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/district_summary_original.png) the suspect grades (bottom). This points to the 9th grade grades at Thomas High School not being suspiciously different than the grades at the district level.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/district_summary.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/district_summary_original.png)

* Impact on School Summary Results

Comparing the summary of the school level results in the dataframe images below we see that the grades at Thomas High School [without](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/school_summary.png) the suspect grades included (top) change a minimal amount vs. [with](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/school_summary_original.png) the suspect grades (bottom). This points to the 9th grade grades at Thomas High School not being suspiciously different than the grades at the school level.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/school_summary.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/school_summary_original.png)

* Impact on Thomas High School Performance Relative to Other Schools in the District

Comparing the summary of the school level results in the dataframe images below we see that the overall passing percentage at Thomas High School [without](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/school_summary_top.png) the suspect grades included (top) ranks second among all schools in the district and so does the overall passing percentage at Thomas High School [with](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/school_summary_top_original.png) the suspect grades (bottom). This points to the 9th grade grades at Thomas High School not impacting the schools ranking within the distict.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/school_summary_top.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/school_summary_top_original.png)

* Impact on Per Grade Analysis

  * Impact on Math and Reading Scores by Grade

  Comparing the math grades at a class level [without](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/math_scores_by_grade.png) the suspect grades included (top) vs. [with](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/math_scores_by_grade_original.png) the suspect grades (bottom) we see that 9th grade average math grade is not that different than the average math grade in the 10th, 11th, or 12th grade. This points to the 9th grade math grades at Thomas High School not being suspiciously different than the other grades at the class level.
  
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/math_scores_by_grade.png)
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/math_scores_by_grade_original.png)
  
  Comparing the reading grades at a class level [without](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/reading_scores_by_grade.png) the suspect grades included (top) vs. [with](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/reading_scores_by_grade_original.png) the suspect grades (bottom) we see that 9th grade average reading grade is not that different than the average reading grade in the 10th, 11th, or 12th grade. This points to the 9th grade reading grades at Thomas High School not being suspiciously different than the other grades at the class level.
  
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/reading_scores_by_grade.png)
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/reading_scores_by_grade_original.png)

  * Impact on Scores by School Spending

  Comparing the grades when binned by spending per student [without](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_spending.png) the suspect grades included (top) vs. [with](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_spending_original.png) the suspect grades (bottom) we see no change in any of the values. This points to the 9th grade math grades at Thomas High School not being suspiciously different in terms of the spending per student at Thomas High School.
  
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_spending.png)
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_spending_original.png)

  * Impact on Scores by School Size

  Comparing the grades when binned by school size [without](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_size.png) the suspect grades included (top) vs. [with](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_size_original.png) the suspect grades (bottom) we see no change in any of the values. This points to the 9th grade math grades at Thomas High School not being suspiciously different in terms of the size of Thomas High School.
  
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_size.png)
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_size_original.png)

  * Impact on Scores by School Type

  Comparing the grades when binned by school type [without](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_type.png) the suspect grades included (top) vs. [with](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_type_original.png) the suspect grades (bottom) we see no change in any of the values. This points to the 9th grade math grades at Thomas High School not being suspiciously different in terms of the Thomas High School school type.
  
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_type.png)
  ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/school_district_analysis/resources/scores_by_type_original.png)

## Summary

In assessing the grades in the school district when aggregated in multiple different ways above, we see that there is no meaning full change when including or not including the suspect 9th grade Thomas High School grades. Given this information, I would recommend that there is no academic dishonesty among 9th graders at Thomas High School.
