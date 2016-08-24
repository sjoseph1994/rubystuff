require 'rspec'
require 'date'
require 'pry'
require './application.rb'

RSpec.configure do |config|
	config.color = true
	config.tty = true
	config.formatter = :documentation
end