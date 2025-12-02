variable "access_key" {
  type    = string
  default = "xxxxxxxxxxxxxxxxxxxxxxxxxx"
}

variable "secret_key" {
  type      = string
  sensitive = true
  default   = "xxxxxxxx"
}

variable "region" {
  type    = string
  default = "ap-south-2"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0f681cxxxxxxxx"
}

variable "subnet_id" {
  type    = string
  default = "subnet-001cxxxxxxx"
}

variable "ami_id" {
  type    = string
  default = "ami-0a9098xxxxxxxx" # Amazon Linux 2 (Hyd)
}