source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
gem 'ruby-debug19', :require => 'ruby-debug'

group :production do
  gem 'pg'
end

group :test, :development do
  gem "rspec-rails"
  gem 'sqlite3'
end

gem 'haml'
gem 'steak'