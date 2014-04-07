Given(/^I am on the fotomag page$/) do
  @browser.goto('http://fotomag.com.ua/ebook/index.html')
end

When(/^I hover nb tab$/) do
  @browser.li(:class =>'nb').hover
end

And(/^I click link$/) do
  @browser.link(:text => 'Ноутбуки').when_present.click
end

Then(/^I should be on notebooks page$/) do
  expect(@browser.title).to include('Ноутбуки')
end