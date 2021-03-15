Feature 5: Suggest event
Background:     
    Given that I am logged in
    And I am a user                                     
Scenario Outline: Successful information with event matching and corresponding suggestions
    Given I have inserted my <personal information> 
    When I am viewing the homepage 
    Then the notification system should be able to check my <personal information>    
    And the notification should match user’s <personal information> with current <event options>                    
    And the notification system must provide the user with some <event options> based on my <information>
    When I click on an <event option> 
    Then I should be redirected to the event page 
 
 
Scenario Outline: No current volunteer event matching the user’s information due to its being blank
    Given I have not inserted my <personal information>
    When I am viewing the homepage                          
    Then the notification system should be able to check that my <personal information> is blank
    And the notification system must provide the user with random current volunteer <event options>
    When I click on an <event option> 
    Then I should be redirected to the event page
     
Scenario: Unavailability of new current event options
    Given I have inserted my <personal information>
    When I am viewing the homepage                          
    Then the notification system should be able to check my <personal information> 
    But the matching is not successful
    And I should see a message saying “No current events available”
    
 
Examples: Personal information  
| personal information | (example) | minimum value | maximum value |
|name       | “Ioannis Papadopoulos” | minimum 3 characters | maximum 30 characters|
| age       | 30  | minimum of 18 | maximum of 99 |
| location | “Thessaloniki” | minimum 3 characters | maximum 30 characters |
| profession | “Teacher” |  minimum 3 characters | maximum 30 characters |
| interests | “Hiking” | minimum 3 characters | maximum 30 characters |
| History of volunteer events | “Hellenic Rescue Team Expedition in Olympus (summer 2016)”| minimum 3 characters | maximum 30 characters |
 
 
Examples: Event option
|”Tree planting in Chortiatis mountain (spring 2019)”|
| “First aid workshop” |
 


