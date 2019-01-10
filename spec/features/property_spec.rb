RSpec.feature 'Adding property' do
  # let!(:user) { User.create(email: 'test@test.com', password: 'secret123')}
  scenario "User can access add property page from the /profile" do
    visit "/profile"
    click_link "Add property"
    expect(page.current_path).to eq "/add_property"
    expect(page).to have_content "Please fill in your property details"
  end
end
