resource "aws_instance" "roboshop_components" {
  for_each      = var.components[terraform.workspace]
  ami           = data.aws_ami.roboshop_image.id
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.Allow_SSH_HTTP.id]
  tags = {
    "Name" = "${each.key}-${terraform.workspace}"

  }

}


resource "aws_security_group" "Allow_SSH_HTTP" {

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      description = ingress.value.description
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks

    }


  }

  egress {
    description = "Allow All Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Allow_SSH_HTTP"
  }

}
