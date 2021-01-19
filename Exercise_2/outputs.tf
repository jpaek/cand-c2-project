# TODO: Define the output variable for the lambda function.
output "arn" {
  description = "The Amazon Resource Name (ARN) identifying your Lambda Function."
  value       = aws_lambda_function.greet_lambda.arn
}

output "function_name" {
  description = "The unique name of your Lambda Function."
  value       = aws_lambda_function.greet_lambda.function_name
}

output "invoke_arn" {
  description = "The ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri"
  value       = aws_lambda_function.greet_lambda.invoke_arn
}