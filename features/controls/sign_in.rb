require_relative "base_control"

class SignInPage < BaseControl
  def sign_in_as (username, password)
    username_control = get_username
    username_control.click
    username_control.send_keys(username)
    password_control = get_password
    password_control.click
    password_control.send_keys(password)
    get_sign_in_button.click
  end

  def wait_till_visible
    wait_true (10) {exists{get_username}}
  end

  def get_username
    find_element(:xpath, "//XCUIElementTypeTextField[1]")
  end

  def get_password
    find_element(:xpath, "//XCUIElementTypeSecureTextField[1]")
  end

  def get_sign_in_button
    find_element(accessibility_id: "Sign In")
  end
end