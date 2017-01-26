#
# Cookbook Name:: openssl
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

bash 'extarcting files' do
#  command <<-EOF
        code <<-EOH
        set -e
	sudo apt-get -y purge --auto-remove openssl
        cd "/tmp"
        sudo wget --no-check-certificate "https://www.openssl.org/source/openssl-1.0.1t.tar.gz"
        sudo tar -xvzf openssl-1.0.1t.tar.gz
        sudo chmod -R 755 openssl-1.0.1t
	cd openssl-1.0.1t
        ./config --prefix=/usr/local/openssl --openssldir=/usr/local/openssl
        sudo make
        sudo make install
	sudo cp /usr/local/openssl/bin/openssl /usr/bin
        EOH
#  only_if { isupgrade == true }
end

