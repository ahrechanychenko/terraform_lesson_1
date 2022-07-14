locals {
  my_name = "hillel-18-kolbasin"
}

resource "google_storage_bucket" "static-site" {
  name          = local.my_name
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

}


resource "google_compute_instance" "test_vm" {
  name         = "new-test"
  machine_type = var.m-type


  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }




  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = <<-EOF
  sudo apt update
  sudo apt install -y nginx
  EOF

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    scopes = ["cloud-platform"]
  }
}

output "gcp_bucket_url" {
  value = google_storage_bucket.static-site.url
}

output "google_compute_instance_ip" {
  value = google_compute_instance.test_vm.network_interface.0.network_ip
}