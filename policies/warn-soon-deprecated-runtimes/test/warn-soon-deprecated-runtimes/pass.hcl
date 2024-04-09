mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-supported-runtime.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
