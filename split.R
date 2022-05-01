#read in the data
x <- read.csv("DentMed.csv", header = TRUE)

#split data based on male control
x.split <- split(x, x$Gender) # splits data based on gender 
male.med<- x.split$Male[1:23,]
male.control <- x.split$Male[24:47,]
hist(male.control$GSR,
     main = "GSR Control", 
     ylab = "GSR Index", 
     xlab = "GSR Value",
     col = "lightblue",
     ylim = c(0,10),
     xlim = c(4,10))

#split data based on male meditation
hist(male.med$GSR,
     breaks = 8,
     main = "GSR Meditation", 
     ylab = "GSR Index", 
     xlab = "GSR Value",
     col = "orange",
     ylim = c(0,10),
     xlim = c(4,10))

#Box plot with filter based on male/control
x$VNRS <- NULL
filter(x, x$Gender=="Male", x$Treatment == "Control")
boxplot(x$GSR ~ x$Treatment, 
        main="Male GSR", 
        ylab = "GSR Index", 
        xlab = "Control & Meditation", 
        col = c("orange","blue"),
        notch=FALSE,
        frame.plot=FALSE,
        boxwex=0.8)



