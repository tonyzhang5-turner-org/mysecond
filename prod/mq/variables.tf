# Application specific variables
variable "name" {
  default = "nba-dalton-mq"
}

variable "environment" {
  default = "prod"
}

variable "products" {
  default = "nba-dalton-mq:prod"
}

variable "asg_min_instances" {
  default = "1"
}

variable "asg_max_instances" {
  default = "5"
}

variable "asg_desired_instances" {
  default = "3"
}

variable "conftag" {
  default = "PROD"
}

# Instance specific variables
variable "package_size" {
  default = "8x15x8-c4"
}

variable "aws_instance_type" {
  default = "c4.2xlarge"
}

variable "lvm" {
  default = ""
}

variable "mkfs" {
  default = ""
}
