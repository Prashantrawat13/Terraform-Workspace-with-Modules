module "vpc" {
  source = "./modules/vpc"

  #   aws_secret_key = var.aws_secret_key
  #   aws_access_key = var.aws_access_key
  region = var.region

  VPC_Name       = var.VPC_Name
  VPC_CIDR_BLOCK = var.VPC_CIDR_BLOCK

  public_subnet_name       = var.public_subnet_name
  public_subnet_CIDR_BLOCK = var.public_subnet_CIDR_BLOCK
  public_subnet_region     = var.public_subnet_region

  internet_gw_name = var.internet_gw_name

  private_subnet_name       = var.private_subnet_name
  private_subnet_CIDR_BLOCK = var.private_subnet_CIDR_BLOCK
  private_subnet_region     = var.private_subnet_region

  nat_gateway_name = var.nat_gateway_name

  public_route_table_name            = var.public_route_table_name
  Internet_gw_destination_cidr_block = var.Internet_gw_destination_cidr_block

  private_route_table_name      = var.private_route_table_name
  NAT_gw_destination_cidr_block = var.NAT_gw_destination_cidr_block
}
