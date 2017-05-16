Feature:Sign In Using Incorrect User Name

  Scenario: I should not be login in if i enter incorrect User Name

    Given I land on Start page
    And I tap X
    Then I tap on the hamburger icon
    Then I tap on sign in button
    Then I tap the sign in link
    And I enter Invalid UserName "test@snagqa.com" and valid password "testing123"
    Then I should not be able to Sign In

