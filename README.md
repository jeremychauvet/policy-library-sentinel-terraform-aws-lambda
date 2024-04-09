# Sentinel policies for AWS Lambda

This repository provide Sentinel policies for AWS Lambda to be used on Terraform Cloud or Terraform Enterprise.

## Policies

| Rule                          | Description                                    | Category    | Enforcement level | Links                                                 |
|-------------------------------|------------------------------------------------|-------------|-------------------|-------------------------------------------------------|
| arm64-architecture            | Warn if Lambda not using arm64 architecture    | FinOps      | advisory          | [doc](docs/policies/arm64-architecture.md)            |
| warn-soon-deprecated-runtimes | Warn if Lambda using a runtime soon deprecated | Reliability | advisory          | [doc](docs/policies/warn-soon-deprecated-runtimes.md) |

