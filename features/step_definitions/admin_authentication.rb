Given /^I as a admin$/ do
  # #hack convert it to factory
  User.create(:login => "admin", :password => "admin", :password_confirmation => "admin", :email => "admin@example.com", :is_admin => true)
  When "I go to the admin login page"
  And "I fill in \"user_session_login\" with \"admin\""
  And "I fill in \"user_session_password\" with \"admin\""
  And "I press \"login\""
  And "I should be logged in"
end

Given /^I should be logged in$/ do
  And "I should see \"Home\""
end
