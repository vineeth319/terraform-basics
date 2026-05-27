module "roboshop_ec2" {
    source = "../EC2"
    instance_type = var.instance_type
    tags = var.tags
}