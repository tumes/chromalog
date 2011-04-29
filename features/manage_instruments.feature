Feature: Manage users
  In order to keep track of instruments
  As a user
  I would like to be able to manage instruments in Chromalog
  
  @javascript
  Scenario: Editing an instrument
    Given I am an authenticated user
    And the database is seeded with a test instrument, method, and column
    And I visit the instruments index
    And I follow "Edit"
    And I wait for 3 seconds
    And I fill in "Name" with "Test Name 2"
    And I press "Update Instrument"
    Then I should be on the instrument index
    And I should see "Instrument successfully edited."
