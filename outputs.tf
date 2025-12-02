output "security_group_id" {
  value = module.sg.security_group_id
}

output "instance_public_ip" {
  value = module.ec2.public_ip
}