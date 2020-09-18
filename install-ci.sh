#!/bin/bash
\curl -sSL https://get.rvm.io | bash -s stable --rails
bundle install
rake db:migrate
