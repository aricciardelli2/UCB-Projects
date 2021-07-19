# Cryptocurrencies Analysis

## Overview of the Analysis

The purpose of this project to provide insights into the new field of Cryptocurrencies to Accountability Accounting so that they can include Cryptocurrencies as an investment portfolio option for customers. As Cryptocurrencies are new to the firm, the goal is simply to use the data to find similarities, or groups, so the firm can start to make sense of the new market. With this goal in mind, Unsupervised learning was chosed to cluster the Cryptocurreny [data](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/resources/crypto_data.csv) using K-Means.

## Results

In order to find groups within the Crytocurrency market, K-Mean clustering was [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/crypto_clustering.ipynb) on the Cryptocurreny [data](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/resources/crypto_data.csv). In order to complete this clustering and visualize the results to the firm, 4 steps were performed: Preprocessing the data, Reducing the data dimensionality, Cluster the data, and visualize the results.

### Preprocessing the Data

In order for the Cryptocurreny [data](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/resources/crypto_data.csv) to be able to be clustered, preprocessing of the data was first [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/crypto_clustering.ipynb). Preprocessing steps included, filtering to traded coins, filtering to mined coins, removing null values, and others. The resulting preprocessed dataframe is scene below.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/analysis/preprocess.png)

### Reducing the Data Dimensionality

In order for the Cryptocurreny [data](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/resources/crypto_data.csv) to be able to be clustered, the dimentionality of the dataframe above needed to be reduced and PCA was [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/crypto_clustering.ipynb). PCA or Principal Component Analysis is used to determine the most important dimensions of a data set and reduce the dataset down to those dimensions. For this analysis, it was determined that the data set should be reduced to 3 principal components. The resultant dataframe from the PCA is scene below.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/analysis/pca.png)

### Cluster the Data

Now that the dataset has been preprocessed and the principal components have been determined, the data is ready to be clustered using K-Means clusting. The first step of the K-Means clustering process that was [performed](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/crypto_clustering.ipynb) was determing the number of clusters appropriate for the data set. This was done by creating an Elbow plot. As scene in the plot below, the change in intertia decreases significantly after the 4th cluster, so the "Elbow" is determined to be 4 and thus we used 4 clusters in the K-Mean clustering process.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/analysis/elbow.png)

With the number of clusters determined, a K-Means model was [fitted](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/crypto_clustering.ipynb) with the dataset and predictions of the cluster of each Crytocurrency was made. The resultant dataframe with the predicted cluster is scene below.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/analysis/cluster.png)

### Visualize the Results

Finally, even though the clustering work has been completed, it is important to visualize the results to both verify that the results make sence, and to comunicate the results to customers. The results of the K-Means clustering was [plotted](https://github.com/aricciardelli2/UCB-Projects/blob/main/cryptocurrencies/crypto_clustering.ipynb) using a 3D scatter plot. The plot below does a great job communicating how the Cryptocurrencies are clustered and also shows that the clustering done by the K-Means algorithm make sense and have value.

## Summary

After proprocessing the cryptocurrency data, performing PCA, clustering the data, and visualizing the results, it is clear that unsupervized learning has identified 4 distinct types, or groups, of Cryptocurrencies. This is very useful for Accountability Accounting in determining how it wants to include Cryptocurrencies as an investment portfolio option for customers. Each of these Cryptocurrency groups can be handles differently by Accountability Accounting which is huge in making sense of the brand new Cryptocurrency market.
