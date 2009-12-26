Feature: As a new employee
    I as admin should able to add new employee

Scenario: Add a new employee
    Given I as a admin
    And I have a list of designation
    When I go to the add employee page
    And I fill in "First Name" with "Abhishek"
    And I fill in "Middle Name" with "Pradeep"
    And I fill in "Last Name" with "Shukla"
    And I select "Team Lead" from "Designation"
    And I fill in "Date of Joining" with "23-07-2009"
    And I fill in "Date of Birth" with "23-07-1982"
    And I select "Male" from "Gender"
    And I fill in "Address1" with "B-1001, Silvasa Park"
    And I fill in "Address2" with ""
    And I fill in "City" with "Pune"
    And I fill in "State" with "Maharashtra"
    And I fill in "Country" with "India"
    And I fill in "Zip Code" with "411005"
    And I fill in "Mobile No." with "1234567890"
    And I fill in "Home No." with ""
    And I fill in "Office No." with ""
    And I fill in "login" with "abhishek"
    And I fill in "email" with "abhishek@example.com"
    And I fill in "password" with "secret"
    And I fill in "password confirmation" with "secret"
    And I press "Register"
    And I should see "Abhishek Pradeep Shukla"

@focus
Scenario Outline: Not allow admin to add a employee is the value is invalid
    Given I as a admin
    And I have a list of designation
    When I go to the add employee page
    And I fill in "First Name" with "<first_name>"
    And I fill in "Middle Name" with "pradeep"
    And I fill in "Last Name" with "<last_name>"
    And I select "Team Lead" from "Designation"
    And I fill in "Date of Joining" with "<date_of_joining>"
    And I fill in "Date of Birth" with "<date_of_birth>"
    And I select "Male" from "Gender"
    And I fill in "Address1" with "<address1>"
    And I fill in "Address2" with ""
    And I fill in "City" with "<city>"
    And I fill in "State" with "<state>"
    And I fill in "Country" with "India"
    And I fill in "Zip Code" with "<zip_code>"
    And I fill in "Mobile No." with "<mobile_number>"
    And I fill in "Home No." with ""
    And I fill in "Office No." with ""
    And I fill in "login" with "<login>"
    And I fill in "email" with "<email>"
    And I fill in "password" with "<password>"
    And I fill in "password confirmation" with "<confirm_password>"
    And I press "Register"
    And I should see "<error_message>"

   Examples: incomplete registration inputs
   | first_name  | last_name    | date_of_joining   | date_of_birth | address1      | city  | state         | zip_code  |mobile_number  | login     | email          | password | confirm_password | error_message                                                  |
   |             |  shukla      | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    | 123456789     | abhishek  | abhishek@a.com | secret   | secret           | First Name cannot be blank                                     |
   | Abhishek    |              | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    | 123456789     | abhishek  | abhishek@a.com | secret   | secret           | Last Name cannot be blank                                      |
   | Abhishek    | shukla       |                   | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    | 123456789     | abhishek  | abhishek@a.com | secret   | secret           | Date Of Joining cannot be blank                                |
   | Abhishek    | shukla       | 23-07-2006        |               | silvasa home  | Pune  | Maharashtra   | 411072    | 123456789     | abhishek  | abhishek@a.com | secret   | secret           | Date of Birth cannot be blank                                  |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    |               | Pune  | Maharashtra   | 411072    | 123456789     | abhishek  | abhishek@a.com | secret   | secret           | Address1 cannot be blank                                       |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  |       | Maharashtra   | 411072    | 123456789     | abhishek  | abhishek@a.com | secret   | secret           | City cannot be blank                                           |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  |               | 411072    | 123456789     | abhishek  | abhishek@a.com | secret   | secret           | State cannot be blank                                          |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   |           | 123456789     | abhishek  | abhishek@a.com | secret   | secret           | Zip Code cannot be blank                                       |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    |               | abhishek  | abhishek@a.com | secret   | secret           | Mobile number cannot be blank                                  |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    | only_digit    | abhishek  | abhishek@a.com | secret   | secret           | Mobile number should contain only digit                        |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    | 123456789     |           | abhishek@a.com | secret   | secret           | Login is too short (minimum is 3 characters)                   |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    | 123456789     | abhishek  |                | secret   | secret           | Email is too short (minimum is 6 characters)                   |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    | 123456789     | abhishek  | valid_email    | secret   | bad_secret       | Password doesn't match confirmation                            |
   | Abhishek    | shukla       | 23-07-2006        | 23-07-1982    | silvasa home  | Pune  | Maharashtra   | 411072    | 123456789     | abhishek  | valid_email    | secret   |                  | Password confirmation is too short (minimum is 4 characters)   |




