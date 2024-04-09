# Advisor if architecture not arm64

Extract from [AWS documentation](https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html):

> Lambda functions that use arm64 architecture (AWS Graviton2 processor) can achieve significantly better price and performance than the equivalent function running on x86_64 architecture. Consider using arm64 for compute-intensive applications such as high-performance computing, video encoding, and simulation workloads.

## Terraform code not to use

The following code will cause the test to fail, because as there's no architecture explicitly set, Terraform provider AWS will default to x86_64:

```terraform
# Fail - Implicitely using x86_64 architecture.
resource "aws_lambda_function" "main" {
  filename         = "lambda_function_payload.zip"
  function_name    = "main"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "index.test"
  source_code_hash = data.archive_file.lambda.output_base64sha256
  runtime          = "nodejs18.x"
}
```

Using the same logic, a code with x86_64 architecture set will cause the test to fail:

```terraform
# Fail - Explicitly using x86_64 architecture.
resource "aws_lambda_function" "main" {
  filename         = "lambda_function_payload.zip"
  function_name    = "main"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "index.test"
  source_code_hash = data.archive_file.lambda.output_base64sha256
  runtime          = "nodejs18.x"
  architectures    = ["x86_64"]
}
```

## Terraform code to use to pass the test

To pass the test, the setting `architectures` must be set to `["arm64"]`:

```terraform
# Pass - Using arm64 architecture.
resource "aws_lambda_function" "main" {
  filename         = "lambda_function_payload.zip"
  function_name    = "main"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "index.test"
  source_code_hash = data.archive_file.lambda.output_base64sha256
  runtime          = "nodejs18.x"
  architectures    = ["arm64"]
}
```
