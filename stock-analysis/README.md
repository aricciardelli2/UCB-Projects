# Stock Analysis with VBA

## Overview of Project

### Purpose

The purpose of this project is to provide insights about stocks from previous years for Steve so he can help his parents make smart investments. The analysis of historical stock performance focuses on stock total daily trade volume and yearly return percentage. This information aims to provide information on which stocks will provide positive returns on investment for Steve's parents in the furture.

## Results

### Analysis of 2017 Stock Performance

To gain insights on which stocks Steve should advise his parents to invest in, [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/stock-analysis/VBA_Challenge.xlsm) was performed on results of historical stock performance in 2017. The total daily volume of trades as well as the anual return for 12 targeted stocks was calculated to determine high performing stocks for 2017. Assessing the table of stock performance from 2017 we see that many of the targeted stocks performed well. ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/stock-analysis/resources/2017_stock_performance.png)

Every stock besides **TERP** had a positive return and point to a successful stock. The total daily volume is also important in gauging whether the stocks performance truley represented the stocks value with the higher the daily volume, the more representitive the return is of the stocks value. Stocks **FLSR** had a high return (101.3%) and high total daily volume (684,181,400) and would be the stock that I would recommend from the 2017 results. Steve's parents targeted stock **DQ**, had a high return but lower total daily volume. Due to the low total daily volume in 2017, I would not recommend investing in **DQ** without results from more trades.

### Analysis of 2018 Stock Performance

To gain insights on which stocks Steve should advise his parents to invest in, [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/stock-analysis/VBA_Challenge.xlsm) was performed on results of historical stock performance in 2018. The total daily volume of trades as well as the anual return for 12 targeted stocks was calculated to determine high performing stocks for 2018. Assessing the table of stock performance from 2018 we see that many of the targeted stocks performed well. ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/stock-analysis/resources/2018_stock_performance.png)

Every stock besides **ENPH** and **RUN** had a negative return. Both **ENPH** and **RUN** had a high return (+80%) and high total daily volume (+500,000,000). Due to both of these factors, I would recommend both of these stocks from the 2018 results. Steve's parents targeted stock **DQ**, had a negative return and a moderate total daily volume. Due to the moderate daily volume pointing towards the negative return being representative of the stocks true value, I would not recommend investing in **DQ**.

### Analysis of Stock Performance over 2017 and 2018

Assessing the results from both 2017 and 2018 above, only **ENPH** and **RUN** had a positive return over both 2017 and 2018 and both also had a high total daily volume over both years. This consistant success means that I would recommend to Steve's parents that they invest in both of these stocks. From the low volume in 2017 and negative return in 2018 of their prefered stock **DQ**, I do not recommend that Steve's parents invest in **DQ**.

### Analysis of Subroutine Runtime Performance

The code that was used to deliver these results was initially developed and then refactored to run faster. The original code had an average runtime for 2017 and 2018 of 0.53125 seconds as seen in the images below. ![](https://github.com/aricciardelli2/UCB-Projects/blob/main/stock-analysis/resources/2017_stock_performance.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/stock-analysis/resources/2017_stock_performance.png)

The refactored code now has an average runtime for 2017 and 2018 of 0.1074219 seconds as seen in the images below.
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/stock-analysis/resources/2017_stock_performance.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/stock-analysis/resources/2017_stock_performance.png)

The refactoring of the code used to determine the values of interest for the targeted stocks for Steve to help his parents invest in successful stocks lead to an improvment of runtime performance of 79.8%

## Summary

- What are the advantages or disadvantages of refactoring code?

The purpose of refactoring code is to not change functionality, but improve its performance (runtime, memory allocation, etc.) and make the code more readible. The benefits of theses are two fold. First this leads to improvements when using the code such as less waiting time for the code to run. Second, more readible code makes it easier to understand what is happening when something goes wrong / part of the code needs to be borrowed, as well as making it easier for other users to understand what the code can and can not do. 

The disadvantage of refactoring is changing code that already works. This not only means spending time on a piece of code that already works that could be spent developing code / functionality that does not yet exist, but also the possibility of breaking code that already works.

- How do these pros and cons apply to refactoring the original VBA script?

In the process of refactoring the original VBA script, the runtime decreased by 79.8% which was a great benefit. I also checked the output in comparison to the original code and verified that the new refactored code did not break what was already working.
