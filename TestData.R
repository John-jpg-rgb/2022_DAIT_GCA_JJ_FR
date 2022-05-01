x <- read.csv("de.csv", header = TRUE)
boxplot(x$T_GSR,x$C_GSR,
        main="Two Boxplots",
        xlab="Treatment and Control",
        ylab="Med-GSR / Ctrl-GSR",
        col="orange",
        border="brown"
)
hist(x$T_GSR, main="Histogram Meditation GSR")
hist(x$C_GSR, main="Histogram Control GSR")