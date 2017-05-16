Given(/^I am on Start Page$/) do
sleep(2)
end

And(/^I tap the X$/) do
  SearchHeader.new.close
end

Then(/^I tap hamburger icon$/) do
  HambugerLauncher.new.open_menu
 end

Then(/^I tap Settings$/) do
 NavMenu.new.to_settings
 end

 And(/^I verify Version Number$/) do
  sleep(2)
   $driver.find_element(:accessibility_id,"v5.0.5").displayed?
 end

