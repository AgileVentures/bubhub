Feature: User Panel
  As an admin
  I want to display information to users when they log in
  Because I want them to be able to see their usage statistics

Background:
  Given I am on /userpanel

Scenario: Display the information
  Then I should see "Assigned Bike"
  Then I should see "Total Ride Time"
  Then I should see "Total Number of Rides"

Scenario: Clicking the Help link
  When I follow "Help/Instructions"
  Then I should be on the how it works page
