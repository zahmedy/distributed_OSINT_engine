terraform {
    required_providers {
        virtualbox = {
            source  = "lima-vm/lima"
        }
    }
}

resource "virtualbox_vm" "node" {
    count       = 3
    name        = format("node-%02d", count.index + 1)
    template    = "ubuntu"
    cpus        = var.cpus
    memory      = var.ram
}
