# Surfs Up Weather Analysis

## Overview of Project

### Purpose

The purpose of the Surfs Up Weather Analysis is to provide insights for opening a surf and ice cream shop in Hawaii based on historical weather. The weather analysis focuses on temperature readings from different stations around the island of Oahu. The weather analysis aims to determine if the weather in Oahu is condusive for opening a successful surf and ice cream shop.

## Results

The weather [analysis](https://github.com/aricciardelli2/UCB-Projects/blob/main/surfs_up/SurfsUp_Challenge.ipynb) uses a SQLite [database](https://github.com/aricciardelli2/UCB-Projects/blob/main/surfs_up/hawaii.sqlite) provided by the customer and queries the temperature data from the months of June and December to determine if the weather is suitable for opening a successful surf and ice cream shop. To understand if the weather is suitable for surf and ice cream, we assume that the minimum acceptable temperature for these activities is low-60's (63 °F) and the maximum accepatable temperature to spend extended time outside is 90 °F. Based on the analysis performed, there are three major points that can be taken away.

* June is a suitable month for surf and ice cream: Based on the summary statistics for the historical temperature measurements for the month of June seen below, surfing and ice cream appear to be viable business ventures for the month of June. The mean temperature for the month of June is 75 °F. The median tempurature is also 75 °F meaning that the temperature is not skewed towards hotter or colder days in comparison to the mean. The IQR is 4 °F with the 1st and 3rd quartile at 73 °F and 77 °F respecively. The max temperature is also not too hot for surf and ice cream at 85 °F. The min temperature is 64 °F which may be too cold for surf and ice cream, but there still be some customers on these days. With a mean and median temperature for the month of June that is perfect for surf and ice cream at a mid-70's tempurature, a distribution that doesn't skew towards hotter or colder days, a max temperature that is not too hot to go outside and a min temperature that is still pleasant, June in Oahu appears perfect for a Surf and Ice Cream shop.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/surfs_up/results/june_summary_statistics.png)

*  December is a suitable month for surf and ice cream but there will be a few days with fewer customers: Based on the summary statistics for the historical temperature measurements for the month of December seen below, surfing and ice cream appear to be viable business ventures for the month of December. The mean temperature for the month of June is 71 °F. The median tempurature is also 71 °F meaning that the temperature is not skewed towards hotter or colder days in comparison to the mean. The IQR is 5 °F with the 1st and 3rd quartile at 69 °F and 74 °F respecively. The max temperature is also not too hot for surf and ice cream at 83 °F. The min temperature is 56 °F is too cold for most people and there may be dip in customers on these days, especially for surfing. With a mean and median temperature for the month of December that is acceptable for surf and ice cream at a low-70's tempurature, a distribution that doesn't skew towards hotter or colder days, a max temperature that is not too hot to go outside but a min temperature that is a little shilly, December in Oahu will provide many days with lots of customers for surf and ice cream, but may have a few days with fewer customers.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/surfs_up/results/december_summary_statistics.png)

*  The year round temperature will be suitable for opening a surf and ice cream shop: The months of June and December were chosen to analyze historical temperature readings as it is assumed that June and December are the hottest and coldest months of the year respectively and will provide the full range of expected temperatures for the year. The tempuratures in June are suitable for surf and ice cream all month long; the min and max temperatures are both acceptable temperatures for surf and ice cream. The min temperature in December is on the colder side and will have fewer customers on these days, but the 1st quartile is an acceptable temperature for both activities and thus at least 75% of days will have plenty of customers. Assuming that June and December are the hottest and coldest months, the range of percentage of days within a month where there will be customers at the new surf and ice cream shop is 75% - 100% of days. Given this range, we assume that all months can sustain a surf and ice cream shop.

## Summary

Based on the analysis and results provided above, I suggest opening a surf and ice cream shop in Oahu as the temperature results in both the hottest (June) and coldest (December) will provide many customers looking to partake in both activities. June will provide temperatures that on average are perfect for both surf and ice cream, and on the hottest days, will not be too hot to be outside. December provides similar average temperatures that will have many people looking to surf and have ice cream, but will have a few (< 25%) colder days in which there fewer customers. In assuming that there are no hotter or colder months in the year than June and December, the temperature measurements signal opening a surf and ice cream shop in Oahu will be successful.

Temperature across all of Oahu however is not the only pieces of information that can be used to determine if a surf and ice cream shop will be successful. Two other queries that would provide more insites on opening a surf and ice cream shop in Oahu are the following.

* Precipiation: Temperature is not the only weather factor that goes into if people will want to surf or eat ice cream, precipitation is as well. If it is raining too much during the day, people will not be surfing or eating ice cream. The queies below for June and December will provide the precipitation information needed to assess if June or December is too rainy for surf and ice cream.
```
june_rain_results = session.query(Measurement.prcp).filter(Measurement.date.ilike('%-'+june_month+'-%'))
december_rain_results = session.query(Measurement.prcp).filter(Measurement.date.ilike('%-'+december_month+'-%'))
```

* Elevation: The temperature analysis takes in tempurature readings from stations from all over the island of Oahu. As a surf and ice cream shop will be near the shore, temperature readings from stations at lower elevations (<= 20 ft) will provide more relevant temperature readings for the proposed surf and ice cream shop.
```
relevat_stations = session.query(Station.id).filter(Station.elevation <= 20).all()
june_results = session.query(Measurement.tobs).filter(Measurement.date.ilike('%-'+june_month+'-%')).filter(Measurement.station.in_(relevat_stations)
december_results = session.query(Measurement.tobs).filter(Measurement.date.ilike('%-'+december_month+'-%')).filter(Measurement.station.in_(relevat_stations)
```

The temperature results for Oahu signal that opening a surf and ice cream shop will be successful in Oahu, and if the potential investors are still skeptical, data from the two additional queries above can be used to extract more useful information to present.
