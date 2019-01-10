def sign_up(email, password)
  visit '/'
  click_on 'Sign up'
  fill_in :email, with: email
  fill_in :password, with: password
  click_button 'Sign up'
end
