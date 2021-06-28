# MechaCar Statistical Analysis

## Overview of Project

### Purpose

The purpose of the [MechaCar Statistical Analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript) is to perform statistical analysis on production data for AutosRUs' new prototype, MechaCar, to help the manufacturing team with recent issues. The analysis focuses on predicting MPG and assessing if the suspension coils meet the PSI performance and variance requirements.

## Linear Regression to Predict MPG

To optimize the design of the MechaCar, AutosRUs created [50 prototypes](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCar_mpg.csv) each having a different combination of design specifications over 5 parameters to find the design for optimal fuel efficiency (MPG). To determine the optimal design, a multiple linear regression was [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript) on the 5 parameters.

### Multiple Linear Regression Model

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/mpg_linear_regression_model.png)

As seen in the output of the multiple linear regression above, the equation for mpg for the provided design parameters is `mpg = 6.27*vehicle_length + 0.00125*vehicle_weight + 0.0688*spoiler_angle + 3.55*ground_clearance - 3.41*AWD - 104`.

While this equeation is useful, it is important to understand which of variables provide a non-random amount of variance to the mpg values in the dataset. To do this, a summary of multiple linear regression model was performed [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript).

### Multiple Linear Regression Model Summary

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/mpg_linear_regression_model_summary.png)

In looking at the coefficients summary table above, the variables provide a non-random amount of variance to the mpg values is assessed by looking at the `Pr(>|t|)` column. Variables with `Pr(>|t|)` (or p-values) < 0.05 are considered to have a non-random amount of variance to the mpg values. With that in mind, the `vehicle_length` and `ground_clearance` have a non-random amount of variance to the mpg values. 

The interecept is also statistically significant which means that there may be other variables that explain the variation in mpg, or that scaling of the existing independent variables may be needed to improve the predictive power of the multiple linear regression model.

At the bottom of the summary table we also see statistical information for the overall multiple linear regression model. In assessing the overall p-value we see that it is much smaller than the assumed significance level of 0.05 and that we reject the null hypothesis that the slope of the regression model is 0 and state the slope of the regression is non-zero.

Finally, to determine if the multiple linear regression model predicts mpg of MechaCar prototypes effectively, we assess the R^2 value. The R^2 value of 0.7149 means that 71.49% of the variance in mpg can be explained by our independed variables. While this is better 50/50 guessing, it could be better. Overall, the multiple linear regression model is adequate at predicting mpg of MechaCar prototypes, it could be better and there may be other independent variables that impact mpg that are unaccounted for.

## Summary Statistics on Suspension Coils

Another area in which assistance is needed in determining issues in manufacturing for the MechaCar is with the suspension coils. To assist in this, analysis was [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript) on [suspension coil data](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/Suspension_Coil.csv) collected for multiple production lots.

The analysis performed determed summary statistics for the PSI of coils produced under three batches. The summary statistics seen bellow include Mean PSI, Median PSI, Variance, and Standard Deviation.

### Overall Summary Statistics

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/psi_summary.png)

The design specifications for the suspension coils is for the PSI variance not to exceed 100 PSI. In assessing the Variance column above we see that the PSI variance for all the coils produced on under the three batches is 62.3 PSI and is within specifications.

It is also desired to see if there are any issues with any of the individual batches, so a similar analysis was performed by grouped the PSI value by the Manufacturing Lot.

### Lot Based Summary Statistics

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/psi_lot_summary.png)

In assessing the Variance column above we see that the PSI variance for the coils produced on under Lot1 and Lot2 (0.98 PSI and 7.47 PSI) are within design specification of PSI variance < 100 PSI. Lot3 however is out of specification with a PSI variance of 170.29 PSI and thus there is an issue with the suspension coils produced under Lot3.

## T-Tests on Suspension Coils

The final piece of statistical analysis performed for the MechaCar is in determining if the suspension coils produced were statistically different from the population mean of 15,000 PSI. To make this determination, a  T-Test was [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/MechaCarChallenge.RScript) on both all the coils produced.

### Overall T-Test

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/psi_t_test.png)

Seen in the T-Test above for all the suspension coils, we see that the p-value is 0.06028. While this value is close to our assumed significance level of 0.05, it is not less than 0.05 and thus we fail to reject the null hypothesis that the suspension coils produced were not different from the population mean of 15,000 PSI.

A determination on if the suspension coils produced were statistically different from the population mean of 15,000 PSI for each lot, so a similar T-Test was performed on each Lot subset.

### Lot1 T-Test

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/psi_lot_1_t_test.png)

Seen in the T-Test above for suspension coils from Lot1, we see that the p-value is 1.0. This value is much greater than the significance level of 0.05 and thus we fail to reject the null hypothesis that the suspension coils produced were not different from the population mean of 15,000 PSI. In fact, a p-value of 1.0 means that Lot 1 was the same mean PSI value as the population.

### Lot2 T-Test

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/psi_lot_2_t_test.png)

Seen in the T-Test above for suspension coils from Lot2, we see that the p-value is 0.6072. This value is much greater than the significance level of 0.05 and thus we fail to reject the null hypothesis that the suspension coils produced in Lot2 were not different from the population mean of 15,000 PSI.

### Lot3 T-Test

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/MechaCar_Statistical_Analysis/resources/psi_lot_3_t_test.png)

Seen in the T-Test above for suspension coils from Lot3, we see that the p-value is 0.04168. This value is less than the significance level of 0.05 and thus we reject the null hypothesis that the suspension coils produced in Lot3 were not different from the population mean of 15,000 PSI and state that suspension coils produced under Lot3 were statistically different from the population mean of 15,000 PSI.

## Study Design: MechaCar vs Competition

In addition to the traditional combustion engine prototypes of the MechaCar, AutosRUs has been considering entering the burgeoning Electic Vehicle (EV) market but prototyped electric versions of the MechaCar. They are so excited about the possibilities of the EV market that they have not only created a sedan prototype EV MechaCar but a whole EV MechaCar lineup including a sedan, SUV, and pickup truck. The reason for the full lineup is because AutosRUs see that consumers are exited for EVs, no matter what the primary use (commute, outdoor activities, hauling) of the EV will be. 

The number one concern of consumers about a new EV, is not performance, but range. To be successful in the EV market, AutosRU will have to show that the new line of MechaCar EVs meat the existing EV markets average range throughout the MechaCar EV lineup.

To assist in determining if launching a MechaCar EV lineup will be successful, statistical analysis should be performed to determine if the prototype MechaCar EVs range is greater than the industry average for the EV sedan, SUV, and truck markets.

The Null Hypothesis for determining if the MechaCar EV has better range than industry average will be that the MechaCar EV range is less than or equal to the industry average range for the given vehicle market. The Alternative Hypothesis will be that the MechaCar EV range is greater than the industry average range for the given vehicle market.

To perform this analysis a one sample T-Test should be performed the Range of a number of MechaCar EV prototype produced. There should be three T-Tests, one for each market (sedan, SUV, and Truck) and the prototypes ranges should be compared to the industry average (or population mean) for that market. The reason that a one sample T-Test is used is because we are attempting to determine if there is a statistical difference between the means of the prototype sample dataset and the existing market population dataset.

To perform this analysis, the ranges need to be collected from a random sample of a large number of prototypes for each type of EV (sedan, SUV, Truck). This is needed to meet the T-Test requirements of: numerical and continuous data (range measurements), randomly sampled from population (random prototypes), normally distributed (assumed), sample size is reasonably large (large number of prototypes), and similar variance (assumed).

In performing this statistical anlaysis of AutosRUs' EV MechaCar lineup, we will be able to determine if the EV lineup has better than industry average range which is a good indicator that a new lineup of EVs will be succesful with consumers.

## Summary

In assisting AutosRUs with statistical analysis of their MechaCar prototypes, we helped identify areas where MPG could be improved as well as found issues with a subset of the manufacturing lots of suspension coils. We additionally proposed a possible Study between MechaCar and the Competition to determine if a prototype EV lineup would be sucessful in the market. This information will help AutosRUs make informed decision to help create the best MechaCar and there are many other statistical investigations of the MechaCar prototypes could help AutosRUs improve their MechaCar.
