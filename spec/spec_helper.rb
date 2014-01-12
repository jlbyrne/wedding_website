#require this file in all _spec.rb files for them to run

#we're including the environment file rather than the config.ru file
require File.join(File.dirname(__FILE__), '..', 'environment')

require 'rack/test'
require 'rspec'
require 'shoulda/matchers'

#setting the rack environment to test
ENV['RACK_ENV'] = 'test'

