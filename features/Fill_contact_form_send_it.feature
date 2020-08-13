Feature: Fill the contact form and send it
    As a user I should be able to fill the contact form and send it

@contact_form_success
  Scenario Outline: Message sent successfully
    Given the user navigates to the home page
    When click on the contact link on the bottom of the page    
    And fill the fields '<message>', '<full_name>' and '<email>'
    And click on the radio box to confirm the sharing
    And click on the submit button
    Then the user needs to see the '<result_message>'

    Examples:
      | message          | full_name  | email            | result_message             |
      | Hi, how are you? | Zeus Lopes | test@mail.com.br | Message Sent Successfully! |
