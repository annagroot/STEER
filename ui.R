
#### Original ####

# library(bslib)
#
#
add_logo_footer <- function() {
  div(
    class = "footer",
    style = "position: relative; bottom: 0; width: 100%; text-align: center;",
    img(src = "nhtalogo.png", height = "100px")  # Adjust height as needed
  )
}
#
# function(request) {
#
#   tagList(
#
#     tags$head(
#       # Places company logo in browser tab
#       tags$link(rel = "shortcut icon", href = "www/favicon.ico", type = "image/x-icon"),
#       # Imports a text file with the CSS style specifications
#       tags$link(rel = "stylesheet", type = "text/css", href = "www/styles.css") # Remove trailing comma
#     ),
#
#     fluidPage(
#
#       theme = bs_theme(version = 5,
#                        bg = "#f8f9fa", fg = "#000000",  # Ensure both background and foreground colors are set
#                        primary = "#4C8187", secondary = "#214E70",
#                        base_font = font_google("Questrial"),
#                        heading_font = font_google("Questrial")),
#
#       mainPanel(
#
#         tabsetPanel(id = "top_tabs",
#
#                     tabPanel("Introduction",
#                              tagList(div(
#                                uiOutput("tab_home")
#                              )),
#                              add_logo_footer()
#                     ), # close tab
#
#                     tabPanel("Instructions",
#                              tagList(div(
#                                uiOutput("tab_instructions")
#                              )),
#                              # add_logo_footer()
#                     ), # close tab
#
#                     tabPanel("Background information",
#                              tagList(div(
#                                uiOutput("tab_background_info")
#                              )),
#                              # add_logo_footer()
#                     ), # close tab
#
#                     tabPanel("Questions",
#                              tagList(div(
#                                uiOutput("tab_questions")
#                              )),
#                              # add_logo_footer()
#                     )  # close tab
#
#         ) # close tabsetPanel
#
#       ) # close main panel
#
#     ) # close fluidPage
#   ) # close tagList
# }

#### BSLSIB  #####

library(shiny)
library(bslib)

# Define bs_theme globally for the entire app
app_theme <- bs_theme(
  version = 5,
  bg = "#f8f9fa", fg = "#000000",
  primary = "#4C8187", secondary = "#214E70",
  base_font = font_google("Questrial"),
  heading_font = font_google("Questrial")
)

# Custom function to add logo footer
add_logo_footer <- function() {
  div(
    class = "footer",
    style = "position: relative; bottom: 0; width: 100%; text-align: center;",
    img(src = "nhtalogo.png", height = "100px")  # Adjust height as needed
  )
}

# UI definition using page_navbar from bslib
ui <- page_navbar(
  title = "Expert Elicitation Tool",
  theme = app_theme,
  bg = "#4C8187",
  inverse = TRUE,

  # Tabs within the navigation bar
  nav_panel(
    title = "Introduction",
    h2("Introduction"),
    uiOutput("tab_home"),
    add_logo_footer()
  ),

  nav_panel(
    title = "Instructions",
    h2("Instructions"),
    uiOutput("tab_instructions"),
    add_logo_footer()
  ),

  nav_panel(
    title = "Background Information",
    h2("Background Information"),
    uiOutput("tab_background_info"),
    add_logo_footer()
  ),

  nav_panel(
    title = "Questions",
    uiOutput("tab_questions"),
    add_logo_footer()
  ),

  # Spacer and links menu
  nav_spacer(),

  nav_menu(
    title = "Links",
    align = "right",
    nav_item(tags$a("Posit", href = "https://posit.co")),
    nav_item(tags$a("Shiny", href = "https://shiny.posit.co"))
  )
)
