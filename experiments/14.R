library(ggplot2)

data <- read.csv("Energy_Consumption_Data.csv")

# 1. Histogram + Density
hist(data$Units_Consumed,
     col="lightblue",
     prob=TRUE,
     main="Units Consumed")

lines(density(data$Units_Consumed),
      col="red",
      lwd=2)

# 2. Bubble Scatter Plot
ggplot(data,
       aes(Temperature,
           Units_Consumed,
           size=Peak_Hours))+
  geom_point(alpha=0.6,color="blue")

# 3. Average Renewable Usage
avg <- aggregate(Renewable_Usage~Sector,
                 data,
                 mean)

barplot(avg$Renewable_Usage,
        names.arg=avg$Sector,
        col="green",
        main="Average Renewable Usage")̥