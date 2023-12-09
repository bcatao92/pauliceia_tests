require 'selenium-webdriver'

Given('I am on the JavaScript site home page') do
  visit 'https://pauliceia.unifesp.br/portal/home'# Implement code to navigate to the JavaScript site home page
end

When('I press the {string} button to access the {string} section') do |button_text, section|
  click_link button_text # Implement code to click the specified button to access the specified section
end

Then('I should click the {string} button and be sent to an accounts.google.com/signin/oauth page') do |google_button_text|
  click_link button_text # Implement code to click the specified Google+ button and verify the redirection
end


Then('I should fill the {string} and {string} fields with the wrong e-mail and correct senha and click the {string} button') do |email_field, password_field, login_button|
  fill email_field emailWrong
  fill password_field password
  click_link login_button  # Implement code to fill the specified fields with incorrect email, correct password, and click the login button
end

Then('I should see the message:') do |expected_message|
  expected_message # Implement code to verify if the displayed message matches the expected message
end