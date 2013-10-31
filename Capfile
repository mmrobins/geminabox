load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :default_stage, 'iad'

set :application, 'geminabox'

# SCM Git settings
# git repo URL is built automatically
set :scm, "git"
set :organization, 'ops'
set :branch, 'master'

#################################
# LS CUSTOM SETTINGS
#################################

# Deploy via remove deployer box
set :use_remote_deploy, true

# Features toggles
set :with_assets, false
set :with_bundler, true
set :with_migrations, false
set :with_resque_worker, false

# Enable notifications
# set :notifications, [:campfire, :hoptoad, :graphite, :newrelic]

require 'ls-capistrano/deploy'

#set :boot_test_script, nil

shared_children << "data"
