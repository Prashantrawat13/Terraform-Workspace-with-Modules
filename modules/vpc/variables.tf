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

variable "public_subnet_A_name" {}

variable "public_subnet_A_CIDR_BLOCK" {}

variable "public_subnet_A_region" {}



variable "public_subnet_B_name" {}

variable "public_subnet_B_CIDR_BLOCK" {}

variable "public_subnet_B_region" {}



#######################
## Internet Gateway ##
#######################

variable "internet_gw_name" {}



############
## Subnet ##      || App Private Subnet Variables  
############

variable "app_private_subnet_A_name" {}

variable "app_private_subnet_A_CIDR_BLOCK" {}

variable "app_private_subnet_A_region" {}



variable "app_private_subnet_B_name" {}

variable "app_private_subnet_B_CIDR_BLOCK" {}

variable "app_private_subnet_B_region" {}



############
## Subnet ##      || db Subnet Variables  
############

variable "db_private_subnet_A_name" {}

variable "db_private_subnet_A_CIDR_BLOCK" {}

variable "db_private_subnet_A_region" {}



variable "db_private_subnet_B_name" {}

variable "db_private_subnet_B_CIDR_BLOCK" {}

variable "db_private_subnet_B_region" {}



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