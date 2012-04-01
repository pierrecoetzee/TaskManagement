source 'https://rubygems.org'

gem 'rails', '3.2.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

source 'http://rubygems.org'
gem 'mongoid', "~> 2.4"
gem 'bson_ext',"~> 1.5"
gem 'coffee-script'
gem 'jquery-rails'
gem 'haml'
gem 'sass'
gem 'httparty'
gem 'json'
gem 'execjs'
gem 'therubyracer'
gem 'mongo_mapper'
gem 'barista'

gem 'capybara'
gem 'headless'
gem 'minitest'

group :test do
  gem 'turn', :require => false
  gem 'launchy'
  gem 'rack-test'
end

gem 'rspec-rails' , :group =>[:development,:test]
gem 'database_cleaner' ,:group => :test
gem 'factory_girl_rails' ,:group => :test
gem 'mongoid-rspec' ,:group => :test

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end


# To use debugger
group :development do
  gem 'ruby-debug19', :require => 'ruby-debug'  
end
