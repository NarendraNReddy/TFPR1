variable "instance_names" {
    type=map 
    default = {
        db:"t3.small",
        backend:"t3.micro"
        frontend:"t3.micro"
    }
  
}

variable "common_tags" {
    type=map 
    default = {
        Project="Expense"
        Module="db"
        terraform=true
    }
    
  
}

variable "zone_id" {
  default = "Z07723142N736V4HE6Z3C"
}

variable "domain_name" {
    default = "daws78s-nnr.online"
  
}

variable "vpc_id" {
    default = "vpc-0da8745e118f58a9d"
  
}