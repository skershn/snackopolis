class NotificationMailer < ApplicationMailer
  default from: "noreply@nomsterapp.com"

  def comment_added
    mail(to: "noreply.sk.19@gmail.com",
          subject: "comment added on place!")
  end
end
