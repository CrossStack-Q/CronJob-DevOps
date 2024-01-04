#!/bin/bash

############
# Author : Anurag Sharma
# Date : 4 Jan 2024
#
# Version : v1
# This script will report the aws uasge

set -x

# list s3 buckets
echo "print the s3 bucket"
aws s3 ls

# list EC2 Instances
# aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

aws ec2 describe-instances

# list lambda
aws lambda list-functions

# list IAM users
aws iam list-users
