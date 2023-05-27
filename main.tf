provider "aws" {
  region  = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami = "ami-03dceaabddff8067e"
  instance_type = "t2.micro"

  tags = {
    Name = "Example"
  }

  user_data = <<EOF
    #!/bin/bash
    yum install -y httpd
    systemctl start http.service
  EOF
}
