Feature: Manage users
  In order to keep track of instrument performance
  As a user
  I would like to log my daily check standard runs.
  
  @javascript
  Scenario: Logging a new run
    Given I am an authenticated user
    And the database is seeded with a test instrument, method, and column
    And I visit the standard logs page
    And I select "Test instrument" from "Instrument"
    And I select "Test method" from "Method"
