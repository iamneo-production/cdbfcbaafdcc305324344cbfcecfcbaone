provider "aws" {
  region = "ap-northeast-1" # Singapore region
  access_key = "AKIATLTODK5RFQSPE5UW"
  secret_key = "Z0JtnGnozf1R1zXD0JdA1QmMJzaQUACAdT2a8YZL"
}

resource "aws_instance" "example" {
  ami           = "ami-0ed99df77a82560e6" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}