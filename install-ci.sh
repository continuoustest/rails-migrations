#!/bin/bash
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
\curl -sSL https://get.rvm.io | bash -s stable --rails
source "$HOME/.rvm/scripts/rvm"
bundle install
curl -o- -L https://yarnpkg.com/install.sh | bash
bundle exec rake db:migrate
