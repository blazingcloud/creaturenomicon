Given /the User is at edit page$/ do
  @creature = Creature.new({:name=> 'Tyra', :description=>'pink dino', :habitat=>'BZC'})
  @creature.save
  visit edit_creature_path(@creature)
end

Given /^there is a select field$/ do
  # pending ("make type field show on page")
  page.find('select')
  page.find('select option')
end

Then /^"([^"]*)" should be an option for "([^"]*)"/ do |value, field|
  within('select#creature_'+field) do
    find(:xpath, './/option[1]').text.should match("Inflatable")
    find(:xpath, './/option[2]').text.should match("Fluffy")
    find(:xpath, './/option[3]').text.should match("Hard")
  end

  page.select(value, {:from => "creature_#{field}"})
end

Then /clicks 'Update' button$/ do
  click_button('Update')
end

Then /the creature should have type be updated$/ do
  within('.creature#Tyra .type') do
    has_content?('Fluffy')
  end
end
