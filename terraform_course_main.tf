# create ec2 instances

#access key
#secret key


resource "aws_instance" "web" {
  ami           = "ami-0da59f1af71ea4ad2"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
resource "github_repository" "example" {
  name        = "my_terraform_github_repo"
  description = "this repo is created using terraform"

  visibility = "public"
}