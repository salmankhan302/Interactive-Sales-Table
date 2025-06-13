# Sales Data Filter Shiny App

## Overview

This Shiny application allows users to upload a sales CSV file and filter records by date, State, Region, Category, and Sub.Category. The filtered data is displayed with the columns: Order.Date, State, Region, Category, Sub.Category, Sales, Quantity, Discount, and Profit.

## Getting Started

1. **Prepare your sales data** as a CSV file with at least these columns (exact names required):

   ```
   Order.Date, State, Region, Category, Sub.Category, Sales, Quantity, Discount, Profit
   ```

2. **Run the application** in RStudio:
   - Place `ui.R` and `server.R` in the same project folder.
   - Open one of the files and click "Run App".

3. **Using the app**:
   - Upload your CSV file via the interface.
   - Use the filters to select date range, State, Region, Category, and Sub.Category.
   - View the filtered sales data in the table.

## Required R Packages

- `shiny`
- `dplyr`
- `lubridate`

(Install missing packages via `install.packages("packagename")`)

---