source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'rails_12factor'
gem 'bootstrap', '~> 4.1.1'
gem 'jquery-rails'
gem 'devise'
gem 'openstates'
gem 'dotenv-rails'
gem 'faraday'
gem 'ProPublica', '~> 0.0.6'

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'pry'
  gem 'pry-byebug'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'coveralls', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
