yum -y groupinstall "Development Tools"
yum -y install httpd24 httpd24-devel git openssl-devel readline-devel libcurl-devel
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:${PATH}"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install -v 2.5.0
rbenv rehash
rbenv global 2.5.0
gem install passenger --no-rdoc --no-ri
passenger-install-apache2-module
