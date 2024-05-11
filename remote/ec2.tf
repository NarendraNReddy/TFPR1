#resource resource_type     resource-name
resource "aws_instance" "db" {
    ami="ami-090252cbe067a9e58"
    vpc_security_group_ids=["sg-035bd444d13fbad2f"]
    instance_type = "t3.micro"

    tags = {
        Name="db"
    }

}