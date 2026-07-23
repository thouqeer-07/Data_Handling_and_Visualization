category <- c("Electronics",
              "Clothing",
              "Appliances")

sales <- c(50000,35000,40000)

# 1. Funnel Chart (Approximation)
barplot(rev(sales),
        horiz=TRUE,
        col=c("red","orange","yellow"),
        main="Sales Funnel",
        names.arg=rev(category))

# 2. Table
data.frame(Category=category,
           Sales=sales)

# 3. Pie Chart
pie(sales,
    labels=category,
    col=rainbow(3),
    main="Sales Distribution")̥