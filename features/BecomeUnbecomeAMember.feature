Functional Requirement 6
Feature: Become/Unbecome a member
 
Background: 
    Given that I am logged in
    And that I am a user
Scenario Outline: Become a member successfully
    Given that I am viewing the event page screen
    When I click on the “Become A Member” button 
    Then I should receive the message “ You are now a member of the organization <organization name>”   
    And the “Become A Member” button turns into an “Unbecome A Member” button
    When I visit my profile screen
    Then I should be able to see the new <organisation name> in the “My Organisation Memberships” section 
 
Scenario Outline: Already a member
    Given that I am viewing the event page screen 
    When I click on the “Unbecome A Member” button 
    Then I should receive the message “ You are not a member of the organization <organization name> anymore. You will be missed.”  
    And the “Unbecome A Member” button turns into a “Become A Member” button
    When I visit my profile screen
    Then I should be able to see that the new <organisation name> is removed from the “My Organisation Memberships” section 
 
Examples: 
| organization name |                                              
| "Red Cross Greece"|  
 
