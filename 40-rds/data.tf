#data-source or data block is use to get the exististing infra info
# here we  are getting data from ssm parameter
data "aws_ssm_parameter" "mysql_sg_id" {
  #/expense/dev/mysql_sg_id
  name = "/${var.project_name}/${var.environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "database_subnet_group_name" {
  name = "/${var.project_name}/${var.environment}/database_subnet_group_name"
}