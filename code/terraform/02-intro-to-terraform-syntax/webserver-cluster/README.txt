Applied the same changes to the beginning of the main.tf file as for the previous examples.

When I first tried this, it would not "apply" because it detected a duplicate security group
with the same name.  To fix this, I needed to find my existing EC2 instances, VPCs, and
security groups and destroy them from the console in the right order.
Lesson:  Destroy all examples created with Terraform.

This example is very complicated.  It includes multiple EC2 instances, an AutoScalingGroup, a VPC, 
and a load balancer.  This is a lot to understand, and the book helps some.
