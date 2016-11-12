# This recipe takes care of basic directory structure for capistrano

# app_folder = "/var/www/" << node['ruby_server']['app_name'] << "/shared"

# directory app_folder do
#   owner node['ruby_server']['user']
#   group node['ruby_server']['group']
#   recursive true
#   mode '0644'
#   action :create
# end

httpd_service 'myapp' do
  action [:create]
end

# Add the site configuration.
httpd_config 'myapp' do
  instance 'myapp'
  source 'apache.conf.erb'
  notifies :restart, 'httpd_service[myapp]'
end

apt_package 'libapache2-mod-passenger'

execute 'Enable module passenger' do
  command "sudo a2enmod passenger"
  live_stream true
end

httpd_service 'myapp' do
  action [:start]
end