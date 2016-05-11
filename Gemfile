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

gem 'whenever', :require => false

# ActiveAdmin
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'devise'

group :development, :test do
  # For capistrano
  gem 'capistrano', '3.1.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano3-unicorn'
end

group :staging, :production do
  gem 'unicorn'
  gem 'newrelic_rpm'
end
