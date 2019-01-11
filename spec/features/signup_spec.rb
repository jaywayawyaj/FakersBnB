RSpec.feature 'User Authentication' do
  let(:email){'test@test.com'}
  let(:password) { 'secret123' }

  context 'Sign Up' do
    scenario 'A user can signup' do
      sign_up(email, password)
      expect(page.current_path).to eql '/profile'
    end
  end

  context 'Sign up and check profile' do
    scenario 'A user sees their details after signing up' do
      sign_up(email, password)
      expect(page).to have_content(email)
    end
  end
  context 'Sign up with a duplicate email and fails' do
    scenario 'A user tries to sign up with an existing email and fails' do
      sign_up(email, password)
      logout_user
      sign_up(email, password)
      expect(page).to have_content('That username already exists.') 
    end
  end
end
