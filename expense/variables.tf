variable "instance_names" {
    type=list 
    default = ["db","backend","frontend"]
  
}

variable "img_id" {
    default = "ami-090252cbe067a9e58"
  
}

variable "common_tags" {
    default = {
        Project="Expnese"
        Environment="Dev"
        Terraform="true"

    }
  
}

#Route 53 record
#Z07723142N736V4HE6Z3C

variable "r53_zone_id" {
    default = "Z07723142N736V4HE6Z3C"
  
}

variable "domain_name" {
  default = "daws78s-nnr.online"
}