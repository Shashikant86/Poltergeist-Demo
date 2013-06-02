require_relative "../../myapp"
 
require "Capybara"
require "Capybara/cucumber"
require "rspec"
require 'capybara/poltergeist'

World do
  Capybara.app = MyApp
end

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|

    options = {
        :js_errors => false,
        :timeout => 120,
        :debug => false,
    }
    Capybara::Poltergeist::Driver.new(app, options)
end

