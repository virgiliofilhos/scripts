awk '$3=="kB"{$2=$2/1024^2;$3="GB";} 1' /proc/meminfo | column -t | grep MemTotal | awk '{ print $2 }'
