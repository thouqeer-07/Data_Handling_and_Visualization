# Dataset
date <- as.Date(c("2023-01-01","2023-01-02","2023-01-03"))
stockA <- c(100,105,110)
stockB <- c(150,152,148)
stockC <- c(120,118,122)

# 1. Line Chart
plot(date,stockA,type="o",
     col="blue",
     ylim=c(90,160),
     xlab="Date",
     ylab="Stock Price",
     main="Stock Prices")

lines(date,stockB,type="o",col="red")
lines(date,stockC,type="o",col="green")

legend("topleft",
       legend=c("Stock A","Stock B","Stock C"),
       col=c("blue","red","green"),
       lty=1)

# 2. Daily Percentage Change
change <- c(0,diff(stockA)/head(stockA,-1)*100)

barplot(change,
        names.arg=date,
        col="orange",
        main="Daily % Change")

# 3. Table
stocks <- data.frame(date,stockA,stockB,stockC)
print(stocks)̥