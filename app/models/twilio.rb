require 'twilio-ruby'

@client = Twilio::REST::Client.new account_sid, auth_token

Twilio.configure do |config|
  config.account_sid = account_sid
  config.auth_token = auth_token
end
