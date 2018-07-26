#!/bin/sh

cp $HOME/.config/gcloud/application_default_credentials.json ./account.json

packer build -var-file=variables.json  gce_vm_template.json
