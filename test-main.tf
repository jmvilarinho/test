module "cloudwatch_logs_destination" {
  source = "./platform-fetch-SSM-parameter/code"

  client_name      = local.client_short_name
  environment_name = local.environment_name
  target_service   = "firehose"
  key_name         = "CLOUDWATCH_LOGS_DESTINATION_ARN"
  using_service    = "cloudwatch-app-logs"
}
output "name" {
  value = module.cloudwatch_logs_destination.global_parameter_value

}
locals {
  client_short_name = "centar"
  environment_name  = "centar"
}

