#default = ["db","backend","frontend"]
output "db_info_private" {
    value=aws_instance.expense[0].private_ip
  
}

output "backend_info_private" {
    value=aws_instance.expense[1].private_ip  
}

output "frontend_info_public" {
    value=aws_instance.expense[2].public_ip
  
}

# #resource "aws_instance" "expense"
# output "instance_info" {
#     value=aws_instance.expense
  
# }

# #resource "aws_route53_record" "expense"
# output "R53_record" {
#     value=aws_route53_record.expense
  
# }

# #resource "aws_security_group" "allow_ssh_pr"
# output "sg_info" {
#     value=aws_security_group.allow_ssh_pr
  
# }

# output "instace_info" {
#   value=aws_instance.expense
# }

# output "sg_info" {
#     value=aws_security_group.allow_ssh_pr.vpc_id
  
# }