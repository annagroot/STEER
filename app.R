
list_of_packages <- c("shiny", "rdrop2", "bslib") # list of packages required to run the code
# list_of_packages <- c("shiny") # list of packages required to run the code

lapply(list_of_packages,                 # install and load all relevant packages
       function(x) if(!require(x,character.only = TRUE)) install.packages(x, dep=TRUE))

options(encoding = "UTF-8")

dummy_app <- TRUE                      # When set to FALSE, requires a unique ID code to run the app. ID codes are set in "manual_inputs.R"


theme_NHTA <- bs_theme(version = 5,
                       bg = "#f8f9fa", fg = "#000000",  # Ensure both background and foreground colors are set
                       primary = "#4C8187", secondary = "#214E70",
                       base_font = font_google("Questrial"),
                       heading_font = font_google("Questrial"))


colors_chart <- c("#4C8187",
                  "#214E70",
                  "#AF8446",
                  "#6D7376",
                  "#4D84B4",
                  "#4E6A4D",
                  "#68592B"
)

add_logo_footer <- function() {
  div(
    class = "footer",
    style = "position: relative; bottom: 0; width: 100%; text-align: center;",
    img(src = "nhtalogo.png", height = "100px")  # Adjust height as needed
  )
}

runApp(appDir = file.path(getwd()),     # This looks for the ui.R, server.R and www folder within the wd. Do not rename these.
       launch.browser = TRUE,           # This line will open the application in the user's default browser
       quiet = FALSE,
       display.mode = "normal")
