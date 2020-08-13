Then('click on the menu on the top-left of the page') do
  @home_page.click_menu_top_left
end
  
And('select the option: destination') do
  @home_page.click_destination_menu
end

And('select the first destination of the list') do
  @dest = @home_page.return_first_dest
  @home_page.select_1stdestination
end
  
Then('the user should see the appropriate destination page') do    
  #Here I can verify if the user is on the correct page based on the menu option selected.
  expect(@destination_page.return_dest.downcase).to have_content @dest.downcase
end
  