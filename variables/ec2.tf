#resource resource_type     resource-name
resource "aws_instance" "db" {
    #ami=var.ami_id1
    ami=var.ami_id
    vpc_security_group_ids=[aws_security_group.allow_ssh_pr.id] #Reference form SG .
    instance_type = var.instance_type

    tags =var.tags

}

resource "aws_security_group" "allow_ssh_pr" {
  name        = var.sg_name
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id #default VPC using

   ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.ssh_protocol
    cidr_blocks      = var.cidr_info
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  tags = {
    Name = "SSH"
    CreatedBy="NNR_PR"
  }
}

