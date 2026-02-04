output "public_ip" {
  value = aws_instance.public_test.public_ip
}

output "app_private_ip" {
  value = aws_instance.app_test.private_ip
}

output "connect_command" {
  value = "ssh -A ec2-user@${aws_instance.public_test.public_ip}"
  description = "使用此指令連入跳板機"
}