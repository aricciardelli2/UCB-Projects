# PyBer Analysis

## Overview of Project

### Purpose

The purpose of this project is to provide insights into PyBer operational differences in different types of cities. The analysis rides, fares, and drivers is intended to determine differences between Urban, Suburban, and Rural cities. This information aims to provide information to the PyBer CEO on operational changes that can be made to improve in all three types of cities..

## Results

To gain insights on PyBer differences in different types of cities, [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/PyBer_Analysis/PyBer_Challenge.ipynb) was performed on [city](https://github.com/aricciardelli2/UCB-Projects/blob/main/PyBer_Analysis/resources/city_data.csv) and [ride](https://github.com/aricciardelli2/UCB-Projects/blob/main/PyBer_Analysis/resources/ride_data.csv) data provided by PyBer. After performing the analysis on the ride, fare, and driver information, the following results are available.

### Rides, Fare, and Driver Info by City Type

The results from the PyBer rides, fare and driver data grouped by city type show a distinct difference in key results depending on if the city was Urban, Suburban, or Rural as seen in the following table.
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/PyBer_Analysis/analysis/pyber_summary_df.png)
The results show that the total rides, drivers and fares are highest in Urban cities, followed by Suburban, and followed last by Rural cities. The opposite is true however for fare per ride and fare per driver results. The average fare per ride and per driver are both highest for Rural cities, follwed by Suburban cities, and follwed last by Urban cities.

### Fares by City Type over Time

When assessing total fare by city type over time, the results show concistant differences between Urban, Suburban, and Rural results as seen in the following plot. 
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/PyBer_Analysis/analysis/PyBer_fare_summary.png)
Comparing the total fare amounts by city type by week from 1/1/2019 to 4/29/2019, it is clear that the overall total fare results ranking Urban, Suburban and Rural cities is consistant every week. There additionally is minimal variance in the fare total within each city type week over week. Overall, the plot above points to little dependence on the week of the year from January to the end of April on PyBers rides, fares, and driver results.

## Summary

In assessing the rides, fares, and driver results as grouped by city type, I provide 3 recommendations to the CEO.
* As Rural cities have the highest average fare per ride, but also the lowest total number of rides, I recommend targeting a higher ride total in Rural area. If PyBer is able to increase the total rides in Rural cities, possibly through an external marketing campaigns, these rides will be more profitable to PyBer than in Urban or Suburban cities.
* As Rural cities have the highest average fare per driver but also the lowest total number of drivers, I recommend targeting shifting some of the Urban drivers to Rural areas. If PyBer is able to increase the total drivers in Rural cities, possibly through internal outreach and information to drivers, these drivers will be make more money and be more likely to stay driving with PyBer instead of leaving to a competitor.
* As the total fare does not substantially change over time in any of the three city types, I recommend not spending money on targeting time of year plans and instead focus on plans that apply at any time of the year.
These are three recommendations that I believe, based on the analysis and results provided, will help PyBer succeed in the competitive Ride Share industry.
