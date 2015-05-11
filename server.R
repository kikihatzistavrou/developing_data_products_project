library(shiny)

# function bmi
# calculates the bmi(bodily mass index)
# inputs: weight and height that user gave
bmi<-function(w,h){w/((h*10^(-2))^2)}

# function result
# informs about the category that user belongs
# inputs: bmi
result<-function(bmi){
      if(bmi<18.5){"Underweight"}
      else if (bmi>=18.5 & bmi<25){"Normal"}
      else if (bmi>=25 & bmi<30){"Overweight"}
      else if (bmi>=30){"Severe Overweight"}
      else {"Something went wrong"}
}

shinyServer(
      function(input,output){
            w<-reactive(input$weight)
            #print the weight you entered
            output$inputWeight<-renderText({paste0("Weight: ", w(), " kg")})
            
            h<-reactive(input$height)
            #print the height you entered
            output$inputHeight<-renderText({paste0("Height: ", h(), " cm")})
            
            #prints the bmi that calculated with the bmi function with
            #inputs:
            #a)the weight user entered
            #b)the height user entered
            output$bmi<-renderText({
                  paste0("Which resulted in a Bodily Mass Index (BMI) of ",
                         round(bmi(w(),h()),2))})
            
            #prints the category you belong with result function with
            #inputs:
            #the bmi that is calculated according to user's inputs
            # about weight and height
            output$result<-renderText({paste0("And that means that you are: ",
                                              result(bmi(w(),h())))})
           
            #choose and show the right image
            output$resImage <- renderImage({
                                    
                  if (result(bmi(w(),h()))== "Underweight" && input$gender=="female") {
                        return(list(
                              src = "images/1.png",
                              contentType = "image/png",
                              alt = "underweight"
                        ))
                  } else if (result(bmi(w(),h())) == "Normal" && input$gender=="female") {
                        return(list(
                              src = "images/2.png",
                              filetype = "image/png",
                              alt = "normal"
                        ))
                  } else if (result(bmi(w(),h())) == "Overweight" && input$gender=="female") {
                        return(list(
                              src = "images/3.png",
                              filetype = "image/png",
                              alt = "overweight"
                        ))
                  } else if (result(bmi(w(),h())) == "Severe Overweight" && input$gender=="female") {
                        return(list(
                              src = "images/4.png",
                              filetype = "image/png",
                              alt = "severe overweight"
                        ))
                  }else if (result(bmi(w(),h()))== "Underweight" && input$gender=="male") {
                        return(list(
                              src = "images/1m.png",
                              contentType = "image/png",
                              alt = "underweight"
                        ))
                  } else if (result(bmi(w(),h())) == "Normal" && input$gender=="male") {
                        return(list(
                              src = "images/2m.png",
                              filetype = "image/png",
                              alt = "normal"
                        ))
                  } else if (result(bmi(w(),h())) == "Overweight" && input$gender=="male") {
                        return(list(
                              src = "images/3m.png",
                              filetype = "image/png",
                              alt = "overweight"
                        ))
                  } else if (result(bmi(w(),h())) == "Severe Overweight" && input$gender=="male") {
                        return(list(
                              src = "images/4m.png",
                              filetype = "image/png",
                              alt = "severe overweight"
                        ))
                  }else {return(NULL)}
                  
            }, deleteFile = FALSE)
      
                  
            
      })