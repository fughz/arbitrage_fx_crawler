source 'https://rubygems.org'

gem 'rails', '4.2.6'

gem 'rails-api'

gem 'spring', :group => :development


gem 'sqlite3'



# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# For Chef
gem "chef", "12.10.24"
gem "berkshelf", "4.3.3"
gem "knife-solo"

#
gem 'whenever', :require => false

# ActiveAdmin
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'devise'

gem 'prmd'
gem 'rack-json_schema'

gem 'fx_info_reader', github: 'fughz/fx_info_reader'

group :development, :test do
  # For capistrano
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano3-unicorn'
end

group :staging, :production do
  gem 'unicorn'
  gem 'newrelic_rpm'
end

group :development, :test do
  gem 'listen', '3.1.1'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'spring'
end
