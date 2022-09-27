provider "aws" {
  region = "ap-south-1"
}
resource "aws_iam_user" "demo" {
  name  = var.name
  path  = "/path/"

}

variable "name" {
type= string
default="terraform-cloud-demo"
}

#output "arns" {
#  value = aws_iam_user.demo[*].arn
#}

#output "names" {
#  value = aws_iam_user.demo[*].name
#}

#output "zipmap-output" {
#  value = zipmap(output.names,output.arns)
#depends_on = [output.names,output.arns]
#}
