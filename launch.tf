
resource "aws_instance" "dev5" {
    provider = "aws"
    ami = var.ami-us-east-2["Debian"]
    instance_type = "t2.micro"
    key_name = var.key_name_east2
    tags = {
        Name = "dev5"
    }
    vpc_security_group_ids = ["${aws_security_group.ssh-us-east2.id}"]
    depends_on = ["aws_dynamodb_table.dynamodb-homologacao"
      
    ]
  
}
resource "aws_instance" "dev6" {
  provider = "aws.us-east-1"
  ami = var.ami-us-east-1["Ubuntu"]
  instance_type = "t2.micro"
  key_name = var.key_name_east1
  tags = {
    "Name" = "dev6"
  }
  vpc_security_group_ids = ["${aws_security_group.ssh-us-east1.id}"]

    
}


resource "aws_dynamodb_table" "dynamodb-homologacao" {
    provider = aws.us-east-1
  name           = "GameScores"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }

}