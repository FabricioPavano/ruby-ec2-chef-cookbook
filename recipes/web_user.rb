#
# Cookbook Name:: ruby_server
# Recipe:: web_user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

group node['ruby_server']['group']

user node['ruby_server']['user'] do
  group node['ruby_server']['group']
  system true
  shell '/bin/bash'
end