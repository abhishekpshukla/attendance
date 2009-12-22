Feature: As a new employee
    I as admin should able to add new employee

Scenario: Add a new employee
    Given I as a admin
    When I follow "Add Employee"
    And I fill in "login" with "abhishek"
    And I fill in "email" with "abhishek@example.com"
    And I fill in "password" with "secret"
    And I fill in "password confirmation" with "secret"
    And I press "Register"