Feature: Manage In time and Out time.
    As to manage time sheet
    I should be an Employee and should be registered

Scenario: As a Employed I should be able to insert in on time.
    Given I as a logged in user
    When I follow "In/out Time"
    Then I should see "Track your Time"
    And I fill in "In Time" with "10:00:00"
    And I press "submit"
    And I should see "10:00:00"

Scenario: As a Employed I should be able to insert in out time.
    Given I as a logged in user
    When I follow "In/out Time"
    Then I should see "Track your Time"
    And I should able to insert the out time
    And I fill in "Out Time" with "17:00:00"
    And I press "submit"
    And I should see "17:00:00"
