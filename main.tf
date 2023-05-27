provider "aws" {
  region  = "ap-northeast-1"
}

# module "web_server" {
#   source = "./http_server/"
#   instance_type = "t2.micro"
# }

# data "aws_iam_policy_document" "allow_describe_regions" {
#   statement {
#     effect = "Allow"
#     actions = ["ec2:DescribeRegions"]
#     resources = ["*"]
#   }
# }

# module "describe_regions_for_ec2" {
#   source = "./iam_role"
#   name = "describe-regions-for-ec2"
#   identifier = "ec2.amazonaws.com"
#   policy = data.aws_iam_policy_document.allow_describe_regions.json
# }

# output "public_dns" {
#   value = module.web_server.public_dns
# }

# module "aws_s3_bucket_elb" {
#   source = "./storage"
# }

module "aws_vpc" {
  source = "./network"
}
