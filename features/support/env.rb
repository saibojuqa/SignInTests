
require "appium_lib"
require_relative "../controls/base_control"

def caps
  { caps: {platformName: "iOS",
           platformVersion: "10.3",
           newCommandTimeout: "2300",
           automationName: "Appium",
           bundleId: "com.snagajob.iphoneclient",
           deviceName: "iphone 7",
           udid: "E5B16246-3177-459A-B2AA-7408F9E40560"
          }
  }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods BaseControl