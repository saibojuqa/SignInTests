require_relative "base_control"

class SearchHeader < BaseControl
      def close
        find_element(:xpath, "//XCUIElementTypeButton[1]").click
      end

end