require 'twilio-ruby'

class Twilio

def self.text_update(message)

  @client = Twilio::REST::Client.new(Rails.application.secrets.twilio_api_key,  Rails.application.secrets.twilio_api_secret)

  @client.messages.create(
    from: '+16693421992',
    to: '+2406004572',
    body: 'Hey there!'
  )
end

end

