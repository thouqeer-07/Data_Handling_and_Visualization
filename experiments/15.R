library(ggplot2)
library(zoo)

data <- read.csv("Student_Mini_Data.csv")

# 1. Histogram
hist(data$Math_Score,
     col="lightgreen",
     main="Math Scores",
     xlab="Score")

# Boxplot
boxplot(Science_Score~Gender,
        data=data,
        col=c("pink","lightblue"),
        main="Science Score by Gender")

# 2. Scatter Plot
ggplot(data,
       aes(Study_Hours,
           Math_Score,
           color=Gender))+
  geom_point(size=3)+
  geom_smooth(method="lm",se=FALSE)

# 3. Monthly Average
data$Exam_Date <- as.Date(data$Exam_Date)

data$Month <- format(data$Exam_Date,"%Y-%m")

avg <- aggregate(Math_Score~Month,
                 data,
                 mean)

avg$MA <- rollmean(avg$Math_Score,
                   2,
                   fill=NA)

plot(avg$Math_Score,
     type="o",
     xaxt="n",
     xlab="Month",
     ylab="Average Score",
     main="Monthly Math Scores")

axis(1,
     at=1:nrow(avg),
     labels=avg$Month)

lines(avg$MA,
      col="red",
      lwd=2)̥