Given(/^I am on the Start Page$/) do
sleep(2)
end

And(/^I tap on Cross X$/) do
  SearchHeader.new.close
end

Then(/^I tap on hamburger Menu icon$/) do
  HambugerLauncher.new.open_menu
end

Then(/^I click Sign In Button$/) do
  NavMenu.new.to_sign_in
end

And(/^I click on facebook login$/) do
 NavMenu.new.to_facebook
end

Then(/^I enter the credentials$/) do
  $driver.find_element(:xpath,"//XCUIElementTypeTextField[@value='Email or Phone']").send_keys("testerguyx@gmail.com")
  $driver.find_element(:xpath,"//XCUIElementTypeSecureTextField[@value='Facebook Password']").send_keys("test3r")
end

And(/^I hit on the Log In$/) do
   $driver.find_element(:accessibility_id,"Log In").click
end

