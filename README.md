# imessageawk
Clean up your exported iMessages to a globally compatible format.

----------------------------------------------------------
Purpose: Ever wanted to be able to export your messages on an iphone/android and read them as a compatible format 
across all platforms? i.e. html, txt, pdf, etc.

**IMPORTANT**

  With a jailbroken iPhone, you can get your .db file from the directory: 
  >/var/mobile/Library/SMS/sms.db
  
  With a jailed iPhone, you would have to backup your iPhone in iTunes and rip the .db from the 
  backup file. Instructions on how to do this: http://www.smsiphone.org/
  
  For Android users, your .db file is easier to get to. Once your device is rooted, you can access
  your .db file under /data/databases/com.android.providers/mmssms.db

Once you have the .db file (for iPhones), you export the data from this database file at this website: http://www.smsiphone.org/

Or you can optionally use some program like sqlite to export the .db file to a .csv format.

**IMPORTANT**

  At the moment, this script only works with the .csv format. In the future this script will become more flexible.
  Eventually it will work straight on the .db file, excluding the format conversion middleman.
  
The file formats your message data comes in is not so readable, therefore it is prettied up by the awk script.

This script currently works using a strip.sed script that singles out your messages to only one sender, 
i.e. from the number +18005555555. Keep in mind that this removes all the other number's conversations,
so please make sure that you do not overwrite the original file when using the strip.sed script.

You will now need to run the awk script on a Unix system, and specify an output file with the respective file extension.

> awk -f pretty.awk my_messages.csv > pretty_messages.txt

**IMPORTANT**
  Once a working prototype of the .awk script is released, a .bash file will be included to simplify the process.

----------------------------------------------------------

**TO-DO**

1) cut out conversion middle-man
2) add switch that allows you to specifically pretty up to 1 conversation.
3) add switch to specify your output format (html, txt, etc.)
4) add a switch that specifies the input format (html, csv, pdf, etc.)

5) re-write this script in perl?
