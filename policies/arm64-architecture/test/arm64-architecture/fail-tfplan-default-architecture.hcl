mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-default-architecture.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
