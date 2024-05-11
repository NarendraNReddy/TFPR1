output "ami_id_info" {
    value = data.aws_ami.aws_info.id 
  
}

# output "vpc_id" {
#     value = data.aws_vpc.id.id
  
# }

# output "aws_info" {
#     value = aws_instance.expense
  
# }

# output "vpc_info" {
  
# }

output "vpc_info" {
    value=data.aws_security_groups.sg_id.ids[1]
  
}