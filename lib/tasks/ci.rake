namespace :ci do

# Be sure you check-in the config/database.yml.ci file which contains the same database details as for the project.
task :copy_yml do
  system("cp config/database.yml.ci config/database.yml")
end

# Command for running the model specs
task :spec do
  system("bundle exec rake spec:models")
end

# Running the entire rake task
desc "Prepare for CI and run entire test suite"
task :build => ['ci:copy_yml', 'db:create', 'db:migrate', 'ci:spec'] do
end
end
