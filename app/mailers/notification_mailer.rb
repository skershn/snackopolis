class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "gnoshferatu@gmail.com",
          subject: "comment added on place!")
  end
end
