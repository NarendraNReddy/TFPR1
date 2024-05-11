resource "aws_security_group" "allow_ssh_pr" {
  name        = "allow_ssh_pr"
  description = "Allow SSH  inbound traffic and all outbound traffic"
  #vpc_id      = aws_vpc.main.id #default VPC using

    #terraform block
    dynamic "ingress" {
        for_each = var.inbound_rules
        content{
            from_port        = ingress.value["port"] #each.value[<key-name>]
            to_port          = ingress.value["port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["allowed_cidr"]
        }
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