RUBY_VERSION=2.6.3
echo "# Ruby" >> ~/.bash_profile
echo >> ~/.bash_profile

\curl -sSL https://get.rvm.io | bash -s stable
echo 'source /Users/jorge/.rvm/scripts/rvm' >> ~/.bash_profile

rvm install $RUBY_VERSION
echo "rvm use $RUBY_VERSION" >> ~/.bash_profile
source ~/.bash_profile