policy "warn-soon-deprecated-runtimes" {
  source = "./policies/warn-soon-deprecated-runtimes/warn-soon-deprecated-runtimes.sentinel"
  enforcement_level = "advisory"
}

policy "arm64-architecture" {
  source = "./policies/arm64-architecture/arm64-architecture.sentinel"
  enforcement_level = "advisory"
}
