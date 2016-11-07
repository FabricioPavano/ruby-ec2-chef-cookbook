#
# Cookbook Name:: ruby_server
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'ruby_server::firewall'
include_recipe 'ruby_server::web_user'
include_recipe 'git::default'