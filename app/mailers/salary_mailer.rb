class SalaryMailer < ApplicationMailer
  def report(email)
    @email = email
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end
end
