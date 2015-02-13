library(shiny)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Hemoglobin Levels Analysis"),
                
                sidebarPanel(
                        numericInput('Hemoglobin', 'Hemoglobin gm/dl', 0, min = 0, max = 100, step = 1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Possible diagnosis'),
                        h4('You entered'),
                        verbatimTextOutput("inputValue"),
                        h4('Which resulted in a possible diagnosis '),
                        verbatimTextOutput("prediction"),
                        h5('App Documentation'),
                        h5('Here is an application designed to help patients 
                        taking blood test for hemoglobin levels to interpretate 
                        the results and to perform some preliminary steps needed 
                        to keep their health on a desired level.                           
                        The application is based on a patient input, 
                        which is a result of hemoglobin in blood test measured 
                        in gm/dl. Considering this input the application labels 
                        the results as "Normal", "Low" or "High".                           
                        In case the results are ubnormal (too low or too high)
                        the application gives a possible diagnosis which may help
                        the patients in finding the appropriate medical provider 
                        for their case.')
                )
        )
)