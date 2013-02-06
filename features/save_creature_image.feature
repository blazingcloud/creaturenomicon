Feature: SaveCreaturePicture
  User should be able to upload a picture of the creature

  Scenario: User clicks to edit a creature
  Given User is at edit creature page
  When User attaches picture 
  Then User clicks the "Update" button
  And then is redirected to home page
  And the picture shows up on the index if there is picture for the creature