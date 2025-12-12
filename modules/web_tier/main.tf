##################################
######## Target Group ###########     || Web-Tier
##################################


resource "aws_lb_target_group" "web_tier-alb-target-group" {
  name     = var.ex_alb_taget_group_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.vpc.vpc_id

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = var.ex_alb_taget_group_name
  }
}





######################################
####### Application Load Balancer ####    || Web-Tier
######################################


resource "aws_lb" "External-alb" {
  name               = var.external_alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.sg_ex_alb_name]
  subnets = [
    module.vpc.public_subnet_A_id,
    module.vpc.public_subnet_B_id
  ]

  enable_deletion_protection = var.web-alb-deletion-protection

  tags = {
    Name = var.external_alb_name
  }
}





############################
####### Listener Port ######    || Web-Tier
############################


resource "aws_lb_listener" "web_http_listener" {
  load_balancer_arn = aws_lb.web_tier-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_tier-alb-target-group.arn
  }
}