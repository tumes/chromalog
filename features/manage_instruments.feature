Feature: Manage users
  In order to keep a log of run logs, standards, columns, and maintenances
  As a user
  I would like to be able to manage instruments in Chromalog
  
  @javascript
  Scenario: Creating an instrument
    Given I am an authenticated user
    And I am on the homepage
    When I follow Add "Instruments"
    And I fill in "Name" with "Test instrument"
    And I follow "Add an analytical method"
    And I fill in "Method" with "Test method"
    And I follow "Add an analyte"
    And I fill in "Analyte" with "Test analyte"
    And I press "Create instrument"
    Then I should be on the instrument index
    And I should see "New instrument created."
    
  
  @javascript
  Scenario: Editing an instrument
    Given I am an authenticated user
    And there is an instrument called "Test instrument" with a method called "Test method" with an analyte called "Test analyte"
    When I follow View "Instruments"
    Then I should see "Test instrument"
    And I follow "Edit"
    And I wait for 3 seconds
    And I fill in "Name" with "Test instrument 2"
    And I fill in "Method" with "Test method 2"
    And I fill in "Analyte" with "Test analyte 2"
    And I press "Update Instrument"
    Then I should be on the instrument index
    And I should see "Instrument successfully edited."
