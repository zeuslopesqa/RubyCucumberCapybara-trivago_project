Feature: Subscribe to the Newsletter
    As a user I can Subscribe the Newsletter

@subscribe_newsletter
    Scenario Outline: Subscribe newsletter 
        Given the user navigates to the home page
        Then fill the field email
        And click on the button to Subscribe the newsletter
        Then the user sees a '<result_message>'

    Examples:
        | result_message          |
        | You are now checked-in! |
    
@subscribe_newsletter_error
    Scenario Outline: Subscribe newsletter with invalid email
        Given the user navigates to the home page
        Then fill the field email with a '<invalid_email>'
        And click on the button to Subscribe the newsletter
        Then the user sees a error message: '<error_message>'

    Examples:
       | invalid_email      | error_message                       |
       | invalid_email.com  | Please enter a valid e-mail address |
    
