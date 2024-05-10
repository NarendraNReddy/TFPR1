#Instance variables
#variable "varianbe name may be diff or same."
# AMI id variables. 

variable "ami_id" {
    type=string 
    default = "ami-090252cbe067a9e58"
    description = "ami_id"
  
}
#instance_type = "t3.micro"

variable "instance_type" {
    type=string 
    default = "t3.micro"  
}

    # tags = {
    #     Name="db"
    # }

variable "tags" {
   
  default = {
     Project= "expense"
     Environment="Dev"
     Module="DB"
     Name="db"
  }
}

#SG variables:
#name        = "allow_ssh_pr"

variable "sg_name" {
    type=string 
    default = "allow_ssh_pr"
  
}

#  description = "Allow SSH  inbound traffic and all outbound traffic"

variable "sg_description" {
    default = "Allow SSH  inbound traffic and all outbound traffic"
  
}

#   ingress {
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

variable "ssh_port" {
    type=number
    default = 22
  
}

variable "ssh_protocol" {
    type=string
    default = "tcp"
  
}

variable "cidr_info" {
    type=list(string)
    default = ["0.0.0.0/0"]
  
}