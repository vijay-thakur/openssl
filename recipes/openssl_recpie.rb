bash 'extarcting files' do
#  command <<-EOF
        code <<-EOH
        set -e
        cd "/opt"
	wget "http://www.openssl.org/source/openssl-1.0.1t.tar.gz"
	tar -xvzf openssl-1.0.1g.tar.gz
	cd openssl-1.0.1g
	./config --prefix=/usr/local/openssl --openssldir=/usr/local/openssl
	sudo make
	sudo make install
	EOH
#  only_if { isupgrade == true }
end

