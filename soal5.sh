awk 'NF<13 && tolower($0) !~ /sudo/ && tolower($0) ~ /cron/' /var/log/syslog > /home/trash/modul1/logs
