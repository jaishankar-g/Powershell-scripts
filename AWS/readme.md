#execute the below command on AWS CLI
aws ec2 describe-instances --query "Reservations[*].Instances[*].{Instance:InstanceId,Subnet:SubnetId,InstanceType:InstanceType,Os:Os}"

#export output to text file
#give the output file path in the ps1 script

#execute the ps1 scipt
