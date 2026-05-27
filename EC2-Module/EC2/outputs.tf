output "private_ip" {
  value = aws_instance.components.private_ip
}

output "public_ip" {
  value = aws_instance.components.public_ip
}

output "id" {
  value = aws_instance.components.id
}