Name <- c("Jeb","Donald","Ted","Marco","Carly","Hilary","Bernie") #defining name
ABC_Political_Poll_Results <- c(4,62,51,21,2,14,15) #define ABC poll results, though if I didn't need the name in there to know what it was about I'd just put ABC
CBS_Political_Poll_Results <- c(12,75,43,19,1,21,19) #see above rant
poll <- cbind(Name,ABC_Political_Poll_Results,CBS_Political_Poll_Results) #putting them all together into a matrix with quotations when run. 
poll #Quotations everywhere, but everything is categorized so you know how many people voted for whom on what platform
poll.df <- data.frame(Name,ABC_Political_Poll_Results,CBS_Political_Poll_Results) #makes a data.frame, no quotations. In my opinion, much easier to read
poll.df[1] #gives all the data in column 1. In this case, all the names
poll.df[1,3] #info from row 1, column 3
mean(poll.df[1:7,3]) #average number of votes from CBS
mean(CBS_Political_Poll_Results) #an easier way to write the above