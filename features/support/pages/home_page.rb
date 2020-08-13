require 'securerandom'
class HomePage
    include Capybara::DSL   

    def go
        visit ""
    end

    def click_contact
        find('a', text: 'Contact').click  
    end

    def fill_email_newsletter()      
        #"SecureRandom.alphanumeric(8) + '@mailinator.com'" is afunction to 
        # generatic an random email and avoid flaky tests  
        find('.et-email').set SecureRandom.alphanumeric(8) + '@mailinator.com'
    end

    def fill_invalid_email(invalid_email)
        find('input[name=email]').set invalid_email
    end

    def click_submit_news
        find('.submit').click
    end

    def find_subscribed_success
        find('.submitted').text
    end

    def find_subscribed_error
        find('.et-email-error').text
    end

    def click_menu_top_left
        find('.nav-icon').click
    end

    def click_destination_menu    
        find('#menu > div > div > div:nth-child(1) > div.menu-expand-header > div > div').click        
    end
    #I made this function only to return the value selected to compare with the page opened in sequence.
    def return_first_dest
        destination = first('.destination-menu')
        result = destination.text
    end

    def select_1stdestination
        destination = first('.destination-menu')
        result = destination.text
        destination.click            
    end
end