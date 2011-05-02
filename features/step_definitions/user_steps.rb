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

Given /^I am a registered user with the email "([^"]*)" and password "([^"]*)"$/ do |arg1, arg2|
  Factory(:user)
end


Given /^I visit the run logs page$/ do
  visit('/run_logs/intro')
end

Given /^I wait for (\d+) seconds$/ do |arg1|
  sleep arg1.to_i
end

Given /^I visit the standard logs page$/ do
  visit('/analytical_standards/intro')
end

Given /^I visit the instruments index$/ do
  visit instruments_path
end

When /^I choose "([^"]*)" for the "([^"]*)"$/ do |arg1, arg2|
  choose(arg1)
end

When /^I follow Add "([^"]*)"$/ do |arg1|
  visit new_instrument_path
end

Given /^there is an instrument called "([^"]*)" with a method called "([^"]*)" with an analyte called "([^"]*)"$/ do |arg1, arg2, arg3|
  Factory(:instrument)
end


When /^I follow View "([^"]*)"$/ do |arg1|
 visit instruments_path
end

Given /^there is a chromatographic column called "([^"]*)"$/ do |arg1|
  Factory(:chromatographic_column)
end















