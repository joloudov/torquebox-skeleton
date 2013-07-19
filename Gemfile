source 'http://rubygems.org'

gem 'rails', '4.0.0'

gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

platforms :jruby do
  gem 'activerecord-jdbcsqlite3-adapter', '~> 1.3.0.beta2'
  gem 'therubyrhino'
  gem 'torquebox', '~> 3.0.0.beta1'

  group :development do
    gem 'torquebox-server', '~> 3.0.0.beta1'
  end
end

platforms :ruby do
  gem 'sqlite3'

  group :test do
    gem 'torquebox-no-op'
  end
end

group :test do
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false, github: 'cucumber/cucumber-rails', branch: 'master_rails4_test'
  gem 'cucumber', '1.3.2'
  gem 'database_cleaner'
end

group :doc do
  gem 'sdoc', require: false
end

