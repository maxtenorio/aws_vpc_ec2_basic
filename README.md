# AWS Basic VPC + EC2 Public Web Server Connectivity Test

In this project I will document the creation of a basic AWS architecture to deploy
a static web site in an EC2 instance within a custom VPC.

## Architecture
- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group (HTTP inbound traffic allowed)
- EC2 (Amazon Linux Machine)

## Inbound Traffic flow
Internet -> Internet Gateway -> Public Subnet -> EC2

## Additional info
- Instance was terminated after the lab to avoid extra charges.
- Limited inbound traffic via port 80 (HTTP).
- Manual infrastructure created using AWS console.

## Lessons learned
- Attach Routing Table to subnet is important to avoid VPC using default Main Table.
- Security Groups are instance level only.
- Attach Internet Gateway manually to the VPC is needed as this is not done automatically.
