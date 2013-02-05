Feature: CreateCreature
  In order to add a creature
  a user
  goes to add creature page to enter details

  Scenario: User saves a new creature
    Given User is on home page
    When User clicks "Add" link
    Then User is directed to create new creature page
    And User fill in a name for creature 
    And User fill in a description for creature
    And User fill in a habitat for creature 
    When User clicks "Save" button
    Then Creature is saved
    Then User is redirected to the home page 
    And The the new creature is now part of the creature list 