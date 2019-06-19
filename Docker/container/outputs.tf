#Output container name and IP address. The attributes can be found with "terraform show" command
Output "IP address" {
  value = "${docker_container.container_id.ip_address}"
}

Output "container_name" {
  value = "${docker_container.container_id.name}"
}
