
output "vm_names" {
    value = element(virtualbox_vm.node.name)
}