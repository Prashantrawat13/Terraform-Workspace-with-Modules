# variable "aws_secret_key" {
#   description = "The AWS secret key."
#   type        = string
# }


# variable "aws_access_key" {
#   description = "The AWS access key."
#   type        = string
# }


variable "region" {
  description = "The AWS region to deploy resources in."
  type        = string
}

############
## VPC #####
############

variable "VPC_Name" {
  description = "The name of the VPC."
  type        = string
}

variable "VPC_CIDR_BLOCK" {
  description = "The CIDR block for the VPC."
  type        = string
}



############
## Subnet ##      || Public Subnet Variables
############

variable "public_subnet_name" {
  description = "The name of the public subnet."
  type        = string
}

variable "public_subnet_CIDR_BLOCK" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "public_subnet_region" {
  description = "The availability zone for the public subnet."
  type        = string
}



#######################
## Internet Gateway ##
#######################

variable "internet_gw_name" {
  description = "The name of the internet gateway."
  type        = string
}


############
## Subnet ##      || Private Subnet Variables  
############

variable "private_subnet_name" {
  description = "The name of the public subnet."
  type        = string
}

variable "private_subnet_CIDR_BLOCK" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "private_subnet_region" {
  description = "The availability zone for the public subnet."
  type        = string
}



#####################
### NAT-gateway ####
#####################


variable "nat_gateway_name" {
  description = "The name of the NAT gateway."
  type        = string
}



#############################
### Public Route-table #####
############################


variable "public_route_table_name" {
  description = "The name of the route table."
  type        = string
}

variable "Internet_gw_destination_cidr_block" {
  description = "The destination CIDR block for the internet gateway route."
  type        = string
}


#############################
### Private Route-table #####
############################


variable "private_route_table_name" {
  description = "The name of the private route table."
  type        = string
}

variable "NAT_gw_destination_cidr_block" {
  description = "The destination CIDR block for the NAT gateway route."
  type        = string
}