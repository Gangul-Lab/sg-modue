variable "sg_name" {
  type = string
}

variable "description" {
  type = string
}

variable "vpc_id" {
  type    = string
  default = "vpc-0f681cf8ba993b181"
}

variable "extra_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = []
}
