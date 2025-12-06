# variable "aws_secret_key" {}

# variable "aws_access_key" {}

variable "region" {}

############
## VPC #####
############

variable "VPC_Name" {}

variable "VPC_CIDR_BLOCK" {}


############
## Subnet ##      || Public Subnet Variables
############

variable "public_subnet_name" {}

variable "public_subnet_CIDR_BLOCK" {}

variable "public_subnet_region" {}


#######################
## Internet Gateway ##
#######################

variable "internet_gw_name" {}



############
## Subnet ##      || Private Subnet Variables  
############

variable "private_subnet_name" {}


variable "private_subnet_CIDR_BLOCK" {}


variable "private_subnet_region" {}



#####################
### NAT-gateway ####
#####################


variable "nat_gateway_name" {}



#############################
### Public Route-table #####
############################


variable "public_route_table_name" {}


variable "Internet_gw_destination_cidr_block" {}



#############################
### Private Route-table #####
############################


variable "private_route_table_name" {}


variable "NAT_gw_destination_cidr_block" {}