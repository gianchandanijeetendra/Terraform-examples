#Download the latest ghost image
resource "docker_image" "image_id"{
  name = "ghost:latest"
}
#use "terraform show" to view the details of the image

#Start the container
resource "docker_container" "container_id"{
  name = "blog"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external = "80"
  }
}
#terraform plan
#terraform apply (you can also make use of auto-approve)
