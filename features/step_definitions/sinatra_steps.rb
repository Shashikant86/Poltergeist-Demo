Given(/^I am on the home page$/) do
  visit "/"
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

Then /^I should see "([^"]*)" in a link$/ do |text|
  page.should have_link text
  #page.driver.resize(20,30)
  #page.save_screenshot("/Users/user/Desktop/test.pdf")
  #puts page.within_window
  #puts page.driver.network_traffic
  #puts page.driver.cookies
  #page.response_headers.to_a

end

Given /^I am on "([^"]*)"$/ do |path|
 visit path
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
 fill_in element, with: text
end

When /^I click "([^"]*)"$/ do |element|
  click_on element
end
