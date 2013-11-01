Feature: Show User When Sign in
  As a registered user of the website
  I want to see my name as logged-in on the right left corner of the navigation bar 
  so I can know that I'm logged in

    Scenario: Logged in as user name
      Given I exist as a user
      When I sign in with valid credentials
      Then I should see my name on the right top corner on the navigation bar
