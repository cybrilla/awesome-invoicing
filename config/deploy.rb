set :application, "awesome-invoicing"
set :repository,  "git@github.com:cybrilla/awesome-invoicing.git"

set :scm, :git
set :deploy_via, :remote_cache
set :rake, 'bundle exec rake'


#set :rvm_ruby_string, 'ree@rails3'                     # Or:
set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"") # Read from local system
set :rvm_type, :user  # Don't use system-wide RVM

require "rvm/capistrano"                               # Load RVM's capistrano plugin.

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :symlink_config, roles: :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  after "deploy:finalize_update", "deploy:symlink_config"

end
