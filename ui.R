library(shiny)

shinyUI(fluidPage(
  titlePanel("Sales Data Filter App"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file", "Upload Sales CSV", accept = ".csv"),
      uiOutput("date_ui"),
      uiOutput("state_ui"),
      uiOutput("region_ui"),
      uiOutput("category_ui"),
      uiOutput("subcategory_ui"),
      helpText("Filter data by date, State, Region, Category, Sub.Category, Quantity, Discount, Profit.")
    ),
    mainPanel(
      dataTableOutput("table")
    )
  )
))
