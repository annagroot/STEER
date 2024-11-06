


function(request) {

  tagList(

    tags$head(
      # Places company logo in browser tab
      tags$link(rel = "shortcut icon", href = "www/favicon.ico", type = "image/x-icon"),
      # Imports a text file with the CSS style specifications
      tags$link(rel = "stylesheet", type = "text/css", href = "www/styles.css") # Remove trailing comma
    ),

    fluidPage(

      # theme = bs_theme(version = 5,
      #                  bg = "#f8f9fa", fg = "#000000",  # Ensure both background and foreground colors are set
      #                  primary = "#4C8187", secondary = "#214E70",
      #                  base_font = font_google("Questrial"),
      #                  heading_font = font_google("Questrial")),

      mainPanel(

        tabsetPanel(id = "top_tabs",

                    tabPanel("Introduction",
                             tagList(div(
                               uiOutput("tab_home")
                             )),
                             # add_logo_footer()
                    ), # close tab

                    tabPanel("Instructions",
                             tagList(div(
                               uiOutput("tab_instructions")
                             )),
                             # add_logo_footer()
                    ), # close tab

                    tabPanel("Background information",
                             tagList(div(
                               uiOutput("tab_background_info")
                             )),
                             # add_logo_footer()
                    ), # close tab

                    tabPanel("Questions",
                             tagList(div(
                               uiOutput("tab_questions")
                             )),
                             # add_logo_footer()
                    )  # close tab

        ) # close tabsetPanel

      ) # close main panel

    ) # close fluidPage
  ) # close tagList
}
