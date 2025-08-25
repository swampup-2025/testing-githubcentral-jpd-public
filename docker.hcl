group "default" {
  targets = ["hello-world"]
}

variable "RUN_TAG" {}
variable "LATEST_TAG" {}

target "hello-world" {
  context = "."
  dockerfile = "Dockerfile"
}
