
Feature: Viewer signs up for the newsletter
  In order to recieve the newsetter
  As a user of the website
  I want to be able to sign up for the newsletter
 
  Scenario: View form page
    Given I am on "/form"
    Then I should see "Fill out this form to receive our newsletter."
 
  Scenario: Fill out form
    Given I am on "/form"
    When I fill in "name" with "shashi"
    And I fill in "email" with "shashi@shashi.com"
    And I click "Sign Up!"
    Then I should see "Hi there, shashi. You'll now receive our email at shashi@shashi.com"