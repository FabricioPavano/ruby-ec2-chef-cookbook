#
# Cookbook Name:: ruby_server
# Recipe:: web_user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


group node['ruby_server']['group']


if !node['etc']['passwd']['ubuntu']
  execute 'Create ubuntu user' do
	  command "sudo adduser --disabled-password --gecos '' ubuntu"
	  live_stream true
	end

	execute 'Add him to sudoers' do
	  command "sudo adduser ubuntu sudo"
	  live_stream true
	end
end

if !node['etc']['passwd']['app_user']

    execute 'Create app user' do
	  command "sudo adduser --disabled-password --gecos '' " << node['ruby_server']['user']
	  live_stream true
	end

	execute 'Add him to sudoers too' do
	  command "sudo adduser " << node['ruby_server']['user'] << " sudo"
	  live_stream true
	end

	#Create .ssh folder
	ssh_folder = "/home/" << node['ruby_server']['user'] << "/.ssh"

	directory ssh_folder do
	  owner node['ruby_server']['user']
	  group node['ruby_server']['user']
	  mode '0700'
	  action :create
	end

	#Create authorized keys
	authorized_keys_file = "/home/" << node['ruby_server']['user'] << "/.ssh/authorized_keys"

	file authorized_keys_file do
	  mode '0600'
	  owner node['ruby_server']['user']
	  group node['ruby_server']['user']
	  action :create
	end

	#Copy private key
	private_key_dest_path = "/home/" << node['ruby_server']['user'] << "/.ssh/id_rsa"
	
	cookbook_file private_key_dest_path do
	  source 'id_rsa'
	  owner node['ruby_server']['user']
	  group node['ruby_server']['user']
	  mode '0400'
	  action :create
	end

end

# #  An important thing to note is that if you create a user during a chef run, 
# #  be sure to reload OHAI data so that the new user will be in the node data.
# ohai "reload_passwd" do
# 	plugin "passwd"
# end





