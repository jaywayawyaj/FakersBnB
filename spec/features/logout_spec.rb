RSpec.feature 'User logout' do
  let (:email){'test@test.com'}
  let(:password){'secret123'}

  context 'Logout' do
    scenario 'A user is able to logout after signing up' do
      sign_up(email,password)
      click_link('Logout')
      expect(page.current_path).to eql('/')
    end
  end
end
