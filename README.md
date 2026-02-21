# AWS Basic VPC + EC2 Public Web Server Connectivity Test

# ==================================
## In this project I will document the creation of a basic AWS architecture to deploy \
   a static web site in an EC2 instance within a custom VPC.
# ==================================

## Architecture
# ==================================
- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group (HTTP inbound traffic allowed)
- EC2 (Amazon Linux Machine)

## Inbound Traffic flow
# ==================================
Internet -> Internet Gateway -> Subnet -> EC2

## Additional info
# ==================================
- Instance was terminated after the lab to avoid extra charges.
- Limited inbound traffic via port 80 (HTTP).
- Manual infrastructure created using AWS console and replicated through CLI.

## Learning objectives
# ==================================
- Get to know how to create a basic VPC from scratch
- Familiarize with Routing tables and subnets in a VPC
- Attach a Internet Gateway to make public available a subnet

## Next steps
# ==================================
- Add code in the cli script to confirm when a resource has been created successfully.
  Once the resource creation has been confirmed, the next one starts.
- Use a S3 bucket instead of a EC2 VM to host the webpage.