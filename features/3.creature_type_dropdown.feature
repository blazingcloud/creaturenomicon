Feature:
  User should go to creature edit profile page and
  be able to select from types available.

  Scenario: The User wants to update the creature with a type
  Given the User is at edit page
  Given there is a select field
  Then "Fluffy" should be an option for "creature_type" and selects it
  And clicks 'Update' button
  And is redirected to the home page
  And the creature should have type be updated 


