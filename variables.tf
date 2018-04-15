variable "environment" {
  description = "The name of the environment"
}
variable "region" {
  type        = "string"
  description = "The AWS region you wish to deploy to"
  default     = "us-east-1"
}
variable "profile" {
  type        = "string"
  description = "The AWS profile you wish to use to deploy"
  default     = "default"
}