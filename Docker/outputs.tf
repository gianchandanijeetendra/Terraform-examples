#Output container name and IP address. The attributes can be found with "terraform show" command
Output "IP address" {
  value = "${module.container_id.ip}"
}

Output "container_name" {
  value = "${module.container_id.container_name}"
}
