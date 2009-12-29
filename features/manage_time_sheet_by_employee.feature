Feature: Manage In time and Out time.
    As to manage time sheet
    I should be an Employee and should be registered

@focus
Scenario: As a Employed I should be able to insert in time.
    Given I as a logged in user
    When I follow "In/out Time"
    Then I should see "Track your Time"