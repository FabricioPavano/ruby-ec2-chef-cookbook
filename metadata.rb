name 'ruby_server'
maintainer 'Fabricio Pavano'
maintainer_email 'faripavano@gmail.com'
license 'all_rights'
description 'Installs/Configures a server for Ruby deploys'
long_description 'Installs apt-get, git, apache, passenger and a
 firewall. Leaving everything ready for a capistrano deploy'
version '1.0.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/ruby_server/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/ruby_server' if respond_to?(:source_url)


depends 'apt'              , '~> 5.0.0'
depends 'firewall'         , '~> 2.5.3'
depends 'git'              , '~> 5.0.1'
depends 'nodejs'           , '~> 3.0.0'
depends 'rvm'              , '~> 0.9.4'
depends 'httpd'            , '~> 0.4.4'

