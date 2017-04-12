# timeoutkill
Simple bash script to kill an app after some idle time on Mac OS X.

Very usefull when  you need to close a determined application when you are away for computer. (I wrote it to kill PokerStars app because it can be opened in a single device at the time) 

Just put this script to run on crontab.

## Usage
./timeoutkill <timeout> <program>
Where <timeout> is the ammount of time in seconds that computer needs to be idle and <program> is the name of the program that will be killed.

## Credits
This [thread](http://stackoverflow.com/questions/17964660/how-to-detect-if-user-is-away-in-osx) on StackOverflow
