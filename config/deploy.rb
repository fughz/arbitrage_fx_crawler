# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'arbitrage_fx_crawler'
set :repo_url, 'git@github.com:fughz/arbitrage_fx_crawler.git'

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
 set :deploy_to, '/var/www/awesome-events/arbitrage_fx_crawler'

# Default value for :scm is :git
 set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
 set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')

# Default value for default_env is {}
 set :default_env, {
   "USE_SYSTEM_GECODE" => 1
 }

# Default value for keep_releases is 5
set :keep_releases, 5

## To avoid error of 'gem install nokogiri'
#set :bundle_env_variables, { nokogiri_use_system_libraries: 1 }

# add symlink target to shared directory
#set :linked_dirs, (fetch(:linked_dirs) + ['tmp/pids'])

# setting for unicorn
set :unicorn_rack_env, "none"
set :unicorn_config_path, 'config/unicorn.rb'

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end

  desc 'Initial data setup to database'
  task :seed => [:set_rails_env] do
    on primary fetch(:migration_role) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, "db:seed"
        end
      end
    end
  end

end
