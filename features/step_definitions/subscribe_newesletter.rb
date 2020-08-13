Then('fill the field email') do                                   
    @home_page.fill_email_newsletter()    
end                                                                            
                                                                                 
  Then('click on the button to Subscribe the newsletter') do                     
   @home_page.click_submit_news   
end                                                                            
                                                                                 
  Then('the user sees a {string}') do |result_message|                                   
    expect(@home_page.find_subscribed_success).to have_text result_message      
end                                                                            
                                                                                 
Then('fill the field email with a {string}') do |invalid_email|
  @home_page.fill_invalid_email(invalid_email)
end

Then('the user sees a error message: {string}') do |error_message|                       
  expect(@home_page.find_subscribed_error).to have_text error_message    
end                                                                               
                                                                                  