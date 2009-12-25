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
    And I should see "New employee added successfull"
    And I should see "Abhishek Pradeep Shukla"
