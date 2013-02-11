Feature: CreateCreature
  In order to add a creature
  a user
  goes to add creature page to enter details

  Scenario: User saves a new creature
    Given the User is on the home page
    When User clicks the "Add" link
    Then she is directed to the create new creature page
    And fills in a name for creature 
    And fills in a description for creature
    And fills in a habitat for creature 
    When User clicks the "Save" button
    Then Creature is saved
    Then User is redirected to the home page 
    And the new creature is now part of the creature list 