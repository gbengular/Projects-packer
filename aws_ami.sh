#!/bin/bash

# Define your AWS region and AMI ID
region="us-west-1"  
ami_id="bootcamp32-packer-ubuntu-ami-2"  # Replace with the AMI ID you want to check

# Check if the AMI exists in the specified region
aws ec2 describe-images --region "$region" --image-ids "$ami_id" &> /dev/null

if [ $? -eq 0 ]; then
  echo "AMI $ami_id exists in region $region."
else
  echo "AMI $ami_id does not exist in region $region."
fi