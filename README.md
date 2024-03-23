# TrueNAS_change_arc_size
Script for checking if arc size was changed, and changing it back. 


## Usage
Set **arc_check.sh** file to run with cron, InitScript or both.

In **arc_check.sh** change ***<CHANGE_ME>*** value to match the size you want. For converting GiB to bytes I've used [this site](https://www.dataunitconverter.com/gibibyte-to-byte). 


### Crontab

Go to **System Settings -> Advanced -> Cron Jobs** 

Click **Add**

In **Command** filed you need write path that contains your script, as follows:

/dir/to/file/arc_check.sh 

You can run this script as root, but you should set your permission up so that a special user can run and edit zfs_arc_max file.

In **Schedule** you set it to run every at minute 0 past every 4th hour.

00 */4 * * * 

You can also uncheck Hide Standard Output/Error. 

### InitScript

You can configure it in TrueNAS GUI under System Settings > Advanced > Init/Shutdown Scripts