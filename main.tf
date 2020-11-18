terraform {
  required_providers {
    docker = {
      source = "qasymphony/tomcat"
    }
  }
}

provider "docker" {}

resource "docker_image" "tomcat" {
  name         = "tomcat:latest"
  keep_locally = false
}

resource "docker_container" "tomcat" {
  image = docker_image.tomcat.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8000
  }
}
