=begin
Given(/^I accept push notifications$/) do
  find_element(:accessibility_id, "Allow").click
end
=end

Then(/^I tap X on the left$/) do
  SearchHeader.new.close
  end


And(/^I tap the hamburger icon$/) do
  HambugerLauncher.new.open_menu
  end

Then(/^I tap sign in$/) do
  NavMenu.new.to_sign_in
end


Then(/^I tap the sign in button$/) do
  control = LoginPathPage.new
  control.wait_till_visible
  control.select_existing_account
end

Then(/^I sign in as "([^"]*)" and "([^"]*)"$/) do |username, password|
  control = SignInPage.new
  control.wait_till_visible
  control.sign_in_as(username, password)
end

Then(/^I should be signed in$/) do
SearchVisible.new.wait_till_visible
  puts "I'm signed in!"
end

=begin
#The steps below log the user out to ensure the initial login test does not break on a second run
#This can be completely avoided once we get a buildable .ipa file
#that can be installed fresh with each test run
=end

And(/^I log the user out$/) do
  LogOut.new.log_user_out
end

