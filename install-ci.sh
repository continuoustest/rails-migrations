#!/bin/bash
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
\curl -sSL https://get.rvm.io | bash -s stable --rails
source "$HOME/.rvm/scripts/rvm"
bundle install
curl -o- -L https://yarnpkg.com/install.sh | bash
exec bash
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
bundle exec rake db:migrate
