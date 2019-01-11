RSpec.feature 'Viewing property' do

  let(:prop_name){ 'mars mansion'}


 context "user can access properties page and view properties " do
   before {
          sign_up('Gabe', 'Huxley')
          add_property(prop_name)
          view_properties
   }

   it 'takes us to the rent properties page' do
     expect(page.current_path).to eq "/rent_property"
     expect(page).to have_content "Here is a list of properties to rent"
   end

   it 'displays list of properties' do
      expect(page).to have_content(prop_name)
   end

   it 'allows you to view a particular property' do
     first('.property-tile').click_link "View property"
     # expect(page.current_path).to eq "/"
     expect(page).to have_content "Property you have selected:"
   end


  it 'allows you to view property details' do
    click_link "View property"
    expect(page).to have_content(prop_name)
  end


     it 'allows you to view a particular property when multiple properties' do
       add_property('jethros house')
       view_properties
       first('.property-tile').click_link "View property"
       # expect(page.current_path).to eq "/"
       expect(page).to have_content "Property you have selected:"
     end
 end




end
