# Preview all emails at http://localhost:3000/rails/mailers/target_mailer
class TargetMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/target_mailer/target_changed
  def target_changed
    TargetMailer.target_changed
  end

end
