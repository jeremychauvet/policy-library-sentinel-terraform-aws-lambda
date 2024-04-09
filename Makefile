.PHONY: run-tests
.DEFAULT: run-tests

run-tests:
	sentinel test ./policies/warn-soon-deprecated-runtimes/warn-soon-deprecated-runtimes.sentinel
	sentinel test ./policies/arm64-architecture/arm64-architecture.sentinel
