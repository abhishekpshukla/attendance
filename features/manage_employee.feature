Feature: Manage Employee profile
    As a employee of the company
    I should have a account to access the system

Scenario: As a employee of the organization I should be able to access system
    Given I as an employee of the company
    When I go to the login page
    And I fill in "user_session_login" with "abhishek"
    And I fill in "user_session_password" with "secret"
    And I press "login"
    And I should be logged in
    And I should see "Welcome Abhishek Shukla"

@focus
Scenario: I should be able to edit my profile
    Given I as a logged in user
    When I follow "My Profile"
    Then I should see "Edit My Profile"
    And I fill in "First Name" with "Andy"
    And I fill in "City" with "Mumbai"
    And I fill in "Mobile No." with "111111111111"
    And I press "Update"
    And I should see "Profile updated successfully"