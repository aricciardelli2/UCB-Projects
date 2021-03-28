# Stock Analysis with VBA

## Overview of Project

### Purpose

The purpose of this project is to provide insights about stocks from previous years for Steve so he can help his parents make smart investments. The analysis of historical stock performance focuses on stock total daily trade volume and yearly return percentage. This information aims to provide information on which stocks will provide positive returns on investment for Steve's parents in the furture.

## Results

### Analysis of 2017 Stock Performance

To gain insights on when Lousie should launch her Kickstarter campaign, [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/kickstarter-analysis/Kickstarter_Challenge.xlsx) was performed on results of historical Kickstarter campaigns. The quantity of successful, failed, and canceled Kickstarter campaigns filtered to all theater campaigns was collected and grouped by the month at which the campaign started. Assessing the plot of campaign outcomes for theater campaigns based on launch date we see that there is a trend in outcome depending on the month of the launch date. ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/kickstarter-analysis/resources/Theater_Outcomes_vs_Launch.png)

The number of successful campaigns is larger in the Summer months (May - August), with May having the hightest number of successful campaigns. Additionally, the number of successful campaigns is smaller at the end of the year (November - December), with December having the lowest number of successful campaigns. The number of failed and canceled campaigns stays relatively constant throughout the year.

Given the trend in successful campaigns depending on time of year, I recommend that a theater related Kickstarter campaign launch in May or June and avoid launching in November and December.

### Analysis of 2018 Stock Performance

To gain insights on what goal target Lousie should set for her Kickstarter campaign, [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/kickstarter-analysis/Kickstarter_Challenge.xlsx) was performed on results of historical Kickstarter campaigns. The success rate of Kickstarter campaigns filtered to play related theater campaigns was collected and gropued by the target goal range. Assessing the plot of campaign outcomes for play campaigns based on goal amount we see that there is a trend in outcome depending on the target goal amount. ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/kickstarter-analysis/resources/Outcomes_vs_Goals.png)

The percentage of successful campaigns is larger at lower goal totals and lower at larger goal totals. The percentage of failed campains follows the opposite trend with lower percentages at lower goal totals and higher percentages at higher goal totals. There were zero historical canceled play related campaigns.

Goal totals of less than $20,000 have a 50% chance or higher of being successful, with the percent chance growing the closer the goal total is to less than $1,000. Goal totals of $20,000 to $35,000 have a less than 50% chance of being successful, with the chance of success decreasing as the goal total increases from $20,000.

There are only a small number of data points for play campaigns with goal totals between $35,000 and $50,000 so the results in that range are noisy and an assessment is difficult to make for campaign success in that range. For campaigns with goals of $50,000 or more, the percent chance of success is very low at 12.5%.

Given the trend in successful campaigns depending on goal total, I recommend that a play related Kickstarter campaign have a target goal of less than $20,000 with an ideal target goal of less than $1,000.

### Analysis of Subroutine Runtime Performance

To gain insights on what goal target Lousie should set for her Kickstarter campaign, [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/kickstarter-analysis/Kickstarter_Challenge.xlsx) was performed on results of historical Kickstarter campaigns. The success rate of Kickstarter campaigns filtered to play related theater campaigns was collected and gropued by the target goal range. Assessing the plot of campaign outcomes for play campaigns based on goal amount we see that there is a trend in outcome depending on the target goal amount. ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/kickstarter-analysis/resources/Outcomes_vs_Goals.png)

The percentage of successful campaigns is larger at lower goal totals and lower at larger goal totals. The percentage of failed campains follows the opposite trend with lower percentages at lower goal totals and higher percentages at higher goal totals. There were zero historical canceled play related campaigns.

Goal totals of less than $20,000 have a 50% chance or higher of being successful, with the percent chance growing the closer the goal total is to less than $1,000. Goal totals of $20,000 to $35,000 have a less than 50% chance of being successful, with the chance of success decreasing as the goal total increases from $20,000.

There are only a small number of data points for play campaigns with goal totals between $35,000 and $50,000 so the results in that range are noisy and an assessment is difficult to make for campaign success in that range. For campaigns with goals of $50,000 or more, the percent chance of success is very low at 12.5%.

Given the trend in successful campaigns depending on goal total, I recommend that a play related Kickstarter campaign have a target goal of less than $20,000 with an ideal target goal of less than $1,000.

## Summary

- What are the advantages or disadvantages of refactoring code?

Based on the analysis above regarding the Theater_Outcomes_vs_Launch plot, I conclude that Louise should target launching her theater Kickstarter campaign in May and avoid launching in December to be the most successful.

- How do these pros and cons apply to refactoring the original VBA script?

Based on the analysis above regarding the Outcomes_vs_Goals plot, I conclude that Louise should set a financial goal target less than $20,000 with an ideal target of less than $1,000 to be the most successful.
