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