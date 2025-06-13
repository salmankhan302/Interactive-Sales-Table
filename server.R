library(shiny)
library(dplyr)
library(lubridate)

shinyServer(function(input, output, session) {
  salesData <- reactive({
    req(input$file)
    df <- read.csv(input$file$datapath, stringsAsFactors = FALSE)
    # Parse dates
    df$Order.Date <- as.Date(df$Order.Date, format = "%Y-%m-%d")
    df
  })

  # Dynamic UI for filters
  output$date_ui <- renderUI({
    df <- salesData()
    dateRangeInput("dates", "Order Date Range",
                   start = min(df$Order.Date, na.rm = TRUE),
                   end = max(df$Order.Date, na.rm = TRUE))
  })
  output$state_ui <- renderUI({
    df <- salesData()
    selectInput("state", "State", choices = c("All", sort(unique(df$State))), selected = "All")
  })
  output$region_ui <- renderUI({
    df <- salesData()
    selectInput("region", "Region", choices = c("All", sort(unique(df$Region))), selected = "All")
  })
  output$category_ui <- renderUI({
    df <- salesData()
    selectInput("category", "Category", choices = c("All", sort(unique(df$Category))), selected = "All")
  })
  output$subcategory_ui <- renderUI({
    df <- salesData()
    selectInput("subcategory", "Sub.Category", choices = c("All", sort(unique(df$Sub.Category))), selected = "All")
  })

  # Filtered data
  filteredData <- reactive({
    df <- salesData()
    if (!is.null(input$dates)) {
      df <- df %>% filter(Order.Date >= input$dates[1], Order.Date <= input$dates[2])
    }
    if (!is.null(input$state) && input$state != "All") {
      df <- df %>% filter(State == input$state)
    }
    if (!is.null(input$region) && input$region != "All") {
      df <- df %>% filter(Region == input$region)
    }
    if (!is.null(input$category) && input$category != "All") {
      df <- df %>% filter(Category == input$category)
    }
    if (!is.null(input$subcategory) && input$subcategory != "All") {
      df <- df %>% filter(Sub.Category == input$subcategory)
    }
    # Only keep relevant columns
    df %>%
      select(Order.Date, State, Region, Category, Sub.Category, Sales, Quantity, Discount, Profit)
  })

  # Data Table Output
  output$table <- renderDataTable({
    filteredData()
  })
})