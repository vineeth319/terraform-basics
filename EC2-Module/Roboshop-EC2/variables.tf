variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "tags" {
  type = map(string)

  default = {
    Name        = "frontend-dev"
    Environment = "dev"
    Project     = "roboshop"
    Terraform   = "true"
    Owner       = "devops"
  }
}
