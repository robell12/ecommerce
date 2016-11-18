class SignupMailerPreview < ActionMailer::Preview
  def new_signup_preview
    user = User.first || User.create(first_name: 'Steve', last_name: 'Jobs', email: 'steve@jobs.com')
    SignupMailer.new_signup(user)
  end
end
