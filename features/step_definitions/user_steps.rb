Given /^the following users:$/ do |users|
  User.create!(users.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) user$/ do |pos|
  visit users_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following users:$/ do |expected_users_table|
  expected_users_table.diff!(tableish('table tr', 'td,th'))
end

Given /^I am an authenticated user$/ do
  Factory(:user)
  visit root_path
  When %{I follow "Sign in"}
    And %{I fill in "Email" with "user@test.com"}
    And %{I fill in "Password" with "testpass"}
    When %{I press "Sign in"}
end

Given /^I am a signed out, registered user$/ do
  Factory(:user)
  visit('users/sign_out')
  visit('/')
end

Given /^I visit the run logs page$/ do
  visit('/run_logs/intro')
end

Given /^I wait for (\d+) seconds$/ do |arg1|
  sleep arg1.to_i
end

Given /^the database is seeded with a test instrument, method, and column$/ do
  Factory(:instrument)
  Factory(:analytical_method)
  Factory(:analyte)
  Factory(:chromatographic_column)
end







