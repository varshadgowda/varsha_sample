# # Given(/^I am on demoqa home page$/) do
# # @browser.navigate.to "http://demoqa.com/"

# # end

# You can implement step definitions for undefined steps with these snippets:

Given("I am in admin login page") do
  @browser.navigate.to "http://test-docdock.qwinix.io/admin/sign_in"
end

When("I enter valid username and password") do
	sleep 2
	@browser.find_element(id: "sign_in_login_handle").send_keys "darshan"
	sleep 2
	@browser.find_element(id: "sign_in_password").send_keys "Admin123!"
	  @browser.find_element(name: "commit").click
end
Then("I should see {string}") do |string|

  # @browser.find_element(name: "commit").displayed?
  @browser.find_element(xpath: "//a[@href='/admin/home']").displayed?
end

Given("I am in Home page") do
@browser.navigate.to "http://test-docdock.qwinix.io/admin/users"
end

When("I click on Manage user button") do
	sleep 2
	@browser.find_element(xpath: "//a[@href='/admin/users']").displayed?
end

Given("I am in manage user dashboard") do
@browser.navigate.to "http://test-docdock.qwinix.io/admin/users"
end

When("I click on new user button") do
sleep 2
@browser.find_element(xpath: "//a[@href='/admin/users/new']").displayed?
sleep 2
@browser.find_element(xpath: "//a[@href='/admin/users/new']").click
end

Then("I shoul see {string}") do |string|
	sleep 5
	@browser.find_element(xpath: ".//*[@id='div_modal_generic']/div").displayed?
end

  