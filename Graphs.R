dt <- read.csv("dentistry_meditation1.csv", header = TRUE)
dt$VNRS=NULL
filter(dt,Gender == "Male" , Treatment == "Meditation")
hist(dt$GSR)