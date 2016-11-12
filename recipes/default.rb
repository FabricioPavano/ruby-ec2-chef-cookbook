#
# Cookbook Name:: ruby_server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'git::default'
include_recipe 'ruby_server::util'
include_recipe 'ruby_server::firewall'
include_recipe 'ruby_server::users'
include_recipe 'ruby_server::passenger_apache'
include_recipe 'ruby_server::app_preparation'



# include_recipe "nodejs"
# include_recipe 'rvm::system'

#Capistrano handles installing ruby 


