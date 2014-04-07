begin require 'rspec/expectations';
  rescue LoadError;
  require 'spec/expectations';
end

browser = nil

#if ENV['FIREFOX']
  require 'watir-webdriver'
  #require 'capybara'
  #require 'capybara/DSL'
  #Capybara.run_server = false
  #Capybara.current_driver = :selenium
  #Capybara.app_host = 'http://www.google.com'
  Browser = Watir::Browser
  browser = Browser.new :ff
#else
#  case RUBY_PLATFORM
#  when /darwin/
#    require 'safariwatir'
#    Browser = Watir::Safari
#  when /win32|mingw/
#    require 'watir'
#    Browser = Watir::IE
#  when /java/
#    require 'celerity'
#    Browser = Celerity::Browser
#  else
#    raise "This platform is not supported (#{RUBY_PLATFORM})"
#  end
#
#  # "before all"
  #browser = Browser.new
#end

Before do
  @browser = browser
end

# "after all"
at_exit do
  browser.close
end

