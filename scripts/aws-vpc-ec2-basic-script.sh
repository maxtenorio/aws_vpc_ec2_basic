
# AWS Lab: Custom VPC + Public Subnet + EC2 Deployment by Max T.
# This command template set is for the creaton of the VPC and public subnet only

echo "Creating VPC..."
# Replace 'default' on instance-tenancy and values starting with $ as needed.
# ====================================================================================
aws ec2 create-vpc \
--instance-tenancy 'default' \
--cidr-block '$CIDR-BLOCK' \
-- tag-specifications 'ResourceType=vpc,Tags=[{Key=$KEY,Value=$VALUE}]'


echo "Creating SUBNET..."
# Replace values starting with $ as needed. For example: '$AZ-ID' -> 'us-east-1a'
# ===================================================================================
aws ec2 create-subnet \
--vpc-id '$VPC-ID' \
--availability-zone '$AZ-ID' \
--cidr-block '$CIDR-BLOCK' \
-- tag-specifications 'ResourceType=subnet,Tags=[{Key=$KEY,Value=$VALUE}]'


echo "Creating ROUTE-TABLE..."
# Replace values starting with $ as needed.
# ===================================================================================
aws ec2 create-route-table \
--vpc-id '$VPC-ID' \
--tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=$NAME}]'


echo "Creating INTERNET-GATEWAY..."
# WARNING: The next steps will make public your created subnet, be careful.
# Replace values starting with $ as needed.
# ===================================================================================
aws ec2 create-internet-gateway \
--tag-specifications 'ResourceType=internet-gateway,Tags=[{Key=Name,Value=$NAME}]'


echo "Attaching IGW to VPC..."
# Replace values starting with $ as needed.
# ===================================================================================
aws ec2 attach-internet-gateway \
--internet-gateway-id '$IGW-ID' \
--vpc-id '$VPC-ID'