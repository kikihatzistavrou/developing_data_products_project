# Course Project for Coursera Course : "Developing Data Products" 
# 
# This is the course project for "Developing Data Products" Course of Johns 
# Hopkins University (Coursera).
# It is a web app implemented with R and shiny package.
# 
# It implements a BMI(Bodily Mass Index) Calculator.
# 
# To run the apllication you must have:
# 1) Installed R and Rstidio
# 2) Create a folder and put server.R ui.R and folder images in it.
# 3) In R Studio : 
#    a) setwd("folder_path") (eg. setwd("C:/Users/Kiki/Documents/bmi") if 
#       the name of the folder that you created is "bmi")
#     b) install.packages("shiny")
#     c) library(shiny)
#     d) runApp()
# 4) And done!
#       
# To use the application:
# 1) Select your Gender. Click on the radio button to choose.
# 2) Move the slider in order to define your weight.
# 3) Move the slider in order to define your height.
# 4) In the main panel you can see:
#       a) the weight you entered
#       b) the height ypu entered
#       c) your bmi
#       d) the meaning of your bmi and some advice about you own health.


library(shiny)
shinyUI(pageWithSidebar(
      headerPanel("Bodily Mass Index (BMI) Calculator"),
      
      sidebarPanel(
            radioButtons("gender", "Insert your Gender:",
                               c("Male" = "male",
                                 "Female" = "female")),
            sliderInput('weight','Insert your weight (kg)',
                         60,min=30,max=250,step=1),
            sliderInput('height','Insert your height (cm)',
                         165,min=100,max=250,step=1)
            #submitButton('Submit'),
            
            
      ),
      mainPanel(
            h3('You entered'),
            h4(textOutput("inputWeight")),
            h4(textOutput("inputHeight")),
            h4(textOutput("bmi")),
            h4(textOutput("result")),
            imageOutput("resImage")
           
      )
))