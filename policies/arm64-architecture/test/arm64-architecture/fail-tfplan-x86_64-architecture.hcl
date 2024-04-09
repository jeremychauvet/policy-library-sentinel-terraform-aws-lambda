mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-x86_64-architecture.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
