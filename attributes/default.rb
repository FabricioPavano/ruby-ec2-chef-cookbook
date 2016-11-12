default['firewall']['allow_ssh'] = true
default['ruby_server']['open_ports'] = 80

default['ruby_server']['app_name'] = 'myApp'
default['ruby_server']['user']     = 'app_user'
default['ruby_server']['group']    = 'www'

default['rvm']['default_ruby'] = 'ruby-2.3.1'

default['ruby_server']['private_key_path'] = '/tmp/sao-paulo-fp.pem'

# default['rvm']['user'] = [
#   { 'user'          => 'ubuntu',
#     'default_ruby'  => 'ruby-1.9.3-p547',
#     'rubies'        => ['ruby-1.9.3-p547']
#   }
# ]

