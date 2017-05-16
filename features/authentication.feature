@authentication
Feature: As a user I would like to sign into the jobseeker app

  Scenario: I should be able to sign in
    #Given I accept push notifications
    Then I tap X on the left
    And I tap the hamburger icon
    Then I tap sign in
    Then I tap the sign in button
    Then I sign in as "metalmaniac@snagqa.com" and "testing123"
    Then I should be signed in
    Then I tap the hamburger icon
    And I log the user out

