

library(shiny)
shinyUI(fluidPage(
  fluidRow(
    column(10,
      offset = 1,
      
      titlePanel("Predict Words"),
      wellPanel("Prediction of the Next Word make it easy for users to continue with their typing by supplying
                the next word predictions. by using Natural Language Process"),
      fixedRow(
        mainPanel(
          span(
            textInput(
              "phrase",
              "Enter your word / phrase",
              value = ""
            ),
            actionButton("predictButton", "Next Word")
          )
        ),
        sidebarPanel(
          p(h5("Current Word")),
          h2(textOutput("phrase")),
          hr(),
          p(h5("Next Word")),
          h2(textOutput("word"))
        )
      #  ,
      #   tabsetPanel(
      #   tabPanel("Documentation",
      #            p(h4("Next Word Predictor:")),
      #            br(),
      #            helpText("This application predict the next word after your word"),
      #            HTML("<u><b>Checking Method : </b></u>
      #                 <br>
      #                 1. User open the apps. <br>
      #                 2. User key-in word / phrase. <br>
      #                 3. User click button 'Next Word'.<br>
      #                 4. The Apps giving the answer by comparing the input with the dataset from ngrams.
      #                 
      #                 ")                
      #   )
      # )
  )
)
)
))