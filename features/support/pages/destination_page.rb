class DestinationPage
    include Capybara::DSL  

    def return_dest
        find('.hero-main-title').text
    end
end
