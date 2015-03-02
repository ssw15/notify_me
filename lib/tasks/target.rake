namespace :target do
  desc "Updates each target with current content"
  task check_all: :environment do
    # set up a client to talk to the Twilio REST API

    # put your own credentials here
    # account_sid = 'sid'
    # auth_token = 'auth-token'
    # phone_number = "+15555555555"

    # @client = Twilio::REST::Client.new account_sid, auth_token

    Target.find_each do |target|
      previous = target.checks.last.content

      current = target.check_now.to_s

      if previous != current

        puts "#{target.page_url} has changed. Go check it out!"

        # @client.messages.create(
        #   from: phone_number,
        #   to: "+15555555555",
        #   body: "#{target.page_url} has changed. Go check it out!"
        # )

        TargetMailer.target_changed("a@example.com").deliver
      end
    end
  end
end
