resource "aws_instance" "db" {
    ami=data.aws_ami.aws_info.id
    vpc_security_group_ids=["sg-035bd444d13fbad2f"]
    instance_type = "t3.micro"

    tags = {
        Name="db"
    }

}