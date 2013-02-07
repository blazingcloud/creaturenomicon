Given /^User is at edit creature page$/ do
  # pending ("start from the root page and one of the creature elements")
  @creature = Creature.new({:name=> 'Tyra', :description=>'pink dino', :habitat=>'BZC'})
  @creature.save
  visit edit_creature_path(@creature)
end

When /^User attaches picture$/ do
  # pending ("install carrierwave and cloudinary and make it add mount PictureLoader to :picture") 
  puts "PATH:::::#{Rails.root}/app/assets/images/good.jpg"
  attach_file('picture', "#{Rails.root}/app/assets/images/good.jpg")
end

Then /^User clicks the 'Update' button$/ do
  click_button('Update') 
end

Then /^then is redirected to home page$/ do
  visit '/' 
end

Then /^the picture shows up on the index if there is picture for the creature$/ do
  creature = Creature.find_by_name('Tyra')
  puts "Match cloudinary?="
  puts /cloudinary/.match(creature.picture_url)
  puts creature.picture.url
  results = page.find('.picture img#Tyra')
  puts results
end


