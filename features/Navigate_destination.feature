Feature: Navigate to a destination through the menu on the top left
    As a user I can Navigate to a destination using the menu located on the top left of the page
    @navigate_destination
    Scenario: Navigate to a destination with success
        Given the user navigates to the home page
        Then click on the menu on the top-left of the page
        And select the option: destination
        And select the first destination of the list
        Then the user should see the appropriate destination page
        
     