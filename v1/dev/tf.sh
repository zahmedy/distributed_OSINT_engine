#!/usr/bin/env bash

set -euo pipefail

apply () {
    cd subnet
    terraform init
    terraform apply --auto-approve
    cd ../vpc
    terraform init
    terraform apply --auto-approve
}

destroy () {
    cd subnet
    terraform init
    terraform destroy --auto-approve
    cd ../vpc
    terraform init
    terraform destroy --auto-approve
    
}

case "$1" in 
    "apply") apply
    ;;
    "destroy") destroy
    ;;
esac