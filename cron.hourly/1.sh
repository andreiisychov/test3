#!/bin/bash
cd /home/ubuntu/
rm *.log
touch i{30..40}.log
for i in {30..40}
do
	base64 /dev/urandom | head -c 10000000 > i$i.log
done
rsync -avp /home/ubuntu/*.log root@18.218.73.130:/home/ubuntu/
