As a user 
So that I can participate in new current volunteer events 
I want to be able to apply for the event
Functional Requirement 8
 
Feature: Apply for event
Background:
    Given that I am logged in                                 
    And that I am a user
    And that I am viewing the event page
 
Scenario Outline: Apply for a current volunteer event as a volunteer
    Given the event is current
    When I click the “Apply For Event” button 
    Then I should receive the message “ You have been accepted as a participant in the event <event name>” 
    And the “Apply For Event” button turns into a “Leave Event” button
 
Scenario: Apply for a non current volunteer event as a volunteer
    Given the event is  non current
    When I click the “Apply For Event” button 
    Then I should receive the message “ You cannot apply for this event as the number of participants has been fulfilled”  
 
Scenario Outline: Leave a current volunteer event
    Given I have applied for an event
    When  I click the “Leave Event” button 
    Then I should receive the message “ You have left the event <event>”     
    And the “Leave Event” button turns into an “Apply For Event” button
 
        
Examples: Information
   
    | Name              | "Loutraki beach Cleaning Day" |
    | Date              | 30/10/2020   |
    | Special Outfit    | "not needed" |
    | Special Equipment | "not needed" |
    | Status            | recruiting |    
     
Examples: Event Name
    | "Loutraki beach Cleaning Day" |
