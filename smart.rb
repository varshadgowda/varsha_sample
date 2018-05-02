@registration
Feature: registration for demoqa
As a user
In order to register for demoqa
I need to be there in demoqa home page

@InvalidSignup
Scenario:
Given I am on Bug Tracker home page
When I click on sign up button
Then I should be able to see signup page
Given I am on Bug Tracker signup page
When I enter invalid datas
And I click on ok button
Then I should able to see error message