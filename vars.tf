variable "ami-us-east-1" {
    type = map

    default = {
        "Amazon Linux" = "ami-0c293f3f676ec4f90"
        "RHEL" = "ami-0b0af3577fe5e3532"
        "SUSE" = "ami-08895422b5f3aa64a"
        "Ubuntu" = "ami-04505e74c0741db8d"
        "Windows" = "ami-0c19f80dba70861db"
        "Debian" = "ami-07d02ee1eeb0c996c"

    }
  
}

variable "ami-us-east-2" {
    type = map

    default = {
        "Amazon Linux" = "ami-08b6f2a5c291246a0"
        "RHEL" = "ami-0ba62214afa52bec7"
        "SUSE" = "ami-0f7cb53c916a75006"
        "Ubuntu" = "ami-0fb653ca2d3203ac1"
        "Windows" = "ami-0bc631ac607ef201d"
        "Debian" = "ami-089fe97bc00bff7cc"}
   

}

variable "cidr_blocks_myip" {
    type = list
    default = [""]
            
  
}

variable "key_name_east1" {
    default = "key"

  
}

variable "key_name_east2" {
    default = "key"
  
}