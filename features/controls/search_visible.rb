require_relative "base_control"

class SearchVisible < BaseControl

  def wait_till_visible
    wait_true (10) { exists { find_element(accessibility_id: "Filter") } }
  end
end