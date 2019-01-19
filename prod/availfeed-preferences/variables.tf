# Application specific variables
variable "name" {
  default = "nba-availfeed-prefs"
}

variable "environment" {
  default = "prod"
}

variable "products" {
  default = "nba-dalton-availabilityfeed-app:prod,nba-dalton-preferences-app:prod"
}

variable "asg_min_instances" {
  default = "1"
}

variable "asg_max_instances" {
  default = "8"
}

variable "asg_desired_instances" {
  default = "3"
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

