Given(/^I land on the Start page$/) do
sleep(2)
end

And(/^I tap on X$/) do
  SearchHeader.new.close
end

Then(/^I tap on hamburger icon$/) do
  HambugerLauncher.new.open_menu
end

Then(/^I tap on the sign in button$/) do
  NavMenu.new.to_sign_in
end

Then(/^I tap on the sign in link$/) do
  control = LoginPathPage.new
  control.wait_till_visible
  control.select_existing_account
end

And(/^I enter Valid userName "([^"]*)" and Invalid password "([^"]*)"$/) do |username, password|
  control = SignInPage.new
  control.wait_till_visible
  control.sign_in_as(username, password)
end

Then(/^I should not be able to Sign In with Invalid Password$/) do
  sleep(5)
  $driver.find_element(:xpath,"//XCUIElementTypeStaticText[@label='The email address or password you entered is not valid']")
  puts "Error message displayed for incorrect Password"
  $driver.find_element(:xpath,"//XCUIElementTypeButton[@label='OK']").click
end