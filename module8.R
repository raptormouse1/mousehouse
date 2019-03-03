roster<-read.table(file.choose(),header = TRUE,sep = ",")
#import and read the wanted file chosen from your documents
#in this case, it's "Assignment 6 Dataset"
#also named it roster
install.packages("pryr")
install.packages("plyr")
#install packages pryr and plyr
View(roster)
#shows the full table for the dataset "roster"
studentavg<-ddply(roster,"Sex",transform,Grade.Average=mean(Grade))
#makes it so you can find the mean grades of both the males and females in the class
#also named it studentavg so it can be pulled up easier
studentavg
write.csv(studentavg,file = "studentavg.csv")
#saves studentavg as a .csv file onto the computer and can be imported back as a full table not in the console
inames<-subset(roster,grepl("i",roster$Name, ignore.case = TRUE))
#makes it so you can create a list of names in the roster who contain the letter i and ignores case sensitivity
inames
#creates said list of names
write.csv(inames,file = "inames.csv")
#makes a comma separated values file that can be opened in word, notepad, and whatever else you feel like
write.table(inames,file = "inames2.xls")
#creates a table document that can be opened in excel and other table programs