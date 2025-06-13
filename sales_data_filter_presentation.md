---
title: Sales Data Filter Shiny App
author: Salman Saleem
output: ioslides_presentation
---

## Introduction

- **Sales Data Filter Shiny App** is a user-friendly web application built with R and Shiny.
- It enables interactive filtering and exploration of sales data.
- Users can upload their own CSV files and apply various filters to analyze sales performance.

---

## Data Requirements

- The app expects a CSV file with the following columns:
  - `Order.Date`
  - `State`
  - `Region`
  - `Category`
  - `Sub.Category`
  - `Sales`
  - `Quantity`
  - `Discount`
  - `Profit`
- Ensure column names in your file exactly match the list above.

---

## Features

- **File Upload:** Upload your own sales data (CSV format).
- **Filtering Options:**
  - Date range
  - State
  - Region
  - Category
  - Sub.Category
- **Output:** View filtered data in an interactive table showing sales, quantity, discount, and profit.

---

## How to Use

1. Launch the app in RStudio and click "Run App".
2. Upload your sales CSV file using the provided button.
3. Use the sidebar filters to narrow down your data.
4. The main panel displays the filtered results in an interactive table.
5. A sample_superstore.csv file is provided at git to test the aap 
6. URL link to the Aap http://127.0.0.1:5066/


---

## Conclusion

- The Sales Data Filter Shiny App provides a simple way to explore and filter sales data.
- Adapt the app for your business needs.
- For further analysis, filtered data can be exported and visualized as needed.
- Questions? Contact the developer or refer to the documentation for more details.
