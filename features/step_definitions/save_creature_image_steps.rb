Given /^User is at edit creature page$/ do
  # pending ("start from the root page and one of the creature elements")
  @creature = Creature.new({:name=> 'Tyra', :description=>'pink dino', :habitat=>'BZC'})
  @creature.save
  visit edit_creature_path(@creature)
end

When /^User attaches picture$/ do
  # pending ("install carrierwave and cloudinary and make it add mount PictureLoader to :picture") 
  # attach_file('test', '#{Rails.root}/assets/images/rails.png')
  puts "PATH:::::#{Rails.root}/app/assets/images/rails.png"
  attach_file('picture', "#{Rails.root}/app/assets/images/rails.png")

end

Then /^User clicks the 'Update' button$/ do
  click_button('Update') 
end

Then /^then is redirected to home page$/ do
  visit '/' 
end

Then /^the picture shows up on the index if there is picture for the creature$/ do
  Creature.find_by_name('Tyra')
  page.has_content?('')
end


