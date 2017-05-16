Feature:Sign In Using Incorrect Password

  Scenario: I should not be login in if i enter incorrect Password

    Given I land on the Start page
    And   I tap on X
    Then I tap on hamburger icon
    Then I tap on the sign in button
    Then I tap on the sign in link
    And  I enter Valid UserName "metalmania@snagqa.com" and Invalid password "testtest"
    Then I should not be able to Sign In with Invalid Password

