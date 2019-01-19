# Application specific variables
variable "name" {
  default = "nba-dalton-hub-www"
}

variable "environment" {
  default = "prod"
}

variable "products" {
  default = "nba-dalton-hub-www:prod"
}

variable "asg_min_instances" {
  default = "1"
}

variable "asg_max_instances" {
  default = "20"
}

variable "asg_desired_instances" {
  default = "8"
}

variable "conftag" {
  default = "PROD"
}

# Instance specific variables
variable "package_size" {
  default = "4x8x8-c4"
}

variable "aws_instance_type" {
  default = "c4.xlarge"
}

variable "lvm" {
  default = ""
}

variable "mkfs" {
  default = ""
}

# ELB variables
variable "elb_listener_ssl_arn" {
  default = "arn:aws:iam::094123751301:server-certificate/NBADaltonHubProd1"
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

