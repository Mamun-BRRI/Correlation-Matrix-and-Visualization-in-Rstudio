##### Correlation matrix analysis
R<-read.csv("Data.csv")
R
attach(R)

####
library(metan)

CM<-corr_coef(R[1:9])
plot(CM,reorder = FALSE)
###########

sink("Correlation matrix.txt")
CM
sink()

#############

library(ggplot2)

ggsave("Figure.png", height=10, width=10,dpi = 250)
