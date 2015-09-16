# imessageawk
Clean up your exported iMessages to a globally compatible format.

----------------------------------------------------------
Purpose: Ever wanted to be able to export your messages on an iphone and read them as a compatible format 
across all platforms? i.e. html, txt, pdf, etc.

**IMPORTANT**
  The only way you will be able to export your messages, i.e. the .db containing all of your messages,
  is to either jailbreak your phone or backup your iPhone in Itunes and somehow extract this .db file
  from the backup.



Once you have the .db file, you export the data from this database file at this website: http://www.smsiphone.org/
You can export these to various formats: pdf, csv, pdf.

**IMPORTANT**
  At the moment, this script only works with the .csv format. In the future this script will become more flexible.
  
These are not that readable as they come. This is where this pretty.awk script comes in.

This script currently works using a strip.sed script that singles out your messages to only one sender, 
i.e. from the number +18005555555. Keep in mind that this removes all the other number's conversations,
so please make sure that you do not overwrite the original file when using the strip.sed script.

You will now need to run the awk script on a Unix system, and specify an output file with the respective file extension.

> awk -f pretty.awk my_messages.csv > pretty_messages.txt

**IMPORTANT**
  Once a working prototype of the .awk script is released, a .bash file will be included to simplify the process.

----------------------------------------------------------

******TO-DO*******
-Improvements:
1) add switch that allows you to specifically pretty up 1 conversation.
2) add switch to specify your output format (html, txt, etc.)
3) add a switch that specifies the input format (html, csv, pdf, etc.)

4) re-write this script in perl
