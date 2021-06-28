# MechaCar Statistical Analysis

## Overview of Project

### Purpose

The purpose of the [MechaCar Statistical Analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript) is to perform statistical analysis on production data for AutosRUs' new prototype, MechaCar, to help the manufacturing team with recent issues. The analysis focuses on predicting MPG and assessing if the suspension coils meet the PSI performance and variance requirements.

## Linear Regression to Predict MPG

To optimize the design of the MechaCar, AutosRUs created [50 prototypes](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCar_mpg.csv) each having a different combination of design specifications over 5 parameters to find the design for optimal fuel efficiency (MPG). To determine the optimal design, a multiple linear regression was [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript) on the 5 parameters.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/mpg_linear_regression_model.png)

As seen in the output of the multiple linear regression above, the equation for mpg for the provided design parameters is `mpg = 6.27*vehicle_length + 0.00125*vehicle_weight + 0.0688*spoiler_angle + 3.55*ground_clearance - 3.41*AWD - 104`.

While this equeation is useful, it is important to understand which of 

## Summary Statistics on Suspension Coils


## T-Tests on Suspension Coils


## Study Design: MechaCar vs Competition


## Summary

The [Bike Share Tableau Story](https://public.tableau.com/app/profile/al.ricciardelli/viz/BikeRentalStory/BikeRentalStory) provides many useful pieces of data to the potential investors on demand, customer base, maintanance, and turnover of the bikes. Two other data visualizations that would be useful would be seeing demand (total trips) according to weather as well as demand (total trips) aroudn holidays / non-holiday weekends.
