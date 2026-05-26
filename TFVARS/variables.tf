variable "env" {
  type = string
}

variable "instance_type" {
  type = map(string)
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