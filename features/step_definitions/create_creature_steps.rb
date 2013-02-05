Given /^User is on home page$/ do
  # pending ("Need to create home page") 
  visit '/'
end

When /^User clicks "(.*?)" link$/ do |arg1|
  # pending ("Click a Add button to go to create user") 
  click_link(arg1)
end

When /^User clicks "(.*?)" button$/ do |arg1|
  # pending ("Click a Add button to go to create user") 
  click_button(arg1)
end

Then /^User is directed to create new creature page$/ do
  # pending ("Create a new creature model") 
  visit new_creature_path
  @my_creature = Creature.new
end

Then /^User fill in a name for creature$/ do
  # pending ("create name field for creature")
  fill_in('Name', :with => 'Tyra')
  @my_creature.name = 'Tyra'
end

Then /^User fill in a description for creature$/ do
  # pending ("create description field for creature")
  fill_in('Description', :with => 'Tyra is a pink dinosaur')
end

Then /^User fill in a habitat for creature$/ do
  # pending ("create habitat field for creature")
  fill_in('Habitat', :with => 'BlazingCloud')
end

Then /^Creature is saved$/ do
  # pending ("save creature")
  @my_creature.save
end

Then /^User is redirected to the home page$/ do
  # pending ("Redirect to home")
  visit root_path
end

Then /^The the new creature is now part of the creature list$/ do
  # pending ("find the new creature in the list of creatures shown")
  Creature.find_by_name('Tyra')
  page.has_content?('Tyra')
end

