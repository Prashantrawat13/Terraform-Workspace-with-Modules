variable "VPC_ID" {
  description = "The ID of the VPC where resources will be created"
  type        = string
}


variable "ex_alb_taget_group_name" {
  description = "The name of the external ALB target group"
  type        = string
}


variable "external_alb_name" {
  description = "The name of the external ALB"
  type        = string
}

variable "sg_ex_alb_name" {
  description = "The name of the external ALB security group"
  type        = string
}


variable "web-alb-deletion-protection" {
  description = "Enable deletion protection for the web tier ALB"
  type        = bool
}
