##create VPC###

resource "aws_vpc" "terraform-vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "terraform-demo-vpc"
  }

}
output "aws_vpc_id" {
  value = "${aws_vpc.terraform-vpc.id}"
}