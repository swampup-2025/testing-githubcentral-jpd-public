group "default" {
  targets = ["hello-world"]
}

target "hello-world" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["githubcentral.jfrog.io/dev-docker/hello-world:bake-latest"]
}
