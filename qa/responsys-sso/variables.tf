# Application specific variables
variable "name" {
  default = "nba-responsys-sso"
}

variable "environment" {
  default = "qa"
}

variable "products" {
  default = "nba-dalton-responsys-app:qa,nba-dalton-sso-app:qa,nba-dalton-uploader-app:qa"
}

variable "asg_min_instances" {
  default = "1"
}

variable "asg_max_instances" {
  default = "4"
}

variable "asg_desired_instances" {
  default = "1"
}

variable "conftag" {
  default = "PROD"
}

# Instance specific variables
variable "package_size" {
  default = "2x4x8-t2"
}

variable "aws_instance_type" {
  default = "t2.medium"
}

variable "lvm" {
  default = ""
}

variable "mkfs" {
  default = ""
}

