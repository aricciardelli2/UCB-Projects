# Neural Network Charity Analysis

## Overview of the Analysis

The purpose of this project is use Neural Network models to predict if companies will be successful if donated to by Alphabet Soup. The goal is to use historical [charity data](https://github.com/aricciardelli2/UCB-Projects/tree/main/neural_network_charity_analysis/Resources) to develop a Neural Network that has an accuracy of over 75%. As there are many different ways to build a Neural Network, multiple different Neural Networks were built in order to optimize the Neural Network.

## Results

In order to build the Neural Network to predict if a donation will be successful, two main steps were conducted; Data Preprocessing and Compiling, Training, and Evaluating the Model.

### Data Preprocessing

The first step in building the neural network is data processing. For this data set, 4 data processing steps were [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb); removing non-beneficial columns, binning columns, encoding categorical columns, and splitting the feature and target columns.

* Binning columns

For columns with a large nubmer of unique values, these values can be binned to reduce the complexity of the column. For this dataset, two categorical columns, `APPLICATION_TYPE` and `CLASSIFICATION`, were [determined](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) to have more than 10 [unique values](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/number_unique.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/number_unique.png)

Note: The `ASK_AMT` column is a continuous variable column and a large number of unique values. Therefor we are not going to bin that column.

The `APPLICATION_TYPE` and `CLASSIFICATION` were then [binned](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) so that values with relatively low frequency are grouped into an `OTHER` value. The [APPLICATION_TYPE](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/application_type_binning.png) and [CLASSIFICATION](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/classification_binning.png) binning is seen below.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/application_type_binning.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/classification_binning.png)

* Encoding categorical columns

Neural networks can not handle categorical data. To categorical columns that do provide value to the model, we must encode them into multiple binary columns, one for each unique value of the categorical column. To do this, first, the categorical columns were [determined](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/categorical_columns.png)

After determing the categorical columns, the columns were [encoded](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/encoded_columns.png)

* Removing non-beneficial columns

For the neural network to be as successful as possible, columns that do not add any meaningful information should be removed so that they are not included in the target or feature columns. For this dataset, the `EIN` and `NAME` columns are identifying numbers and name of the company and don't have an impact on if the donation will be successful. Therefor, they were [dropped](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) from the dataframe before extracting the target and feature columns. This can be seen [below](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/removed_columns.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/removed_columns.png)

* Determining the Target Column

The target column is the column the neural network is attempting to predict. For this neural network, the goal is to predict if the donation will be succesful. Thus the target column is `IS_SUCCESSFUL`. The [splitting](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) of the target column from the dataframe to the target array is seen [below](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/target_features.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/target_features.png)

* Determining the Features Columns

The feature columns are the columns the neural network is using to predict the target column. For this neural network, the goal is to predict if the donation will be succesful. Thus the feature columns are all the columns besides `IS_SUCCESSFUL`. The [splitting](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) of the feature columns from the dataframe to the feature array is seen [below](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/target_features.png).

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/target_features.png)

### Compiling, Training, and Evaluating the Model

Now that the data is preprocessed. It is time to train the neural network. The target and feature data was [first](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) split into train and test data and then scaled. Then the neural network was [built](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) using a certain number of hidden layers, neurons, and different activation functions. The network is then [compiled](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) and trained on a number of epochs or iterations. Predictions are then made and the accuracy score is [calculated](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb). Unfortunately, while different combinations of these values were attempted, the goal of an accuracy greater than 75% was not achieved. The following are the different Neural Networks developed and the accuracy scores.

* Attempt 0

The initial [attempt](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) was made using the original preprocessed dataset, using 2 hidden layers with 80 and 30 nearons each, both hidden layers using the relu activation function, and an output layer using the sigmoid activation function. The network was then trained using 50 epochs. The accuracy for this attempt was 72.55%. With this as a baseline network, three other networks were attempted.

* Attempt 1

The first [iteration](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.ipynb) on the neural network was made removing the `ASK_AMT` column from the original preprocessed dataset, using 2 hidden layers with 160 and 60 nearons each, both hidden layers using the relu activation function, and an output layer using the sigmoid activation function. The network was then trained using 50 epochs. The accuracy for this attempt was 72.51%.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_1_neurons.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_1_summary.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_1_accuracy.png)

* Attempt 2

The second [iteration](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity_Optimzation.ipynb) on the neural network was made removing the `ASK_AMT` column from the original preprocessed dataset, using 3 hidden layers with 80, 30, and 30 nearons each, both hidden layers using the relu activation function, and an output layer using the sigmoid activation function. The network was then trained using 50 epochs. The accuracy for this attempt was 72.45%.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_2_layers.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_2_summary.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_2_accuracy.png)

* Attempt 3

The second [iteration](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity_Optimzation.ipynb) on the neural network was made removing the `ASK_AMT` column from the original preprocessed dataset, using 2 hidden layers with 80 and 30 nearons each, both hidden layers using the tanh activation function, and an output layer using the sigmoid activation function. The network was then trained using 50 epochs. The accuracy for this attempt was 72.36%.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_3_function.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_3_summary.png)

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/Analysis/attempt_3_accuracy.png)

The best iteration after the original base neural network was Attempt 1 and that model is contained in the [optimized notebook](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity_Optimzation.ipynb).

## Summary

After creating one original neural network and attempting to optimize that neural network using different number of neurons, hidden layers, and activation function, we determine the best neural network model attempted to predict is a donation will be succusful was the original. There are countless ways to optimize the model, so there is definitely room to improve. The original and best optimized models are available respectively [here](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity.h5) and [here](https://github.com/aricciardelli2/UCB-Projects/blob/main/neural_network_charity_analysis/AlphabetSoupCharity_Optimization.h5).

The overall problem with the model is overfitting. There is too much data and the neural network is overfitting to the training data. This means that while the accuracy is high on the training data, it does not extend to data the model has not seen yet and thus the test accuracy does not meet the desired accuracy threshold. To overcome this issue inherent to the neural network model, a Random Forest model can be used which is less prone to overfitting. This is because of random forests' distributed decision making to multiple "trees" and then aggregating a single decision from the answers of all the individual trees. A Random Forests model is the ideal model to choose next in attempting to develop a model with an accuracy greater than 75% for the charity data set.
