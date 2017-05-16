require_relative "base_control"

class HambugerLauncher < BaseControl
  def open_menu
    find_element(:accessibility_id, "hamburger").click
  end

end