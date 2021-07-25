# Credit Risk Analysis

## Overview of the Analysis

The purpose of this project is to determine the best machine learning model to predict high risk, or likely to miss payments, credit card loans. Credit card risk is an unbalanced classification problem. As such, a number of different techniques were attempted, resampling and ensemble learning, to determine the best model to predict credit card risk. The credit card risk models were developed using existing credit card [data](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/LoanStats_2019Q1.csv).

## Results

To determine the best model to predict credit card risk, 6 different models were attempted. These models included 4 different resampling techniques and 2 ensemble learning models.

### Resampling

The first 4 models [attempted](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/credit_risk_resampling.ipynb) to predict credit card risk were based on resampling techniques. These 4 included, Random Oversampling, SMOTE Oversampling, Cluster Centroid Undersampling, and SMOTEEN Combination Over and Under Sampling. Below are the accuracy, precision, recall, and f1 scores for all 4 models.

* Random Oversampling

The logistic regression model with [random oversampling](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/credit_risk_resampling.ipynb) had an accuracy of 67.4%, precision of predicting high risk credit of 0.01, recall of 0.74 and an f1 score of 0.02. These values are seen below in the [balanced accuracy score](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/random_oversamping_accuracy.png) and [confusion matrix](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/random_oversamping_matrix.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/random_oversamping_accuracy.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/random_oversamping_matrix.png)

* SMOTE Oversampling

The logistic regression model with [SMOTE oversampling](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/credit_risk_resampling.ipynb) had an accuracy of 66.2%, precision of predicting high risk credit of 0.01, recall of 0.63 and an f1 score of 0.02. These values are seen below in the [balanced accuracy score](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/smote_accuracy.png) and [confusion matrix](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/smote_matrix.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/smote_accuracy.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/smote_matrix.png)

* Cluster Centroid Undersampling

The logistic regression model with [Cluster Centroid undersampling](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/credit_risk_resampling.ipynb) had an accuracy of 54.5%, precision of predicting high risk credit of 0.01, recall of 0.69 and an f1 score of 0.01. These values are seen below in the [balanced accuracy score](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/undersampling_accuracy.png) and [confusion matrix](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/undersampling_matrix.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/undersampling_accuracy.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/undersampling_matrix.png)

* SMOTEEN Combination Over and Under Sampling

The logistic regression model with [Cluster Centroid undersampling](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/credit_risk_resampling.ipynb) had an accuracy of 64.5%, precision of predicting high risk credit of 0.01, recall of 0.72 and an f1 score of 0.02. These values are seen below in the [balanced accuracy score](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/smoteen_accuracy.png) and [confusion matrix](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/smoteen_matrix.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/smoteen_accuracy.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/smoteen_matrix.png)

### Ensemble Learning

The final 2 models [attempted](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/credit_risk_ensemble.ipynb) to predict credit card risk were ensemble learning models. These 2 were a Balanced Random Forest Classifier and an Easy Ensemble AdaBoost Classifier. Below are the accuracy, precision, recall, and f1 scores for both models.

* Balanced Random Forest Classifier

The [Balanced Random Forest Classifier](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/credit_risk_ensemble.ipynb) model had an accuracy of 78.9%, precision of predicting high risk credit of 0.03, recall of 0.70 and an f1 score of 0.06. These values are seen below in the [balanced accuracy score](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/balanced_random_forest_accuracy.png) and [confusion matrix](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/balanced_random_forest_matrix.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/balanced_random_forest_accuracy.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/balanced_random_forest_matrix.png)

* Easy Ensemble AdaBoost Classifier

The [Easy Ensemble AdaBoost Classifier](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/credit_risk_ensemble.ipynb) model had an accuracy of 93.2%, precision of predicting high risk credit of 0.09, recall of 0.92 and an f1 score of 0.16. These values are seen below in the [balanced accuracy score](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/easy_ensamble_accuracy.png) and [confusion matrix](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/easy_ensamble_matrix.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/easy_ensamble_accuracy.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/credit_risk_analysis/analysis/easy_ensamble_matrix.png)

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
