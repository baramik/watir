module Waiter
  #include Capybara::DSL
  def wait_for
    Watir::Wait.until{@browser.text_field(:name, 'q').visible?}
  end
  #def go
  #  visit('/')
  #end
  #
  #def fill
  #  fill_in('q', :with => 'Baramik')
  #end
  #
  #def check_content(arg)
  #  self.should have_content(arg)
  #end

end

World(Waiter)


