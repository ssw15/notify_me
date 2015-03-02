require 'test_helper'

class TargetMailerTest < ActionMailer::TestCase
  test "target_changed" do
    mail = TargetMailer.target_changed
    assert_equal "Target changed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
