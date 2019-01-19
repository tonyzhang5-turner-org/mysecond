# Application specific variables
variable "name" {
  default = "nba-core-freepreview"
}

variable "environment" {
  default = "prod"
}

variable "products" {
  default = "nba-dalton-core-app:prod,nba-dalton-freepreview-app:prod"
}

variable "asg_min_instances" {
  default = "1"
}

variable "asg_max_instances" {
  default = "8"
}

variable "asg_desired_instances" {
  default = "6"
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

