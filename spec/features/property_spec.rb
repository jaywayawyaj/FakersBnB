RSpec.feature 'Adding property' do

  let(:property) { Property.create(
    :id => 1,
    :name => "Test house",
    :description => "Test description",
    :price => "150"
    )}
  # let!(:user) { User.create(email: 'test@test.com', password: 'secret123')}
  scenario "User can access add property page from the /profile" do
    visit "/profile"
    click_link "Add property"
    expect(page.current_path).to eq "/add_property"
    expect(page).to have_content "Please fill in your property details"
  end


  scenario "User can add property details" do
    visit "/profile"
    click_link "Add property"
    fill_in "property_name" , with: "Cosmos Manor"
    fill_in "property_desc" , with: "Big spacious house"
    fill_in "property_price" , with: "450"
    click_button "Submit"
    expect(page.current_path).to eq "/property_added/#{property.id}"
    expect(page).to have_content "Congrats your property has been submitted"
    expect(page).to have_content "Cosmos Manor"
    expect(page).to have_content "Big spacious house"
    expect(page).to have_content "£450"
  end
end
