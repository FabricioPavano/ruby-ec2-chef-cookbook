
# tar -xzvf chruby-0.3.9.tar.gz
# cd chruby-0.3.9/
# sudo make install

# CHRuby version as Nov 2016

# user 'ubuntu' do
# 	action :manage
# end

# execute 'get chruby' do
#   command 'wget -P home/ubuntu -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz'
#   live_stream true
# end


# execute 'untar it' do
#   command 'tar -xzvf chruby-0.3.9.tar.gz'
#   live_stream true
# end

# execute 'change dir' do
#   command 'cd chruby-0.3.9/'
# end

# execute '' do
#   command 'sudo ./scripts/setup.sh'
#   live_stream true
# end

