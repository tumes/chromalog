Feature: Manage users
  In order to use Chromalog
  As a user
  I want to be able to create my account.
  
  Scenario: Register new user
    Given I am on the new user page and I know the security code is "1234"
    When I fill in "Email" with "test@test.com"
    And I fill in "Name" with "Robert"
    And I fill in "Password" with "1234"
    And I fill in "Password confirmation" with "1234"
    And I fill in "Security code" with "1234"
    And I choose "Yes" for the "Terms of service"
    And I press "Sign up"
    Then I should be on the homepage
    
  Scenario: Signing in
    Given I am a registered user with the email "user@test.com" and password "testpass"
    And I am on the homepage
    When I follow "Sign in"
    And I fill in "Email" with "user@test.com"
    And I fill in "Password" with "testpass"
    And I press "Sign in"
    Then I should be on the homepage
    And I should see "Signed in successfully."

