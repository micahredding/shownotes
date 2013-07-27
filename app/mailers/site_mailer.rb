class SiteMailer < ActionMailer::Base
  default from: "from@example.com"

  def password_reset_instructions(user)
    @user = user
    mail(:to => user.email, :subject => 'Password Reset Instructions')
  end
end
