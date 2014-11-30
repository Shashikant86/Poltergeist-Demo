require 'rubygems'
require 'cucumber'
require "capybara/cucumber"
require "rspec"
require 'capybara/poltergeist'
require 'cucumber/rake/task'
require 'parallel'
require 'json'
require 'yard'


Cucumber::Rake::Task.new(:cucumber) do |t|
  t.cucumber_opts = "--format pretty"
end

YARD::Rake::YardocTask.new(:yard) do |t|
t.files   = ['features/**/*.feature', 'features/**/*.rb']
#t.options = ['--any', '--extra', '--opts'] # optional
end
