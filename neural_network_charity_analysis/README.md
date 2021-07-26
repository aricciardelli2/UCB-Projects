# Neural Network Charity Analysis

## Overview of the Analysis

The purpose of this project is use Neural Network models to predict if companies will be successful if donated to by Alphabet Soup. The goal is to use historical [charity data](https://github.com/aricciardelli2/UCB-Projects/tree/main/neural_network_charity_analysis/Resources) to develop a Neural Network that has an accuracy of over 75%. As there are many different ways to build a Neural Network, multiple different Neural Networks were built in order to optimize the Neural Network.

## Results

In order to build the Neural Network to predict if a donation will be successful, two main steps were conducted; Data Preprocessing and Compiling, Training, and Evaluating the Model.

### Data Preprocessing

The first step in 

## Summary

After using 6 different models, 4 logistic regression models with resampling and 2 ensemble learning models, the following accuracy, precision, recall, and f1 values were determined for each model.

| Modle                                            | Accuracy    | Precision     | Recall  | f1    |
| :---                                             |    :----:   |    :----:     |:----:   |  ---: |
| Random Oversampling                              | 67.4%       | 0.01          | 0.74    | 0.02  |
| SMOTE Oversampling                               | 66.2%       | 0.01          | 0.63    | 0.02  |
| Cluster Centroid Undersampling                   | 54.5%       | 0.01          | 0.69    | 0.01  |
| SMOTEEN Combination Over and Under Sampling      | 64.5%       | 0.01          | 0.72    | 0.02  |
| Balanced Random Forest Classifier                | 78.9%       | 0.03          | 0.70    | 0.06  |
| Easy Ensemble AdaBoost Classifier                | 93.2%       | 0.09          | 0.92    | 0.16  |

Based on the above results we recommend using a different model for predicting credit card risk. The 4 resampling techniques did not produce recalls greater than 0.01 or f1 scores greater than 0.02. The ensemble learning models performed better but still did not have precision values for predicting high-risk credit greater than 0.09 or f1 scores greater than 0.16. While ensemble learning models did prove to be performing better than resampling techniques, more work is needed to develop a usable model in predicting high-risk credit.
