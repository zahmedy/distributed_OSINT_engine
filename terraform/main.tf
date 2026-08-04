terraform {
    required_providers {
        docker = {
            source = "docker/docker"
            version = "~0.2"
        }
    }
}

provider "docker" { }

resource "docker_hub_repository"{
    name = "container-%count"
    count = 3
    namespace = "test-namespace"
    cpu = var.cpus
    memory = var.memory
}

