# Author:     Abhishek Shukla
# Created on: 27th Dec 2009
# Purpose:    To manage employee related activities

Given /^I as an employee of the company$/ do
  Given "I as a admin"
  And "I have a list of designation"
  When "I go to the add employee page"
  And "I fill in \"First Name\" with \"Abhishek\""
  And "I fill in \"Middle Name\" with \"Pradeep\""
  And "I fill in \"Last Name\" with \"Shukla\""
  And "I select \"Team Lead\" from \"Designation\""
  And "I fill in \"Date of Joining\" with \"23-07-2009\""
  And "I fill in \"Date of Birth\" with \"23-07-1982\""
  And "I select \"Male\" from \"Gender\""
  And "I fill in \"Address1\" with \"B-1001, Silvasa Park\""
  And "I fill in \"City\" with \"Pune\""
  And "I fill in \"State\" with \"Maharashtra\""
  And "I fill in \"Country\" with \"India\""
  And "I fill in \"Zip Code\" with \"411005\""
  And "I fill in \"Mobile No.\" with \"1234567890\""
  And "I fill in \"login\" with \"abhishek\""
  And "I fill in \"email\" with \"abhishek@example.com\""
  And "I fill in \"password\" with \"secret\""
  And "I fill in \"password confirmation\" with \"secret\""
  And "I press \"Register\""
  And "I should see \"Abhishek Pradeep Shukla\""
  And "I follow \"logout\""
  Then "I should be logout"
end


Given /^I as a logged in user$/ do
  Given "I as an employee of the company"
  When "I go to the login page"
  And "I fill in \"user_session_login\" with \"abhishek\""
  And "I fill in \"user_session_password\" with \"secret\""
  And "I press \"login\""
  And "I should be logged in"
  And "I should see \"Welcome Abhishek Shukla\""
end
