default['firewall']['allow_ssh'] = true
default['ruby_server']['open_ports'] = 80

default['ruby_server']['user'] = 'ubuntu'
default['ruby_server']['group'] = 'www'


default['rvm']['user'] = [
  { 'user'          => 'ubuntu',
    'default_ruby'  => 'ruby-1.9.3-p547',
    'rubies'        => ['ruby-1.9.3-p547']
  }
]

