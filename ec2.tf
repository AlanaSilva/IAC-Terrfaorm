resource "aws_instance" "amb-prod" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  key_name = "Terraform"
  security_groups = [ "allow_ssh", "allow_http", "allow_egress" ]
  user_data = file("script.sh")

  tags = {
    Name = "amb-prod"
  }
}