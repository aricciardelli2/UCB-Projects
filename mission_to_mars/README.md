# Mission to Mars Web Scraping

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/resources/desktop_page_1.png)

## Overview of Project

### Purpose

The purpose of the Mission to Mars web scraping is to provide gather valuable information about Mars from many different websites, store that information, and display it on a website for others to view. This not only serves as a valuable source of information but a showcase of data science ability for potential employers.

## Results

### Gathering Information about Mars

To display valuable information about Mars to others, information is first gathered from 4 different websites
* [Mars News](https://data-class-mars.s3.amazonaws.com/Mars/index.html)
* [JPL Image](https://data-class-jpl-space.s3.amazonaws.com/JPL_Space/index.html)
* [Mars Facts](https://data-class-mars-facts.s3.amazonaws.com/Mars_Facts/index.html)
* [Mars Hemispheres](https://marshemispheres.com/)

To gather the necessary information, Splinter and Webdriver Manager is used to programmatically browse these webpages and then Beautiful Soup is used to scape the information from these webpages automatically. The information gathering step can be seen completely in this [jupyter notebook](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/Mission_to_Mars_Challenge.ipynb).

### Store the Information

To be able to present this scraped information on a webpage, the necessary data first needs to be collected and stored in a database. The storing of the scraped results in a local MongoDB is performed using PyMongo in the [flask app](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/app.py) while calling scaping notebook by converting it into a [python file](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/scraping.py).

### Display the Information in a Webpage

Now that the information about Mars has been stored in a local MongoDB, a flask webpage is created using [app](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/app.py) file which scapes the information from the necessary webpages upon a button click, stores it in a local MongoDB, and renders the data using an [html file](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/templates/index.html) in a webpage. The resulting webpage displaying the results looks as follows:

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/resources/desktop_page_1.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/resources/desktop_page_2.png)
![](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/resources/desktop_page_3.png)

Among the features of the site are an active green button, and circle framed images of the hemispheres of Mars. Circle frame was selected due to the circular nature of the contents of the image.

Another benefit of this webpage is that it is mobile-responsive and reorders the page to stack the elements if it is on a smaller mobile device as seen in the image below.

![](https://github.com/aricciardelli2/UCB-Projects/blob/main/mission_to_mars/resources/mobile_page.png)

## Summary

By successfully using Splinter, Webdriver, Beautiful Soup, MongoDB, and Flask, an interactive webpage to pull the most recent relevant information about Mars and displays it in a clean and responsive webpage.
