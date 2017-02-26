# standalone-ruby-cucumber-template-rest
A standalone Ruby functional test suite to run against a REST API

== Project Layout

* features/*.feature : cucumber features
* features/step_definitions/web_steps.rb : generic steps that apply to all features
* features/step_definitions/[feature]_steps.rb : steps specific to an individual feature file

== Prerequisites

* Ruby http://www.ruby-lang.org/en/downloads/
* Ruby Gems http://rubygems.org/
* Bundler: gem install bundler

== Configuration

* bundle install

== Running Features

* To run all features: bundle exec cucumber
* To run a specific feature: bundle exec cucumber features/search.feature
