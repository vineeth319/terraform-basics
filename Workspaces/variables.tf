variable "components" {
  type = map(map(string))

  default = {
    dev = {
      MongoDB = "t3.micro"
      Backend = "t3.micro"
      Web     = "t3.micro"
    }

    prod = {
      MongoDB = "t3.small"
      Backend = "t3.small"
      Web     = "t3.small"
    }
  }
}


variable "ingress_rules" {
  default = [
    {
      description = "Allow SSH "
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    ,
    {
      description = "Allow HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}
