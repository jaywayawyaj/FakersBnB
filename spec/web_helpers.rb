
def sign_up(email, password)
  visit '/'
  click_on 'Sign up'
  fill_in :email, with: email
  fill_in :password, with: password
  click_button 'Sign up'
end

 def logout_user
   click_button('Log out')
 end

 def sign_in(email, password)
   visit '/'
   click_on 'Sign in'
   fill_in :email, with: email
   fill_in :password, with: password
   click_button 'Sign in'
 end
def view_properties
  visit "/profile"
  click_link "Rent property"
end

def add_property(name = 'test', description ='test description', price = 100)
  visit "/profile"
  click_link "Add property"
  fill_in "property_name" , with: name
  fill_in "property_desc" , with: description
  fill_in "property_price" , with: price
  click_button "Submit"
end
