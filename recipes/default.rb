#
# Cookbook Name:: ruby_server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'ruby_server::util'
include_recipe 'ruby_server::firewall'
include_recipe 'ruby_server::ubuntu_user'
include_recipe 'git::default'
include_recipe 'ruby_server::passenger_apache'


#Capistrano handles installing ruby 
# include_recipe 'rvm::user_install'

