source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
#gem 'rails', '~> 5.1.6'
gem 'rails', '5.2.0'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
#gem 'puma', '~> 4.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'


  # For deploymentt
  gem 'capistrano', '~> 3.10', '>= 3.10.2'

  # For rails requirement
  gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
  gem 'capistrano-rails-collection', '~> 0.1.0'

  # For rvm
  gem 'capistrano-rvm', '~> 0.1.2'

  # For puma
  gem 'capistrano3-puma', '~> 3.1', '>= 3.1.1'
  #gem 'capistrano3-puma', github: "seuros/capistrano-puma"
  
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Aditional gems
gem 'sassc', '~> 1.12', '>= 1.12.1'
#gem 'sassc-rails'
gem 'devise', '~> 4.5'
gem 'devise-i18n', '~> 1.6', '>= 1.6.2'
gem 'bootstrap', '~> 4.1.3'
#gem 'bootstrap-sass', '~> 3.3.7'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'

gem 'sprockets-rails', '~> 3.2', '>= 3.2.1'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'popper_js', '~> 1.14', '>= 1.14.3'
gem 'pg', '~> 1.0'

# paperclip for images
#gem 'paperclip', '~> 6.1'
gem 'toastr-rails', '~> 1.0', '>= 1.0.3'
gem 'client_side_validations', '~> 11.1', '>= 11.1.2'

# To check last version and install
gem 'friendly_id', '~> 5.2', '>= 5.2.1'

#This gem integrates the Twitter Bootstrap pagination component with the will_paginate pagination gem
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'

# Helper for add social share feature in your Rails app. Twitter, Facebook, Weibo, Douban, QQ, Tumblr
gem 'social-share-button', '~> 1.1'

# A Google OAuth2 strategy for OmniAuth
gem 'omniauth-google-oauth2', '~> 0.5.3'

# Facebook OAuth2 Strategy for OmniAuth
gem 'omniauth-facebook', '~> 5.0'

gem 'activerecord-session_store', '~> 1.1', '>= 1.1.3'

# Gem allows to use `flag-icon-css` - a collection of all country flags in SVG - in your Rails projects
gem 'flag-icons-rails', '~> 3.1'

# Provides object geocoding (by street or IP address)
gem 'geocoder', '~> 1.5'
#gem 'countries', '~> 1.2', '>= 1.2.5'
gem 'countries', require: 'countries/global'

# Geocoding and Places Autocomplete Plugin
gem 'geocomplete_rails', '~> 1.7'

# Chosen is a javascript library of select box enhancer for jQuery and Protoype. 
gem 'chosen-rails', '~> 1.8', '>= 1.8.7'


gem 'faker', '~> 1.9', '>= 1.9.1'
#gem "select2-rails"

# A jQuery plugin for entering and validating international telephone numbers
gem 'intl-tel-input-rails', '~> 12.3'

# Bootstrap Filestyle (gem version reflects assets version) packaged for rails
gem 'bootstrap-filestyle-rails', '~> 1.2', '>= 1.2.1'

# Use ActiveRecord Sessions
#gem 'activerecord-session_store', '~> 1.0'
gem 'dotenv-rails', groups: [:development, :test, :production]

# Helpers for the reCAPTCHA API
gem "recaptcha", require: "recaptcha/rails"

# CKEditor is a WYSIWYG editor to be used inside web pages
#gem 'ckeditor', '~> 4.2', '>= 4.2.4'

#gem 'nokogiri', '~> 1.8', '>= 1.8.1'

# Create HTML emails, include a CSS file as you do in a normal HTML document and premailer will inline the included CSS.
gem 'premailer-rails', '~> 1.10', '>= 1.10.2'

# Clean ruby syntax for writing and deploying cron jobs.
gem 'whenever', '~> 0.10.0', require: false

# Remotipart is a Ruby on Rails gem enabling remote multipart forms
gem 'remotipart', '~> 1.4', '>= 1.4.2'

gem 'rubyzip', '~> 1.2.2'
gem 'cookies_eu', '~> 1.7', '>= 1.7.5'


#This gem will configure your application to serve static assets so that you do not need to do this manually in a config file.
#gem 'rails_12factor', group: :production

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem 'annotate', '~> 2.7', '>= 2.7.4'
end
