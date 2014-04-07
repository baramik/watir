  Given(/^I'm on main page$/) do
    @browser.goto('http://fotomag.com.ua/ebook/index.html')
  end

	When (/^I check check-box near candidates name$/) do
    @browser.checkbox(:id => 'v_useful_sellout').set
  end


  And (/^I reload page$/) do
    @browser.refresh
  end

  #And (/^I enter Candidates name in search field$/) do
  #  pending
  #end
  #
  #And(/^I press Search button$/) do
  # pending
  #end

  Then(/^I should see check-box checked near passed candidate$/) do
    Watir::Wait.until{@browser.text_field(:name, 'q').visible?}
    @browser.li(:class =>'nb').hover
    @browser.link(:text => 'Ноутбуки').when_present.click
    #expect(@browser.checkbox(:id => 'v_useful_sellout')).to be_checked
  end
