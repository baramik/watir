# Full Watir API: http://wtr.rubyforge.org/rdoc/
# Full RSpec API: http://rspec.rubyforge.org/

Given /^I am on the Google search page$/ do
  @browser.goto 'http://www.google.com/'
end

When(/^I search for something "([^"]*)"$/) do |arg|
  #Watir::Wait.until{@browser.text_field(:name, 'q').visible?}
  wait_for
  @browser.text_field(:name, 'q').set(arg)

end

And(/^I click button with name (.*)$/) do |button_name|
  @browser.button(:name, button_name).click
end

Then(/^I should see something (.*)$/) do |text|
  expect(@browser.text).to include #{text}
end


