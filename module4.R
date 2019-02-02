Freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,.3,0.4,0.9,0.2)
# frequency of hospital visits by patients during 12 month period
BP <- c(103,87,32,43,59,109,78,205,135,178)
# blood pressure of each individual patient
First <- c(1,1,1,1,0,0,0,0,NA,1)
# first doctor eval of BP, where 1=bad and 0=good
Second <- c(0,0,1,1,0,0,1,1,1,1)
Final <- c(0,1,0,1,0,1,0,1,1,1)
# second and final evals of BP, where 0=low and 1=high
# first doc needs to go back and relearn proper charting protocol
# seriously, consistency is important
hospital.df <- data.frame(Freq,BP,First,Second,Final)
# Just to see what the difference is between a data frame and a boxplot
# There is a very large difference
boxplot(Freq,BP,First,Second,Final)
# first attempt at boxplot. BP is too large for other values and should be separated as such:
boxplot(Freq)
boxplot(BP)
boxplot(First,Second,Final)
# 0-1 integers in a boxplot are not very useful
hist(BP)
# frequency of BP listed in intervals of 50
hist(First)
# frequency of patients being 'good' (0) or 'bad' (1), leaving out the NA
hist(Second)
# frequency of patients being listed as 'low' (0) or 'high' (1)
hist(Final)
# frequency of patients being listed as 'low' (0) or 'high' (1)