Feature: Search other users/organisations/events
  
  Background:
    Given that I am logged in
    And I type in the search bar
    
    Scenario Outline: User/organisation searching 
    When the search phrase "<phrase>" is entered
    Then results for "<phrase>" are shown
    And the related results include "<related>"
    
    Examples: Names
      | phrase            | related       |
      | Robotics For All  | R4A           |
      | Tsardou           | Tsardoulias   |
      
    Examples: Information
      | phrase                      | related |
      | Age "21"                    | Christos Skapetis |
      | Founded "1999"              | R4A |
      | Accepting volunteers "yes"  | Greece 2021 Celebration |
      | Place of Living "Mars"      | None |
       

      #compact form. Should we make another scenario for No-result?
      
    
    