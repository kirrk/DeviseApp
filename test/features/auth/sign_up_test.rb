require "test_helper"

feature ("As a site visitor  I want to be able to sign up for an account so that
  I can perform actions that require me to be logged in") do

scenario "sign up"

  #Given a registration form
  visit "/"
  click_on "Sign Up"

  #Wen I register with valid info
  fill_in "Email", with "test@example.com"
  fill_in "password", with: "password"
  fill_in "password confirmation", with: password
  click_on "Sign Up"

  #Then I should be signed up
  page.must_have_content "Welcome! You have signed up successfully"
  page.wont_have_content "There was a problem with your sign up"
  end
end
