library(shiny)
shinyUI(pageWithSidebar(
      headerPanel("Bodily Mass Index (BMI) Calculator"),
      
      sidebarPanel(
            radioButtons("gender", "Insert your Gender:",
                               c("Male" = "male",
                                 "Female" = "female")),
            sliderInput('weight','Insert your weight (kg)',
                         60,min=30,max=400,step=1),
            sliderInput('height','Insert your height (cm)',
                         165,min=100,max=300,step=1)
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