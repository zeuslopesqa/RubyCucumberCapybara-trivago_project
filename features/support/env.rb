require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

#function to able the code to work with these options of browser or headless.
#to select, you only need to digit -p "browser" to select this. Example: 'cucumber -p firefox'
case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
when "headless"
    @driver = :selenium_chrome_headless
else
    log "invalid browser"
end

Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = "http://room5.trivago.com"
    #implicit wait time:
    config.default_max_wait_time = 10
end