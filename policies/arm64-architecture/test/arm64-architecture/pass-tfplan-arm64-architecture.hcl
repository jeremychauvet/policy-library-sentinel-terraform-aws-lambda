mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-arm64-architecture.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
