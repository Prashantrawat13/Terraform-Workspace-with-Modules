output "Name of External ALB Security Group" {
  value       = var.external_ALB_sg_name
  description = "Security Group Name for External ALB"
}


output "Name of Internal ALB Security Group" {
  value       = var.internal_ALB_sg_name
  description = "Security Group Name for Internal ALB"
}


output "Name of App Tier Security Group" {
  value       = var.app_tier_sg_name
  description = "Security Group Name for App Tier Instances"
}


output "Name of DB Tier Security Group" {
  value       = var.db_tier_sg_name
  description = "Security Group Name for DB Tier RDS Instance"
}