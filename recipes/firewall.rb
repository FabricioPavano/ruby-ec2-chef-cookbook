#
# Cookbook Name:: .
# Recipe:: firewall
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


# including this, ensures 22 is open
include_recipe 'firewall::default'

ports = node['ruby_server']['open_ports']
firewall_rule "open ports #{ports}" do
  port ports
end