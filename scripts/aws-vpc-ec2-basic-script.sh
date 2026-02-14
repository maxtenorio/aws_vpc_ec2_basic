#!/usr/bin/env bash

# AWS Lab: Custom VPC + Public Subnet + EC2 Deployment by Max T.

echo "Creating VPC"
# ===================================================================================
# Creating a basic VPC with allocation for 256 addresses
# Replace 'default' on instance-tenancy and '$CIDR-BLOCK' with your needed values
#====================================================================================
aws ec2 create-vpc \
--instance-tenancy 'default' \
--cidr-block '$CIDR-BLOCK' \
-- tags "Key"="Name","Value"="$VPC-NAME-TAG"
# Remove hash if you have another local profile different than 'default'
# --profile 'profile-name'

echo "Creating Subnet"
# ===================================================================================
# Subnet creation with space for 16 available addresses
# Replace 'vpc-id', 'az-id', '$SUBNET-NAME'  and 'CIDR-BLOCK' with your needed values
# ===================================================================================
aws ec2 create-subnet \
--vpc-id 'vpc-id' \
--availability-zone 'az-id' \
--cidr-block 'CIDR-BLOCK'
--tags "Key"="Name","Value"="$SUBNET-NAME"
