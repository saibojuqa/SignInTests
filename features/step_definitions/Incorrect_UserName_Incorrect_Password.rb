Given(/^I will land on Start page$/) do
  sleep(2)
end

And(/^I tap X symbol$/) do
  SearchHeader.new.close
end

Then(/^I will tap hamburger icon$/) do
  HambugerLauncher.new.open_menu
end


Then(/^I tap on sign in$/) do
  NavMenu.new.to_sign_in
end


Then(/^I tap sign in link$/) do
  control = LoginPathPage.new
  control.wait_till_visible
  control.select_existing_account
end


And(/^I enter Incorrect UserName "([^"]*)" and Incorrect password "([^"]*)"$/) do |username, password|
  control = SignInPage.new
  control.wait_till_visible
  control.sign_in_as(username, password)
end

Then(/^I should not be able to Sign In with Incorrect Credentials$/) do
  sleep(5)
  $driver.find_element(:xpath,"//XCUIElementTypeStaticText[@label='The email address or password you entered is not valid']")
  puts "Error message displayed for incorrect Password"
  $driver.find_element(:xpath,"//XCUIElementTypeButton[@label='OK']").click
end