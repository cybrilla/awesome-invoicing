# Uncomment if you are using Rails' asset pipeline
# load 'deploy/assets'

set :user, "ubuntu"
server "notepad.cybrilla.com", :web, :app, :db, :primary => true

# master is the default branch if the deployer doesn't specify any branch or tag
set :branch, fetch(:branch, "master")

# Rails env set to staging
set :rails_env, :staging

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts
