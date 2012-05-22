Feature: create a new account for Rolling Dones
	In order to create a new account for Rolling Dones
	As a user
	I want to go to the account creation page and create an account


Scenario: Go to the account creation page
	Given I am on the Rolling Dones Home page
	When I follow "Sign up"
	Then I should see the text 'Sign up'

Scenario: The create account page
	Given I am on the signup page
	Then I should see the field labeled 'Username'
	And I should see the field labeled 'Email'
	And I should see the field labeled 'Password'
	And I should see the field labeled 'Password confirmation'

Scenario: Submitting the form with invalid data
	Given I am on the signup page
	And I press "Create my account"
	Then I should see an error message

Scenario: Submitting the form with a weak password
	Given I am on the signup page
	And I complete the form with a weak password
	And I press "Create my account"
	Then I should see the text 'Password must contain at least 1 lowercase letter, 1 uppercase letter, 1 digit and 1 special character'
	And I should not see the text "Password can't be blank"
	And I should not see the text 'Password is too short'

Scenario: Submitting the form with valid data
	Given I am on the signup page
	And I complete the form with valid data
	And I press "Create my account"
	Then I should be on the user profile page
	And I should see the username
	And I should see the welcome message