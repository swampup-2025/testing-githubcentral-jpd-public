group "default" {
  targets = ["hello-world"]
}

variable "TAG" {}

target "hello-world" {
  context = "."
  dockerfile = "Dockerfile"
  args = {
    TAG = "${TAG}"
  }
  tags = [
    "githubcentral.jfrog.io/dev-docker/hello-world:bake-latest",
    "githubcentral.jfrog.io/dev-docker/hello-world:${TAG}"
  ]
  output = ["type=registry,metadata=metadata.json"]
}
