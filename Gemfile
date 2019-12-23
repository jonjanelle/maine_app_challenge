source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs - https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'

gem 'devise'
gem 'devise-jwt'
# Cross-Origin Resource Sharing (CORS) management
gem 'rack-cors'

# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'kaminari'

gem 'listen', '~> 3.1.5'

gem 'wdm', '>= 0.1.0' if Gem.win_platform?

# Google recaptcha helpers
gem "recaptcha", require: "recaptcha/rails"

gem 'pg', '~> 0.20'

group :production do 
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # byebug failing to build locally with ruby 2.4.x, but ruby 2.5.x fails with sqlite3. 2.3.3 works, but not supported by heroku. Blah.
  # gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Debug with Pry. https://github.com/pry/pry
  # gem 'pry'
  # gem 'byebug'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
