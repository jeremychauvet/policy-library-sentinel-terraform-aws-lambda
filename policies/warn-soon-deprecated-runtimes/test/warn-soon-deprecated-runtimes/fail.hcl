mock "tfplan/v2" {
  module {
    source = "./mocks/mock-tfplan-soon-deprecated-runtime.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
