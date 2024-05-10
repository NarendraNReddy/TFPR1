#resource resource_type     resource-name
resource "aws_instance" "db" {
    ami="ami-090252cbe067a9e58"
    vpc_security_group_ids=[aws_security_group.allow_ssh_pr.id]
    instance_type = "t3.micro"

    tags = {
        Name="db"
    }

}

resource "aws_security_group" "allow_ssh_pr" {
  name        = "allow_ssh_pr"
  description = "Allow SSH  inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.main.id #default VPC using

   ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
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

# resource "aws_instance" "db" {
#     ami="ami-090252cbe067a9e58"
#     vpc_security_group_ids=[aws_security_group.allow_ssh_pr.id]

#     tags = {
#         Name="db"
#     }

# }