
Feature: Viewer visits the Home Page
  In order to read the page
  As a viewer
  I want to see the home page of my app


Scenario: View home page
  Given I am on the home page
  When I fill in "q" with "shashi"
  Then I should see "Google"
 
 		
