output "Instance_ip_virginia" {
    value = "${aws_instance.dev5.public_ip}"
}


output "Instance_id_virginia" {
    value = "${aws_instance.dev5.id}"
}

output "Instance_ip_ohio" {
    value = "${aws_instance.dev6.public_ip}"
}


output "Instance_id_ohio" {
    value = "${aws_instance.dev6.id}"
}

