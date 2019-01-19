# Customer/project variables
variable "description" {
  default = "https://github.com/turnercode/tz-test-terraform"
}

variable "billing-customer" {
  default = "digitaldba-bill"
}

variable "customer" {
  default = "ids"
}

variable "contact-email" {
  default = "tony.zhang@turner.com"
}

variable "team" {
  default = "ictops"
}

variable "owner" {
  default = "ictops"
}

variable "asg_specific_security_groups" {
 # default = "sg-0eec1445b541d8b31"
 #  default = "sg-5765aa17"
   default = "sg-0cf24f44f70e386e7"
}

variable "lb_specific_security_groups" {
 # default = "sg-044ef045bf0e05bcc"
   default = "sg-5765aa17"
   default = "sg-0cf24f44f70e386e7"
}

variable "aws_ami" {
  default = "ami-3728a521"
}

variable "aws_named_profile" {
  type = "string" # prompted if 'varInitScript.sh' is not run
}

variable "aws_account" {
  type = "string" # prompted if 'varInitScript.sh' is not run
}
