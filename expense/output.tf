# output "instance_info" {
#     value=aws_instance.expense
  
# }

output "sg_info" {
    value=aws_security_group.allow_ssh_pr.vpc_id
  
}