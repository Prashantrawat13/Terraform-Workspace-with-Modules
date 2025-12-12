
# Web Tier Module

In this module, we are creating the following resources for the Web Tier of our application:

1. **Application Load Balancer (ALB)**:         || **External ALB**
   - An Application Load Balancer to distribute incoming traffic across multiple EC2 instances in the Web Tier.
   - Configuration includes setting up listeners, target groups, and health checks.
   - The ALB will be internet-facing to handle requests from users.
  
2. **Target Group**
   - A target group to register the EC2 instances that will serve web traffic.
   - Health check configuration to monitor the health of the registered instances.

3. **Listener**:
   - A target group to register the EC2 instances that will serve web traffic.
   - A listener to forward incoming requests on port 80 (HTTP) to the target group.
