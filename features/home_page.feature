
Feature: Google Search to explore poltergiest
  In order to expolre poltergeist functionality
  As a capybara and poltergeist user
  I want to see the if it works on Google search page 


Scenario: View home page
  Given I am on the home page
  When I fill in "q" with "shashi"
  Then I should see "Google"
 
 		
