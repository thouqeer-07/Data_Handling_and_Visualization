# Dataset
city <- c("City A","City B","City C")
population <- c(500000,700000,600000)
temperature <- c(75,68,80)
elevation <- c(1000,800,1200)

# 1. Map (Approximation)
plot(c(1,2,3), c(1,2,3),
     pch=19,
     col="blue",
     xlab="Longitude",
     ylab="Latitude",
     main="City Locations")
text(c(1,2,3), c(1,2,3), labels=city, pos=3)

# 2. Scatter Plot
plot(population, temperature,
     pch=19,
     col="red",
     xlab="Population",
     ylab="Average Temperature",
     main="Population vs Temperature")
abline(lm(temperature~population), col="blue")

# 3. Table
geo <- data.frame(city,population,temperature,elevation)
print(geo)̥