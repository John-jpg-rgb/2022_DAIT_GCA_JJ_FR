#read in the data
x <- read.csv("DentMed.csv", header = TRUE)

#split data based on male control
x.split <- split(x, x$Gender) # splits data based on gender 
male.med<- x.split$Male[1:24,]
male.control <- x.split$Male[24:47,]
hist(male.control$VNRS,
     breaks = 6,
     main = "VNRS Control", 
     ylab = "VNRS Index", 
     xlab = "VNRS Value",
     col = "lightblue",
     ylim = c(0,10),
     xlim = c(4,10))

#split data based on male meditation
hist(male.med$VNRS,
     breaks = 6,
     main = "VNRS Meditation", 
     ylab = "VNRS Index", 
     xlab = "VNRS Value",
     col = "orange",
     ylim = c(0,10),
     xlim = c(4,10))

#Box plot with filter based on male/control
x$GSR <- NULL
filter(x, x$Gender=="Male", x$Treatment == "Control")
boxplot(x$VNRS ~ x$Treatment, 
        main="Male VNRS", 
        ylab = "VNRS Index", 
        xlab = "Control & Meditation", 
        col = c("orange","blue"),
        notch=FALSE,
        frame.plot=FALSE,
        boxwex=0.8)



