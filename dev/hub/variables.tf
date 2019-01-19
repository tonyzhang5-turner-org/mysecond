# Application specific variables
variable "name" {
  default = "nba-dalton-hub-www"
}

variable "environment" {
  default = "dev"
}

variable "products" {
  default = "nba-dalton-hub-www:dev"
}

variable "asg_min_instances" {
  default = "1"
}

variable "asg_max_instances" {
  default = "5"
}

variable "asg_desired_instances" {
  default = "2"
}

variable "conftag" {
  default = "PROD"
}

# DEV uses internal ELB; private-1d/private-2d can't both be assigned to an ELB (same AZ), so override is needed
variable "lb_specific_zone_identifiers" {
  default = "subnet-008479c8f184dc7b8,subnet-073389de95a3f1c74"
}
variable "asg_specific_zone_identifiers" {
  default = "subnet-008479c8f184dc7b8,subnet-073389de95a3f1c74"
}

# Instance specific variables
variable "package_size" {
  default = "1x2x8-t2"
}

variable "aws_instance_type" {
  default = "t2.small"
}

variable "lvm" {
  default = ""
}

variable "mkfs" {
  default = ""
}

# ELB variables
variable "elb_listener_ssl_arn" {
  default = "arn:aws:acm:us-east-1:094123751301:certificate/929d86a0-b1b7-4844-983a-61275ef39945"
}

variable "lb_ssl_listener_policy_name" {
  default = "ELBSecurityPolicy-TLS-1-1-2017-01"
}

variable "elb_listener_instance_port" {
  description = "The port the elb will forward traffic to"
  default     = "5000"
}

variable "elb_listener_lb_port" {
  description = "The port the ELB will listen to incoming traffic on"
  default     = "80"
}

variable "elb_health_check_target" {
  description = "The target of the heath check."
  default     = "/healthcheck.txt"
}

variable "elb_health_check_healthy_threshold" {
  description = "The number of checks before the instance is declared healthy"
  default     = "3"
}

variable "elb_health_check_unhealthy_threshold" {
  description = "The number of checks before the instance is declared unhealthy"
  default     = "3"
}

variable "elb_health_check_timeout" {
  description = "The length of time before the check times out"
  default     = "5"
}

variable "elb_health_check_interval" {
  description = "The interval between health checks"
  default     = "30"
}
