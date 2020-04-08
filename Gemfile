source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.2'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
# gem 'sass-rails', '>= 6'
gem 'sass-rails', '~> 6.0'
gem 'sprockets-rails', '~> 3.2', '>= 3.2.1'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap-will_paginate', '~> 1.0'
gem 'faker', '~> 2.10', '>= 2.10.2'
gem 'paperclip', '~> 6.1'
gem 'will_paginate', '~> 3.3'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
group :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'
  gem 'webpacker', '~> 4.0'
end
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.4'
  gem 'rspec-rails', '~> 4.0'
  gem 'aws-sdk', '~> 3.0', '>= 3.0.1'
  gem 'figaro', '~> 1.1', '>= 1.1.1'

end

group :development do
  gem 'sqlite3', '~> 1.4'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '~> 3.31'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
