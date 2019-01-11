RSpec.feature 'Adding property' do

  let(:property) { Property.create(
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
    add_property("Cosmos Manor","Big spacious house","450")
    ### comment to revisit
    expect(page.current_path).to eq "/property_added/1"
    expect(page).to have_content "Congrats your property has been submitted"
    expect(page).to have_content "Cosmos Manor"
    expect(page).to have_content "Big spacious house"
    expect(page).to have_content "£450"
  end
end
