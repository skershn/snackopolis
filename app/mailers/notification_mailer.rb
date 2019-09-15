class NotificationMailer < ApplicationMailer
  default from: "noreply@nomsterapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user

    mail(to: @place_owner.email,
          subject: "you got a comment on #{@place.name}!")
  end
end
