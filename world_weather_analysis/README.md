# World Weather Analysis

## Overview of Project

### Purpose

The purpose of to create a PlanMyTrip app that allows users to plan a trip based on weather preferences.

## Results

### Finding Cities

The [app](https://github.com/aricciardelli2/UCB-Projects/blob/main/world_weather_analysis/Weather_Database/Weather_Database.ipynb) pulls in a random set of 2,000 lat/long coordinates and finds the closest city and pulls the current weather from the OpenWeatherMap API. Sample results are found in this [CSV file](https://github.com/aricciardelli2/UCB-Projects/blob/main/world_weather_analysis/Weather_Database/WeatherPy_Database.csv).

### Filtering Cities Based on Prefered Maximum Temperature Range

The [app](https://github.com/aricciardelli2/UCB-Projects/blob/main/world_weather_analysis/Vacation_Search/Vacation_Search.ipynb) then asks the user to enter prefered maximum temperature range and filters the available cities to the user inputed temperature range and displays these cities on a map using the Google Maps API. The app also finds a hotel for each prefered city. Sample results are found in this [CSV file](https://github.com/aricciardelli2/UCB-Projects/blob/main/world_weather_analysis/Vacation_Search/WeatherPy_vacation.csv).
A sample map of these locations can be seen in the image below.
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/world_weather_analysis/Vacation_Search/WeatherPy_vacation_map.png)

### Planning a Trip Itinerary

The [app](https://github.com/aricciardelli2/UCB-Projects/blob/main/world_weather_analysis/Vacation_Itinerary/Vacation_Itinerary.ipynb) finally takes in 4 selected cities from the prefered cities identified previously and plots an itinerary for these four cities. The app displays the path for this itinerary on a map using the Google Maps API.
A sample map of the path and locations can be seen in the two images below.
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/world_weather_analysis/Vacation_Itinerary/WeatherPy_travel_map.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/world_weather_analysis/Vacation_Itinerary/WeatherPy_travel_map_markers.png)

## Summary

Through the use of multiple APIs the PlanMyTrip app is able to find a set of cities to travel to for the user, filter by the user prefered weather, create an itinerary on the final choosen cities, and show all these results on Google Maps for the user.
