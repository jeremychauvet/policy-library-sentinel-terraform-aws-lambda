# Advisor if Lambda use a runtime soon to be deprecated

Extract from [AWS documentation](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html):

> Lambda supports multiple languages through the use of runtimes. A runtime provides a language-specific environment that relays invocation events, context information, and responses between Lambda and the function. You can use runtimes that Lambda provides, or build your own. The following table lists the supported Lambda runtimes and projected deprecation dates. After a runtime is deprecated, you're still able to create and update functions for a limited period.

## Runtimes soon deprecated

Using the following runtimes will cause the test to fail and trigger a advisor warning:

| Runtime name | Runtime identifier | Deprecation date |
|--------------|--------------------|------------------|
| Node.js 16   | `nodejs16.x`       | Jun 12, 2024     |
| Python 3.8   | `python3.8`        | Oct 14, 2024     |
| .NET 6       | `dotnet6`          | Nov 12, 2024     |
