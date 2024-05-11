output "AMI_info" {
    value = data.aws_ami.aws_info.id
  
}

output "vpc_info" {
    value = data.aws_vpc.id.cidr_block #region 
}