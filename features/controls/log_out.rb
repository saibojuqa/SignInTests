require_relative "base_control"

class LogOut < BaseControl
  def log_user_out
    tap_profile_image.click
    tap_settings_icon.click
    tap_logout_button.click
  end

  def tap_profile_image
    find_element(:xpath, "//XCUIElementTypeButton[1]")
  end

  def tap_settings_icon
    sleep 3
    find_element(accessibility_id: "settings")
  end

  def tap_logout_button
    sleep 2
    find_element(accessibility_id: "Logout")
  end
end

