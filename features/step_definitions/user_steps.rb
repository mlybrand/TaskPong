Then /^I should see the text '(.*)'$/ do |text|
  page.should have_content(text)
end

Then /^I should see the field labeled '(.*)'$/ do |field_name|
  page.should have_field(field_name)
end

Then /^I should see an error message$/ do
  page.should have_selector("div.alert.alert-error", text: "error")
end

Given /^I complete the form with a weak password$/ do
  step 'I fill in "Password" with "foobarbaz"'
end

Then /^I should not see the text ['"](.*)['"]$/ do |text|
  page.should_not have_content(text)
end

Given /^I complete the form with valid data$/ do
   step 'I fill in "Username" with "foobar"'
   step 'I fill in "Email" with "foo@bar.com"'
   step 'I fill in "Password" with "f00B@rb@z"'
   step 'I fill in "Password confirmation" with "f00B@rb@z"'
end

Then /^I should see the username$/ do
  page.should have_content("foobar")
end

Then /^I should see the welcome message$/ do
  page.should have_selector('div.alert.alert-success', text: 'Welcome')
end