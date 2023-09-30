# Load necessary libraries
library(quantmod)
library(ggplot2)

# Define the stock symbol and time period of interest
# TCS.NS, HDFCBANK.NS, GOOGL, FB, TSLA, MSFT, RELIANCE.NS 
symbol <- "GOOGL"
start_date <- as.Date(readline(prompt = "Enter start date (YYYY-MM-DD): "))
end_date <- as.Date(readline(prompt = "Enter end date (YYYY-MM-DD): "))

# Retrieve the stock price data using quantmod
getSymbols(symbol, src = "yahoo", from = start_date, to = end_date)
stock_prices <- as.data.frame(GOOGL)

# Create the line chart
ggplot(stock_prices, aes(x = index(stock_prices), y = GOOGL.Close)) +
  geom_line() +
  labs(title = paste0("Stock Prices for ", symbol, " from ", start_date, " to ", end_date),
       x = "Date",
       y = "Price")

