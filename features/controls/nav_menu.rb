require_relative "base_control"

class NavMenu < BaseControl
  def to_sign_in
    find_element(:accessibility_id, "Sign In").click
  end

    def to_settings
      find_element(:accessibility_id, "Settings").click
    end

    def to_facebook
      find_element(:name, "Log in with Facebook").click
    end

  end
