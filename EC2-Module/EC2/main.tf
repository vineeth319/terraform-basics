resource "aws_instance" "components" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = var.tags
}
