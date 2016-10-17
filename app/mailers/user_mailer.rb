class UserMailer < ApplicationMailer
  default from: 'nahid420.nh@gmail.com'

  def welcome_email(user)
    puts "*********************** hoise ***********************"
    @user = user
    @url = "www.google.com"
    mail to: @user.email, subject: "welcome to rubyonrails mail service"
  end

end
