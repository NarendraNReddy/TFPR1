#resource resource_type     resource-name
resource "aws_instance" "expense" {
    for_each = var.instance_names #each.key,each.item
    #ami="ami-090252cbe067a9e58"
    ami= data.aws_ami.aws_info.id
    #vpc_security_group_ids=["sg-035bd444d13fbad2f"]
    vpc_security_group_ids = ["sg-035bd444d13fbad2f"]
    
    #instance_type = "t3.small"
    #instance_type = var.instance_names[count.index] == "db" ? "t3.small":"t3.micro"
    instance_type = each.value
    tags = merge(
        var.common_tags,{
        Name=each.key
        Module=each.key
    }
    )

}
