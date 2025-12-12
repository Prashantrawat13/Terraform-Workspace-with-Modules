variable "external_ALB_sg_name" {
  description = "The name of the Security Group for the external ALB"
  type        = string
}


variable "internal_ALB_sg_name" {
  description = "The name of the Security Group for the internal ALB"
  type        = string
}



variable "app_tier_sg_name" {
  description = "The name of the Security Group for the App Tier instances"
  type        = string
}


variable "app_tier_ingress_IP" {
  description = "The IP address allowed to access the App Tier instances"
  type        = string
}


variable "db_tier_sg_name" {
  description = "The name of the Security Group for the DB Tier RDS instance"
  type        = string
}
