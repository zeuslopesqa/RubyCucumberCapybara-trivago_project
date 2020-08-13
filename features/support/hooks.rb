require 'report_builder'
require 'date'

Before do
    @home_page = HomePage.new
    @contact_page = ContactPage.new
    @destination_page = DestinationPage.new
    page.current_window.resize_to(1360,768)
end
 #the function responsible to take a screenshot and embedding on the report      
After do |scenario|
    temp_shot = page.save_screenshot("log/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot, "rb").read)
    embed(screenshot, "image/png", "Screenshot")
end

#getting the current date to use in the report
d = DateTime.now
@test_date = d.to_s.tr(":", "-")

#report_builder is a gem that I use to create a custom report and more graphical.
#here I can adjust some configurations
at_exit do
ReportBuilder.configure do |config|
  config.input_path = 'log/report.json'
  config.report_path = 'log/' + @test_date
  config.report_types = [:retry, :html]
  config.report_title = 'Trivago Automated Project'
  config.compress_image = true
  config.include_images = true
  config.additional_info = {'App': 'Web', 'Test Date': @test_date}
end
ReportBuilder.build_report
end