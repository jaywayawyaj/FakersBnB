RSpec.feature 'User Authentication' do
  let (:email){'test@test.com'}
  let(:password){'secret123'}
  context 'Sign in' do
    scenario 'A user can sign in' do
      sign_up(email,password)
      click_link('Logout')
    end
  end
end
