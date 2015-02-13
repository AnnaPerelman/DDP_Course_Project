library(shiny)

PossibleDiagnosis <- function(Hemoglobin)
        {if(Hemoglobin<=14 & Hemoglobin>=11)
                print("Normal")
         if(Hemoglobin<11)
                print("Low level - suspectable for anemia")
         if(Hemoglobin>14)
                 print("High level - suspectable for dehydration, tumor or lung disease")
}


shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$Hemoglobin})
                output$prediction <- renderPrint({PossibleDiagnosis(input$Hemoglobin)})
        }
)