group "default" {
  targets = ["hello-world"]
}

target "hello-world" {
  context = "."
  dockerfile = "Dockerfile"
}
