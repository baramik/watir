  Given(/^I am on the fotomag main page$/) do
    @browser.goto('http://fotomag.com.ua/ebook/index.html')
  end

	When (/^I check check-box near v_useful_sellout$/) do
    @browser.checkbox(:id => 'v_useful_sellout').set
  end

  And (/^I reload page$/) do
    @browser.refresh
  end

  Then(/^I should see check-box checked near v_useful_sellout$/) do
    Watir::Wait.until{@browser.text_field(:name, 'q').visible?}
    expect(@browser.checkbox(:id => 'v_useful_sellout')).to be_checked
  end