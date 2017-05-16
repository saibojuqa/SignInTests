Feature:Sign In Using Incorrect User Name and Incorrect Password

  Scenario: I should not be login in if i enter incorrect User Name and Incorrect Password

    Given I will land on Start page
    And I tap X symbol
    Then I will tap hamburger icon
    Then I tap on sign in
    Then I tap sign in link
    And I enter Incorrect UserName "test@snagqa.com" and Incorrect password "testtest"
    Then I should not be able to Sign In with Incorrect Credentials

