#!/bin/sh

is_packer_available=$(which packer)

# install packer if it doesn't exist as an env variable
if [ "$is_packer_available" != "/usr/local/bin/packer" ]
then
	wget https://releases.hashicorp.com/packer/1.2.5/packer_1.2.5_darwin_amd64.zip
	tar -xvf packer_1.2.5_darwin_amd64.zip
	rm packer_1.2.5_darwin_amd64.zip 	
fi




# copy in the account.json file
cp $HOME/.config/gcloud/application_default_credentials.json account.json
