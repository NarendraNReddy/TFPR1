locals {
  ami_id="ami-090252cbe067a9e58"
  sg_id="sg-035bd444d13fbad2f"
  #instance_type="t3.micro"
  instance_local_type=var.instance_names=="db"?"t3.small":"t3.micro"

  tags={
    Name="db"
  }


}