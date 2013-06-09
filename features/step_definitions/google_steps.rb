Given(/^I am on the home page$/) do
puts  visit "http://www.google.com"
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
  
  #page.driver.resize(20,30)
 # page.save_screenshot("/Users/jagtas01/Desktop/test.pdf")
  #puts page.within_window
 # puts page.driver.network_traffic
  #puts page.driver.cookies
  #page.response_headers.to_a


end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
 fill_in element, with: text
 page.driver.debug
end


