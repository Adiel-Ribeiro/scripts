######################################### This script shutdowns ec2 instances #####################################
#!/bin/bash 
###################################################################################################################
for ec2 in $(aws ec2 describe-instances | grep InstanceId | awk '{print $2}' | sed 's/"//' \
| sed 's/"//' | sed 's/,//')
do
aws ec2 stop-instances --instance-ids $ec2
done
#exit 0