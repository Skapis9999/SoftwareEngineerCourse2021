Functional Requirement 7
Feature: Notify a member about event
 
Background: 
    Given that I am logged in       
    And that I am a user
    And I am a member of an organisation
Scenario Outline: The notification system sends me a notification 
    When the organisation creates a <new current volunteer event> 
    Then the notification system should send me a notification about the <new current volunteer event>
    And I should be redirected to the notification event page screen.
 
Examples: New current volunteer event
| "Blood donation for the Blood Donation Center" |
