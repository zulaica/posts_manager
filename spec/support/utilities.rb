def login(user)
  visit log_in_path
  fill_in "Email", :with => user.email
  fill_in "Password", :with => user.password
  click_on "Submit"
end
