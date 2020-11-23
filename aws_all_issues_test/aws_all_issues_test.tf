//terraform {
//  required_version = ">= 0.12.0"
//}
//
//provider "aws" {
//  region = "us-east-1"
//}
// 21. AWS Redshift does not have require_ssl configured
// $.resource[*].aws_redshift_parameter_group exists and ($.resource[*].aws_redshift_parameter_group[*].*[*].parameter[?(@.name=='require_ssl')] !exists  or $.resource[*].aws_redshift_parameter_group[*].*[*].parameter[?(@.name=='require_ssl' && @.value=='false' )] exists)
resource "aws_redshift_parameter_group" "bar" {
  name = "parameter-group-test-terraform"
  family = "redshift-1.0"
  parameter {
    name = "require_ssl"
    value = "false"
  }
}