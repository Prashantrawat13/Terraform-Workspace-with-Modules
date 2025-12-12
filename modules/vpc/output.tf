output "vpc_id" {
  value       = aws_vpc.My-VPC.id
  description = "VPC ID to be used on other modules"
}


output "public_subnet_A_id" {
  value       = aws_subnet.Public_Subnet_A.id
  description = "Public Subnet A ID to be used on other modules"
}

output "public_subnet_B_id" {
  value       = aws_subnet.Public_Subnet_B.id
  description = "Public Subnet B ID to be used on other modules"
}

output "app_private_subnet_1_id" {
  value       = aws_subnet.App_Private_subnet_A.id
  description = "App Private Subnet A ID to be used on other modules"
}

output "app_private_subnet_2_id" {
  value       = aws_subnet.App_Private_subnet_B.id
  description = "App Private Subnet B ID to be used on other modules"
}

output "db_private_subnet_1_id" {
  value       = aws_subnet.DB_Private_subnet_A.id
  description = "DB Private Subnet A ID to be used on other modules"
}

output "db_private_subnet_2_id" {
  value       = aws_subnet.DB_Private_subnet_B.id
  description = "DB Private Subnet B ID to be used on other modules"
}

