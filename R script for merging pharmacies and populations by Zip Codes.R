###Here's how to merge in R####
###It's way easier than in excel, thanks to the tidy verse which is essentially made for this exact thing###
###I downloaded the excel files as CSV files, and that's how we'll read them in##
##I'm setting where I want R to read the files in from since I use R a lot and am trying to stay organized###
##Organization is a struggle for me###
setwd("/Users/f0049jv/Desktop/Data Requests/datamerge")
### read in the files using the "read.csv" 
pharms = read.csv("To merge - Pharmacies by US Zip Code.csv")
pop = read.csv("To merge - Total populations by zip code.csv")
###we're gonna combine the two data sets and save them into a super data set###
### we're going to merge them by zip code, but we could merge them through any variables###
zips = merge(pharms, pop, by="Zip.Code")
###Let's double check that it did what we want###
head(zips)
##and viola, it takes three steps, which is why I love R, we'll export it to a csv for your purposes##
write.csv(zips, file = "Pharmacies and Zip Codes by Population.csv")
