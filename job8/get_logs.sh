#./bin/bash
grep -c "session opened" /var/log/auth.log > a
Date=$(date +%d-%m-%Y-%H:%M)

tar -zcvf a.tar.gz a
rm a
mv a.tar.gz /home/alyssa/Scripts/job8/Backup
cd Backup/
mv a.tar.gz number_connection_$Date.tar.gz

