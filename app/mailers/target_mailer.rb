class TargetMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.target_mailer.target_changed.subject
  #
  def target_changed(user)
    @greeting = "Hi"

    mail to: user
  end

end
