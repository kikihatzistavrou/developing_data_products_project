# developing_data_products_project
Course Project for Coursera Course : "Developing Data Products" 

This is the course project for "Developing Data Products" Course of Johns Hopkins University (Coursera).
It is a web app implemented with R and shiny package.

It implements a BMI(Bodily Mass Index) Calculator.

To run the apllication you must have:
* Installed R and Rstudio
2) Create a folder and put server.R ui.R and folder images in it.
*3) In R Studio : 
*    a) setwd("folder_path") (eg. setwd("C:/Users/Kiki/Documents/bmi") if the name of the folder that you created is "bmi")
*    b) install.packages("shiny")
*    c) library(shiny)
*    d) runApp()
4) And done!

To use the application:
* Select your Gender. Click on the radio button to choose.
2) Move the slider in order to define your weight.
3) Move the slider in order to define your height.
4) In the main panel you can see:
    a) the weight you entered
    b) the height ypu entered
    c) your bmi
    d) the meaning of your bmi and some advice about you own health.
