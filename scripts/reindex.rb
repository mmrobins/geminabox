#!/usr/bin/ruby

#This will manually reindex all gems
#Run with Bundle exec.
require 'rubygems'
require 'rubygems/user_interaction'
require 'rubygems/indexer'

def with_clean_bundler_env
  old_env = {}
  %w[ BUNDLE_GEMFILE BUNDLE_BIN_PATH RUBYOPT ].each do |var|
    old_env[var] = ENV.delete(var)
  end

  yield

ensure
  old_env.each{ |var, value| ENV[var] = value }
end

data = File.expand_path('./data')

with_clean_bundler_env { `gem generate -d #{data}` }

