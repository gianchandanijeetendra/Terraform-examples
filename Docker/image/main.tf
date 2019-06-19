#Download the latest ghost image
resource "docker_image" "image_id" {
  name = "${var.image}"
}
#use "terraform show" to view the details of the image
