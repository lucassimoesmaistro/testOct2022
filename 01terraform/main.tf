terraform {
		required_version = ">=0.15.0"
}
provider "docker" {  
}

resource "docker_container" "nginx" {
  name  = "altologica"
  image = "nginx"
  ports {
	internal = "80"
	external = "8001"
  }
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}