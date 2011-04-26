Feature: Manage users
  In order to keep track of instrument performance
  As a user
  I would like to log my daily check standard runs.
  
  @javascript
  Scenario: Logging a new run
    Given I am an authenticated user
    And the database is seeded with a test instrument, method, and column
    And I visit the run logs page
    And I select "Test instrument" from "Instrument"
    And I select "Test method" from "Method"
    And I select "Test column" from "Column"
    And I fill in "Levels" with "1"
    And I press "Start run log"
    And I fill in "run_log_pressure" with "3"
    And I fill in "run_log_flow_rate" with "3"
    And I fill in "Std_Conc" with "3"
    And I fill it "Analyte" with "3"
    And I press "Create Run log"
    Then I should be on the homepage