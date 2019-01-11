RSpec.feature 'Viewing property' do

 scenario "user can access rent property page from /profile " do
   visit "/profile"
   click_link "Rent property"
   expect(page.current_path).to eq "/rent_property"
   expect(page).to have_content "Here is a list of properties to rent"
 end


end
