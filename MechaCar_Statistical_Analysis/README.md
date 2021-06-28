# MechaCar Statistical Analysis

## Overview of Project

### Purpose

The purpose of the [MechaCar Statistical Analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript) is to perform statistical analysis on production data for AutosRUs' new prototype, MechaCar, to help the manufacturing team with recent issues. The analysis focuses on predicting MPG and assessing if the suspension coils meet the PSI performance and variance requirements.

## Linear Regression to Predict MPG

To optimize the design of the MechaCar, AutosRUs created [50 prototypes](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCar_mpg.csv) each having a different combination of design specifications over 5 parameters to find the design for optimal fuel efficiency (MPG). To determine the optimal design, a multiple linear regression was [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript) on the 5 parameters.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/mpg_linear_regression_model.png)

As seen in the output of the multiple linear regression above, the equation for mpg for the provided design parameters is `mpg = 6.27*vehicle_length + 0.00125*vehicle_weight + 0.0688*spoiler_angle + 3.55*ground_clearance - 3.41*AWD - 104`.

While this equeation is useful, it is important to understand which of variables provide a non-random amount of variance to the mpg values in the dataset. To do this, a summary of multiple linear regression model was performed [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/mpg_linear_regression_model_summary.png)

In looking at the coefficients summary table above, the variables provide a non-random amount of variance to the mpg values is assessed by looking at the `Pr(>|t|)` column. Variables with `Pr(>|t|)` (or p-values) < 0.05 are considered to have a non-random amount of variance to the mpg values. With that in mind, the `vehicle_length` and `ground_clearance` have a non-random amount of variance to the mpg values. 

The interecept is also statistically significant which means that there may be other variables that explain the variation in mpg, or that scaling of the existing independent variables may be needed to improve the predictive power of the multiple linear regression model.

At the bottom of the summary table we also see statistical information for the overall multiple linear regression model. In assessing the overall p-value we see that it is much smaller than the assumed significance level of 0.05 and that we reject the null hypothesis that the slope of the regression model is 0 and state the slope of the regression is non-zero.

Finally, to determine if the multiple linear regression model predicts mpg of MechaCar prototypes effectively, we assess the R^2 value. The R^2 value of 0.7149 means that 71.49% of the variance in mpg can be explained by our independed variables. While this is better 50/50 guessing, it could be better. Overall, the multiple linear regression model is adequate at predicting mpg of MechaCar prototypes, it could be better and there may be other independent variables that impact mpg that are unaccounted for.

## Summary Statistics on Suspension Coils


## T-Tests on Suspension Coils


## Study Design: MechaCar vs Competition


## Summary

The [Bike Share Tableau Story](https://public.tableau.com/app/profile/al.ricciardelli/viz/BikeRentalStory/BikeRentalStory) provides many useful pieces of data to the potential investors on demand, customer base, maintanance, and turnover of the bikes. Two other data visualizations that would be useful would be seeing demand (total trips) according to weather as well as demand (total trips) aroudn holidays / non-holiday weekends.
