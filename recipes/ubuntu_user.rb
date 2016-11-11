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






