RSpec.feature 'User logout' do
  let (:email){'test@test.com'}
  let(:password){'secret123'}

  context 'Logout' do
    scenario 'A user is able to logout takes to root' do
      sign_up(email,password)
      click_button('Log out')
      expect(page.current_path).to eql('/')
    end

      # HOW DO WE TEST THE CURRENT STATE OF ID
      #expect(click_link('Logout')).should change{ @user }.to(nil)
  end
end
