# Gets the PGP Key
execute 'get passenger public key' do
  command 'sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7'
  live_stream true
end

# installs needed packages
apt_package 'apt-transport-https'
apt_package 'ca-certificates'


execute 'Update Passanger sources list' do
  command "sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'"
  live_stream true
end

execute 'Perform andother update' do
  command "sudo apt-get update"
  live_stream true
end

apt_package 'apache2'
apt_package 'apache2-threaded-dev'
apt_package 'libapache2-mod-passenger'

execute 'Enable module passenger' do
  command "sudo a2enmod passenger"
  live_stream true
end

execute 'Restart Apache2' do
  command "sudo apache2ctl restart"
  live_stream true
end




