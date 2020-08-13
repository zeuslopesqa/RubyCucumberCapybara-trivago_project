class ContactPage
    include Capybara::DSL
    def fill_fields(message, full_name, email)
        find('.contact-msg').send_keys message
        find('#app > div.content-wrapper > div > div > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > input').send_keys full_name
        find('#contact-email').send_keys email
    end

    def radiobox_check
        check('confirm')
    end

    def click_button_submit
        click_button 'Submit'
    end

    def validate_success_msg
        find('.feedback').text
    end
end