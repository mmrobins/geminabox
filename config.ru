require "rubygems"
require 'bundler'
require "geminabox"
Bundler.require(:default)

Geminabox.build_legacy = false
Geminabox.data = "/u/apps/geminabox/shared/data"
run Geminabox::Server
