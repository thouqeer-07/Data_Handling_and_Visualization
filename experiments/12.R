# Dataset
product <- c("Product A","Product B","Product C")
quantity <- c(250,175,300)
price <- c(20,15,18)

# 1. Bar Chart
barplot(quantity,
        names.arg=product,
        col="skyblue",
        xlab="Products",
        ylab="Quantity",
        main="Inventory Quantity")

# 2. Stacked Bar Chart
category <- c("Category1","Category1","Category2")
tab <- table(category,product)

barplot(tab,
        col=rainbow(nrow(tab)),
        legend=TRUE,
        main="Stacked Bar Chart")

# 3. Table
inventory <- data.frame(product,quantity,price)
print(inventory)̥