#!/usr/bin/env bash

# AWS Lab: Custom VPC + Public Subnet + EC2 Deployment by Max T.

echo "Creating VPC..."
aws ec2 create-vpc \
--instance-tenancy 'default' \
--cidr-block '10.0.0.0/24' \
--profile <profile-name>