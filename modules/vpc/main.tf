resource "aws_vpc" "My-VPC" {
  cidr_block = var.VPC_CIDR_BLOCK

  tags = {
    Name = var.VPC_Name
  }
}


######### Subnets #########

resource "aws_subnet" "Public_Subnet" {
  vpc_id            = aws_vpc.My-VPC.id
  cidr_block        = var.public_subnet_CIDR_BLOCK
  availability_zone = var.public_subnet_region

  tags = {
    Name = var.public_subnet_name
  }
}



resource "aws_subnet" "Private_subnet" {

  vpc_id            = aws_vpc.My-VPC.id
  cidr_block        = var.private_subnet_CIDR_BLOCK
  availability_zone = var.private_subnet_region

  tags = {
    Name = var.private_subnet_name
  }
}

############ Internet Gateway ###########


resource "aws_internet_gateway" "Internet_Gateway" {

  vpc_id = aws_vpc.My-VPC.id

  tags = {
    Name = var.internet_gw_name
  }
}



########### NAT Gateway ###########

resource "aws_eip" "NAT-EIP" {

  domain = "vpc"

  tags = {
    Name = "My-NAT-EIP"
  }
}


resource "aws_nat_gateway" "NAT_Gateway" {
  allocation_id = aws_eip.NAT-EIP.id
  subnet_id     = aws_subnet.Public_Subnet.id

  tags = {
    Name = var.nat_gateway_name
  }
}


######### Public Route Table #########

resource "aws_route_table" "Public_Route_table" {

  vpc_id = aws_vpc.My-VPC.id

  tags = {
    Name = var.public_route_table_name
  }
}

resource "aws_route" "Internet-Route" {

  route_table_id         = aws_route_table.Public_Route_table.id
  destination_cidr_block = var.Internet_gw_destination_cidr_block
  gateway_id             = aws_internet_gateway.Internet_Gateway.id
}


resource "aws_route_table_association" "Public-Subnet-Association" {

  subnet_id      = aws_subnet.Public_Subnet.id
  route_table_id = aws_route_table.Public_Route_table.id
}





######### Private Route Table #########

resource "aws_route_table" "Private_Route_table" {

  vpc_id = aws_vpc.My-VPC.id

  tags = {
    Name = var.private_route_table_name
  }
}


resource "aws_route" "NAT-Route" {

  route_table_id         = aws_route_table.Private_Route_table.id
  destination_cidr_block = var.NAT_gw_destination_cidr_block
  nat_gateway_id         = aws_nat_gateway.NAT_Gateway.id
}


resource "aws_route_table_association" "Private-Subnet-Association" {

  subnet_id      = aws_subnet.Private_subnet.id
  route_table_id = aws_route_table.Private_Route_table.id
}