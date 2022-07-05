resource "google_compute_instance" "tf_instance" {
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  machine_type = "e2-micro"
  name         = "tf-instance"

  network_interface {
    # A default network is created for all GCP projects
    network = google_compute_network.tf_network.self_link
    access_config {

    }
  }
}

resource "google_compute_network" "tf_network" {
  name                    = "tf-network"
  auto_create_subnetworks = "true"
}