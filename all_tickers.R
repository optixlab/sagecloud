# All earnings
# Calculate the drift in share price post earnings, comparing next day open with close of next day
# Day 0 === Earnings day
# Day 1 === Day after earnings, and so forth. Defined by variable 'lag'

# Quantmod is the finance library
library("quantmod")
library("lattice")
last <- function(x) { x[length(x)] }

# Arpita provided the dates of earning releases for each ticker of interest
data <- read.csv("analysts.csv", header=T)
tickers <- levels(data$TICKER)

# Store everything downloaded into a 'list of dataframes' adding 'Earnings', 'CloseClose', 'OpPvClse', and 'Ticker' columns
earnings <- list()

for (ticker in tickers) {
  ticker.index <- which(tickers==ticker)
  ticker.dates <- data[data$TICKER == ticker, 3]
  ticker.dates <- as.Date(strptime(as.character(ticker.dates), "%Y%m%d"))
  cat(c(ticker, " :", length(ticker.dates), " quarters, from ", as.character(ticker.dates[1]), " to ", as.character(last(ticker.dates)), "\n", sep = ""))
  
  if (exists("all.data")) { rm("all.data")}
  
  for (day0 in seq_along(ticker.dates)) {
    fr.date <- ticker.dates[day0]
    to.date <- ticker.dates[day0] + 7
    
    # Main function call for data from yahoo. Can also use other sources. See ?getSymbols
    ticker.data <- getSymbols(Symbols = ticker, 
                   env = parent.frame(),
                   reload.Symbols = FALSE,
                   verbose = FALSE,
                   warnings = FALSE,
                   src = "yahoo",
                   symbol.lookup = TRUE,
                   auto.assign = getOption('getSymbols.auto.assign',FALSE),
                   from = fr.date,
                   to = to.date
                   )

    rows <- nrow(ticker.data)  # Number of rows in the data fetch
    names(ticker.data) <- c("Open", "High", "Low", "Close", "Volume", "Adjusted")
    ticker.data$CloseClose <- c(NA, as.numeric(tail(ticker.data$Close, n = rows-1)) - 
                               as.numeric(head(ticker.data$Close, n = rows-1)))
    ticker.data$OpPvClse <- c(NA, as.numeric(tail(ticker.data$Open, n = rows-1)) - 
                             as.numeric(head(ticker.data$Close, n = rows-1)))
    ticker.data$CloseOp <- as.numeric(ticker.data$Close) - as.numeric(ticker.data$Open)
    ticker.data$Earnings <- c(1, rep(0, rows-1))
    ticker.data$Ticker <- c(rep(ticker.index, rows))
    if(exists("all.data")) {
      all.data <- rbind(all.data, ticker.data)
    } else {
      all.data <- ticker.data
      cat(c(ticker, ": new dataframe created\n"))
    }

  }

  # Note the use of [[]] indexing on FOO:  FOO[i] would be a list shortened 
  # to just one element; FOO[[i]] is that element.  (This distinction only 
  # matters when working with types like lists.  There's no such thing as a 
  # numeric value that's not in a numeric vector, so x[[2]] and x[2] are the 
  # same thing if x is numeric.)

  earnings[[ticker.index]] <- all.data
}

# Analytics
# list of tickers, each list containing post earnings results till 2013

opens <- list()  # the opens for day 1 - previous close (day0) values
closes <- list() # the close - opens values for day 1
day0.day1.close <- list()# the close of day 1 - close of day 0
earnings.day <- list() # index of earnings days, aka day0

# get index of rows where OpClose is NA, which is indicated by '1' in the Earnings column
for (ticker in seq_along(tickers)) {
  earnings.day[[ticker]] <- which(earnings[[ticker]]$Earnings == 1)
}

lag <- 1 # days lagging earnings announcement
for (ticker in seq_along(tickers)) {
  opens[[ticker]] <- earnings[[ticker]]$OpPvClse[earnings.day[[ticker]] + lag]
  closes[[ticker]] <- earnings[[ticker]]$CloseOp[earnings.day[[ticker]] + lag]
  day0.day1.close[[ticker]] <- earnings[[ticker]]$CloseClose[earnings.day[[ticker]] + lag]
}

tickers
print("Apple's snapshot")
head(earnings[[1]][,c(1:4,7:11)], n = 20)

# Plotting Apple's drift, post earnings announcement
library(lattice)
ticker = which(tickers=="AAPL")
  xyplot(closes[[ticker]] ~ opens[[ticker]] | (opens[[ticker]]<0),
          ylab = "Next day, post-earnings, (Day 1 Close - Open)",
          xlab = "Next day, post-earnings, (Overnight Change)",
          main = c(tickers[ticker], "FALSE: Day 1 Opened lower, TRUE: Day 1 Opened Higher")
       )

xyplot(day0.day1.close[[ticker]] ~ opens[[ticker]] | (opens[[ticker]]<0),
          ylab = "Next day, post-earnings, (Day 1 Close - Day 0 Close)",
          xlab = "Next day, post-earnings, (Overnight Change)",
          main = c(tickers[ticker], "FALSE: Day 1 Opened lower, TRUE: Day 1 Opened Higher")
       )

ticker = which(tickers=="NFLX")
    
xyplot(closes[[ticker]] ~ opens[[ticker]] | (opens[[ticker]]<0),
          ylab = "Next day, post-earnings, (Day 1 Close - Open)",
          xlab = "Next day, post-earnings, (Overnight Change)",
          main = c(tickers[ticker], "FALSE: Day 1 Opened lower, TRUE: Day 1 Opened Higher")
       )

xyplot(day0.day1.close[[ticker]] ~ opens[[ticker]] | (opens[[ticker]]<0),
          ylab = "Next day, post-earnings, (Day 1 Close - Day 0 Close)",
          xlab = "Next day, post-earnings, (Overnight Change)",
          main = c(tickers[ticker], "FALSE: Day 1 Opened lower, TRUE: Day 1 Opened Higher")
       )

