require_relative "base_control"

class LoginPathPage < BaseControl
  def select_existing_account
    get_control.click
  end

  def wait_till_visible
    wait_true (10) {exists{get_control}}
  end

  private
  
  def get_control
    find_element(accessibility_id: "Have an account? Sign In")
  end

end