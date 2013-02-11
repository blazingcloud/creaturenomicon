Feature: Add Friend
  User can add friends to creatures and they can see
  that they are each other's friends

  Scenario: User adds another creature as a friend to a creature
  Given the User is at edit page
  When the user types in "Bieber" in the friend field 
  And the user gets autocomplete "Bieber"
  Then User clicks the 'Update' button
  Then is redirected to the home page
  Then you can see "Bieber" is part of creature friends
  Then you go to Biebers page, and you see Tyra as a friend too

