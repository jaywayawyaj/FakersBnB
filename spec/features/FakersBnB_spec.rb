RSpec.feature 'User Authentication' do
  context 'Sign Up' do
    scenario 'A user can signup' do
      visit '/'
      click_on 'Sign up'
      fill_in :email, with: 'test@test.com'
      fill_in :password, with: 'secret123'
      click_button 'Sign up'
      #expect(page).to eql 'i work'
    end
  end
end
