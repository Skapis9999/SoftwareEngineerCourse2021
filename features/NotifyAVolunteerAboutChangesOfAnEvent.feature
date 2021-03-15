Functional Requirement 9
 
Feature: Notify a volunteer about changes of an event
 
Background: 
    Given that I am logged in                                        
    And that I am a user
    And that I am a volunteer 
Scenario: Notify about changes in the volunteer event
    When the organization has modified the volunteer event’s information
    Then the notification system should inform me about the changes in the volunteer event’s information.
    When I click on the notification
    Then I should be redirected to the event page.


