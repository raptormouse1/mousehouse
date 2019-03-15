dogs <- read.csv("C:/Users/Mouse/Downloads/dogs.csv")
#imports file from C:/ drive
View(dogs)
#pulls up data table to view
drange<- range(0, dogs$mvo, dogs$lvp)
#will show range that includes the higher mvo without losing lvp
plot(dogs$lvp, type = "o", col="blue", ylim = drange, axes = FALSE, ann = FALSE)
#there was absolutely no reason to make them line plots except I felt like it
#also making it sure that the ylimit covers the higher numbers of mvo
axis(1, at=1:7)
#define x-axis with 1-7 for the number of dogs
axis(2, las=1, at=20*0:drange[2])
#define y-axis starting at 0 and ending at the max of drange
##in this case, ends just above the highest mvo value
box()
#draws a box around it
lines(dogs$mvo, type = "o", col="red")
#adds mvo to plot graph. If did plot, we'd end up with a separate graph
title(main = "Cardiac Levels per Domestic Dog")
title(xlab = "Dogs")
title(ylab = "Levels")
#labeling each of the axes and the graph overall
MVO<- dogs$mvo
LVP<-dogs$lvp
#some renaming I should have done earlier, but live and let learn
legend(1,drange[2],c("MVO","LVP"), cex=0.8, col=c("red","blue"), pch = 21:22, lty = 1:2)
#create legend so people know what the points are for
install.packages("lattice")
#install lattice package
library(lattice)
#library it so I don't have to type lattice:: before every code
ndog<-1:7
xyplot(LVP+MVO~ndog,dogs, 
       xlab = "Dog Number", ylab = "LVP and MVO", main="LVP and MVO Measurements per Dog",
       #label the plot and x and y axes
       pch=c(6,4), 
       #make the points x's and triangles
       auto.key = list(space="top",columns=2,title="Legend", pch=c(6,4), lines=FALSE, POINTS=TRUE, cex.title=1.2))
       #makes a legend for the plot graph
xyplot(LVP+MVO~ndog,dogs,
       xlab = "Dog Number",
       ylab = "LVP and MVO", main="LVP and MVO Measurements per Dog", pch=c(6,4), 
       auto.key = TRUE)
       #a secondary version of the same graph with an autofill-legend
install.packages("ggplot2")
library(ggplot2)
#install and library ggplot2
qplot(x=MVO,y=LVP,data = dogs,geom = "point")
#makes an mvo by lvp plot
