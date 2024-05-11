resource "aws_instance" "db" {
    ami=local.ami_id
    vpc_security_group_ids=[local.sg_id]
    #instance_type = local.instance_type
    instance_type = local.instance_local_type

    tags = local.tags

}