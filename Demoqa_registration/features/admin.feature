@doclogin
Feature: registration for adminlog
As an end user
I should be able to login to user page
so that i can manage user page

@super_login
Scenario: Admin login with valid details
Given I am in admin login page
When  I enter valid username and password
Then  I should see "Success!: You have successfully logged in"

@manage_user
Scenario:Redirect to manage user
Given I am in Home page
When  I click on Manage user button
Then  I should see "manage user dashboard"

@new_user
Scenario: Redirect to userform
Given I am in manage user dashboard
When  I click on new user button
Then  I shoul see "new user popup window"