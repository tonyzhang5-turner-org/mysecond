# Application specific variables
variable "name" {
  default = "nba-availfeed-promotions"
}

variable "environment" {
  default = "dev"
}

variable "products" {
  default = "nba-dalton-availabilityfeed-app:dev,nba-dalton-promotions-app:dev"
}

variable "asg_min_instances" {
  default = "1"
}

variable "asg_max_instances" {
  default = "5"
}

variable "asg_desired_instances" {
  default = "1"
}

variable "conftag" {
  default = "PROD"
}

# Instance specific variables
variable "package_size" {
  default = "1x4x4-m3"
}

variable "aws_instance_type" {
  default = "m3.medium"
}

variable "lvm" {
  default = ""
}

variable "mkfs" {
  default = ""
}
