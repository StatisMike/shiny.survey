## Only run example in interactive R sessions

if (interactive()) {
  
  # load libraries
  library(shiny)
  library(shiny.quetzio)
  
  # create ui
  ui <- fluidPage(
    column(6, align = "center",
           # bind the UI with correct module_id
           Quetzio_UI("my_quetzio")
    ),
    column(6,
           h2("State of", tags$i("quetzio_server")),
           h3("Is it done?"),
           verbatimTextOutput("quetzio_is_done"),
           h3("Error messages?"),
           verbatimTextOutput("quetzio_message"),
           h3("Answers"),
           verbatimTextOutput("quetzio_answers")
    )
  )
  
  server <- function(input, output, session) {
    
    # initialize new quetzio
    questionnaire <- Quetzio_create(
      # load questions from R object
      source_method = "raw",
      # provide incomplete source to merge with defaults
      source_object = quetzio_examples$questions_lists$simple_default,
      # add default values
      source_object_default = quetzio_examples$default_config$simple_default,
      # use the same module_id as in UI binding
      module_id = "my_quetzio",
      # custom_css to give margin but not center options explicitly
      # it will affect only elements within the form div
      custom_css = list(
        "shiny-options-group" = "text-align: left; margin-left: 45%"
      ),
      # you can also optionally give div unique id - useful for external css styling
      div_id = "my_questio_div_id"
    )
    
    # render objects to show your questionnaire status
    output$quetzio_is_done <-
      renderPrint(questionnaire$is_done())
    output$quetzio_message <-
      renderPrint(questionnaire$message())
    output$quetzio_answers <-
      renderPrint(questionnaire$answers())
  }
  
  shinyApp(ui, server)
  
}
