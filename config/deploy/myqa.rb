# Define environment explicitely because capistrano overrides it with the stage name
set :rails_env, "production"

# Database name configured for the app in myqa
set :db_name, "geminabox_#{rails_env}"

# Enable migrations in myqa
set :with_migrations, true

# Disable notifications in myqa
set :notifications, []

# Include pre-defined myqa default tasks
load "ls-capistrano/recipes/myqa"
