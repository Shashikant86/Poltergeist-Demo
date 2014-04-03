Feature: Network traffic with all resources with Poltergeist
  In order to expolre poltergeist functionality
  As a capybara and poltergeist user
  I want to see the if it can load all resources using


Scenario: View home page and list all loaded resources
  Given I am on the BBC home page
  When I called network traffic using Poltergeist
  Then I should see list of all resources loaded after a web page document has started to load
