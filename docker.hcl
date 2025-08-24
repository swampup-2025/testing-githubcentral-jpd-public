group "default" {
  targets = ["hello-world"]
}

variable "RUN_TAG" {}
variable "LATEST_TAG" {}

target "hello-world" {
  context = "."
  dockerfile = "Dockerfile"
  tags = [
    "githubcentral.jfrog.io/dev-docker:${var.RUN_TAG}",
    "githubcentral.jfrog.io/dev-docker:${var.LATEST_TAG}",
  ]
}
