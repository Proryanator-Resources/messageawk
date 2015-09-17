#make the text easier to read by columnizing it
#each time a new day has passed, print the Date on a separate line

BEGIN{
	year = 0
	month = 0
	day = 0

	#months of the year
	months[01] = "January";months[02] = "February";months[03] = "March";months[04] = "April";
	months[05] = "May";months[06] = "June";months[07] = "July";months[08] = "August";
	months[09] = "September";months[10] = "October";months[11] = "November";
	months[12] = "December"
}

#for every line, read in the first field (YEAR-MM-DD) and determine if new day
{
	FS = " "
	#split up the date
	split($1, date, "-")
	
	#FS = " "
	print "TEST"$1
	#update date stats and print out date
	if (day < date[3] || month < date[2] || year < date[1]){
		day = date[3]
		month = date[2]
		year = date[1]
		print"\t\t----------"
		print "\t\t"month,day",",year
		print ""
	}
	
}

#for each line, grab the 2nd field for from, and the 3rd field for the message 
{
	FS = ";"
	#if a 1, the message is sent from you. If a 0, the message is received.
	from = $2
	message = $3
	tab = "";
	
	#add 2 tabs if message is from you.
	if (from == 1)
		tab = "\t\t\t"
	
	#must limit character length to be 25 characters per "line" of message.
	#we will print substring that includes whole words, then shorten message.
	#while (length(message) > 25){
		
	#}
	print (tab)message
}
