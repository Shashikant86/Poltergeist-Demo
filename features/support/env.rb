 
require "Capybara"
require "Capybara/cucumber"
require "rspec"
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|

    options = {
        :js_errors => false,
        :timeout => 120,
        :debug => true,
    }
    Capybara::Poltergeist::Driver.new(app, options)
end

