# TrueNAS_change_arc_size
Script for checking if arc size was changed, and changing it back. 


## Usage
Set **arc_check.sh** file to run with cron, InitScript or both.

In **arc_check.sh** change ***<CHANGE_ME>*** value to match the size you want. For converting GiB to bytes I've used [this site](https://www.dataunitconverter.com/gibibyte-to-byte). 


### Crontab
**1>** redirects stdout to /tmp/arc_size.log

**2>** stderr to /tmp/arc_size.errlog

<_cronexpression_> /dir/to/file/arc_check.sh 1> /tmp/arc_size.log 2> /tmp/arc_size.errlog


### InitScript

You can configure it in TrueNAS GUI under System Settings > Advanced > Init/Shutdown Scripts