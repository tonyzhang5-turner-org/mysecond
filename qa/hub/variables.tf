# Application specific variables
variable "name" {
  default = "nba-dalton-hub-www"
}

variable "environment" {
  default = "qa"
}

variable "products" {
  default = "nba-dalton-hub-www:qa"
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
  default = "arn:aws:acm:us-east-1:094123751301:certificate/c705761d-aeb8-4424-a788-86ab4d4360e7"
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

