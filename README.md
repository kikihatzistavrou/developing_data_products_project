# developing_data_products_project
Course Project for Coursera Course : "Developing Data Products" 

This is the course project for "Developing Data Products" Course of Johns Hopkins University (Coursera).
It is a web app implemented with R and shiny package.

It implements a BMI(Bodily Mass Index) Calculator.

To run the apllication you must have:
* Installed R and Rstudio
* Create a folder and put server.R ui.R and folder images in it.
* In R Studio : 
   1. setwd("folder_path") *(eg. setwd("C:/Users/Kiki/Documents/bmi") if the name of the folder that you created is "bmi")*
   2. install.packages("shiny")
   3. library(shiny)
   4. runApp()
* And done!

To use the application:
* Select your Gender. Click on the radio button to choose.
* Move the slider in order to define your weight.
* Move the slider in order to define your height.
* In the main panel you can see:
    1. the weight you entered
    2. the height ypu entered
    3. your bmi
    4. the meaning of your bmi and some advice about you own health.
