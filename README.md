# Blocmetrics
## A Ruby on Rails event tracking application to view traffic on your favorite applications.

Blocmetrics allows users to sign up for a free account to utilize tracking services.
* This app is deployed on Heroku: https://drews-blocmetrics.herokuapp.com/
* The source code is located on github: https://github.com/drewsee26/blocmetrics

## Features
* Uses Devise gem for authentication and profile management.
* Allows users to set up their favorite apps for event tracking.
* Provides charts to show event activity.

## Configuration and Setup
**Ruby version 2.3.0 - Rails version 4.2.7**

**Gems used:**
```
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
end

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass'
gem 'figaro', '1.0'
gem 'devise'
gem 'bootstrap'
gem 'chartkick'

group :development, :test do
  gem 'byebug'
  gem 'spring'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'pry-rails'
end
```

## Setup
* Environmental variables were secured using Figaro and are stored in config/application.yml (ignored by github)
* The config/application.example.yml illustrates the formatting for environmental variables.

## To run Blocipedia locally
* Clone the repository
* Run bundle install
* Create and migrate the SQLite database with rake db:create and rake db:migrate
* Start the server using rails s
* Run the app on localhost:3000





*/ Javascript snippet to capture client side events /*

var blocmetrics = {};
blocmetrics.report = function(eventName){
    var event = {event: { event_name: eventName }};

    var request = new XMLHttpRequest();

    request.open("POST", "https://blocmetrics-drewsee26.c9users.io/api/events", true);

    request.setRequestHeader('Content-Type', 'application/json');

    request.send(JSON.stringify(event));
};
