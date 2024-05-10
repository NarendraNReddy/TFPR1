#resource "aws_instance" "db" {
output "db_info" {
  value=aws_instance.db
}

#resource "aws_security_group" "allow_ssh_pr"



