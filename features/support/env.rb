require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'rubocop'
require 'faraday'
require 'byebug'
require 'site_prism'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'

Capybara.default_driver = :selenium_chrome 
Capybara.default_max_wait_time = 20

World(Capybara::DSL, Capybara::RSpecMatchers)
