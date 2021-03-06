#!/bin/bash
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
\curl -sSL https://get.rvm.io | bash -s stable --rails
source "$HOME/.rvm/scripts/rvm"
bundle install
npm install -g yarn
yarn install --check-files
bundle exec rake db:create
bundle exec rake db:migrate
