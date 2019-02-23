beaver1
#data set in R
plot(beaver1$time,beaver1$temp)
#gives a plot graph of beaver1's temp over time
tim<-print(beaver1$time)
tim
#prints all the times that the temperature was taken (once every 10 minutes)
class(tim)
#shows the type of class. In this case, numeric.
tem<-print(beaver1$temp)
#prints all of beaver1's temperatures
class(tem)
#tells me the type of class is numeric
class(tem)<-"beaverbutt"
class(tem)
#class is now known as beaverbutt instead of numeric. I got annoyed, okay?
tem
#prints everything about tem, incl. that the attr(,"class") is now "beaverbutt"
mode(tem)
#prints that tem is still a numeric value
edit(tem)
#shows the full structure, including that is has a class of "beaverbutt"
