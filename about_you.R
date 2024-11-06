
about_you_ques <- p(

  # add any questions of interest using the standard Shiny widgets.
  # see details at https://shiny.rstudio.com/tutorial/written-tutorial/lesson3/

  strong("1. Please select your role from below:"),
  radioButtons("about_you_1"," ",c(
    "Partner" = 1,
    "Associate director" = 2,
    "Principal consultant" = 3,
    "Senior consultant" = 4,
    "Consultant" = 5,
    "Associate consultant" = 6,
    "Analyst" = 7,
    "Other (please specify below)" = 8), selected=integer(0)),
  textInput("about_you_other_1","",value=""),
  br(), br(),

  strong("2. Please select the setting where you work from below:"),
  checkboxGroupInput("about_you_2"," ",c(
    "HTA" = 1,
    "RWE" = 2,
    "Other (please specify below)" = 3), selected=integer(0)),
  textInput("about_you_other_2","",value=""), br(), br(),

)


