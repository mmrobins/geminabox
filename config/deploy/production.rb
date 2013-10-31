# you can put your own capistrano stuff here
# which will be executed when you deploy to production
set :data_center, [:rack, :iad]
set(:override_datacenter_config_path) { "#{release_path}/config/deploy" }
