- Attach Routing Table to subnet is important to avoid VPC using default Main Table.
- Security Groups are instance level only.
- Attach Internet Gateway manually to the VPC is needed as this is not done automatically.
- You can check vpc-id with the command: aws ec2 describe-vpcs --region '$region' 
    instead of going to the console.
