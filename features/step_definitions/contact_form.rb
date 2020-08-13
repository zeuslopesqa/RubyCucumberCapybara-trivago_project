Given('the user navigates to the home page') do                                                   
      @home_page.go
  end                                                                                    
                                                                                         
  When('click on the contact link on the bottom of the page') do    
      @home_page.click_contact        
  end                                                                                 
                                                                                    
  And('fill the fields {string}, {string} and {string}') do |message, full_name, email|
      @contact_page.switch_to_window(@contact_page.windows.last)
      @contact_page.fill_fields(message, full_name, email) 
           
  end                                                                                    
                                                                                         
  And('click on the radio box to confirm the sharing') do                             
      @contact_page.radiobox_check
      
  end                                                                                    
                                                                                         
  And('click on the submit button') do 
    @contact_page.click_button_submit             
  end                                                                                    
                                                                                         
  Then('the user needs to see the {string}') do | result_message |                                          
    expect(@contact_page.validate_success_msg).to have_text result_message
  end                                                                                    