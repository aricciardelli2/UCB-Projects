# Election Analysis

## Overview of Project

The purpose of this project is to provide analysis of the election results from a recent congressional election to the election commission. The analysis of the election is performed to determine the total votes from the election, candidate and county based election totals, and the winner of the election along with the county with the highest turnout. historical stock performance focuses on stock total daily trade volume and yearly return percentage. The election commission will use the information provided to report on the results of the election.

## Election-Audit Results

To analyze the results of the recent election, [python](https://github.com/aricciardelli2/UCB-Projects/blob/main/election_analysis/PyPoll_Challenge.py) code was developed to read the [results](https://github.com/aricciardelli2/UCB-Projects/blob/main/election_analysis/resources/election_results.csv) from the election and output the results of the [election analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/election_analysis/analysis/election_analysis.txt).

Based on the results of the election analysis, the results from the election are as follows:

* Total Votes: 369,711

County Votes:
* Jefferson: 10.5% (38,855)
* Denver: 82.8% (306,055)
* Arapahoe: 6.7% (24,801)
* Largest County Turnout: Denver

Candidate Votes:
* Charles Casper Stockham: 23.0% (85,213)
* Diana DeGette: 73.8% (272,892)
* Raymon Anthony Doane: 3.1% (11,606)
* Winning Candidate: Diana DeGette: 73.8% (272,892)

In summary, Diana DeGette won the congressional election with 272,892 votes for 73.8% of the 369,711 total votes and Denver County had the highest voter turnout. This information can also be found in the [election analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/election_analysis/analysis/election_analysis.txt), a screenshot of which is below.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/election_analysis/resources/election_results.png)

## Election-Audit Summary

The election results analysis python script was successfully able to determine the results of the election, finding the total votes, votes for each candidate and county, and the winner of the election along with the county with the highest turnout. While this python script was able to handle analyzing the results for the requested election, the script can be expanded to handle any election. This script can be expanded to handle not only multiple diffrent elections from within Colorado, but also all elections throughout the country. Do expand the functionality, two additional columns will be required in the input election results and some minor changes to the analysis python script.

The additional columns required are a State column as well as an election ID column. The election ID column will be used to determine for which particular election the vote was case for and the State column will be used to collect all election results for a given State.

With this additional information, changes will be needed to be made to the python code to collect votes based on these additional pieces of information. Changes include adding additional if statements and conditionals similar to those used for collecting the county and candidates. So that the results can be provided for any requested election or collection of elections from a given state.
