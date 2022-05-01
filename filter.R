x <- read.csv("DentMed.csv", header = TRUE)
x$VNRS <- NULL
filter(x, x$Gender=="Male", x$Treatment == "Control")
boxplot(x$GSR ~ x$Treatment, 
        main="Male GSR", 
        ylab = "Y Value", 
        xlab = "Control & Meditation", 
        col = c("orange","blue"),
        notch=FALSE,
        frame.plot=FALSE,
        boxwex=0.8)

x <- read.csv("DentMed.csv", header = TRUE)
x$VNRS <- NULL
filter(x, Gender=="Male" & Treatment == "Control")
hist(x$GSR,
     breaks = 12,
     main = "Meditation", 
     ylab = "Y Value", 
     xlab = "X Value",
     col = "purple")









