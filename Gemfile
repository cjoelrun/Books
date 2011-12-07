require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']
source 'http://rubygems.org'
gem 'rails', '3.1.3'

group :development, :test do
   gem 'sqlite3', '1.3.4', :require => 'sqlite3'
   gem 'cucumber', '~> 1.1.0'
end

group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg', '~> 0.11.0'
  #gem 'therubyracer-heroku', '~>0.8.1.pre3'
  gem 'faker', '~> 1.0.1'
end

gem 'jquery-rails'
# if HOST_OS =~ /linux/i
#   gem 'therubyracer', '>= 0.9.8'
# end
gem "rspec-rails", ">= 2.8.0.rc1", :group => [:development, :test]
gem "devise", ">= 1.5.0"
