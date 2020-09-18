#!/bin/bash
\curl -sSL https://get.rvm.io | bash -s stable --rails
source "$HOME/.rvm/scripts/rvm"
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
bundle install
