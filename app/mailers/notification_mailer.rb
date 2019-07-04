class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added(comment)
    @place = comment.place

    mail(to:  @place.user.email, subject: "A comment has been added to your place, #{@place.name}")
  end
end
