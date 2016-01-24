require 'twilio-ruby'

class User < ActiveRecord::Base
  validates :phone, presence: true
  validates :bus_num, presence: true
  validates :stop_id, presence: true


  def self.text_update(phone, body)
    @client = Twilio::REST::Client.new(ENV['TWILIO_API_KEY'],  ENV['TWILIO_API_SECRET'])

    @client.messages.create(
    from: '+16693421992',
    to: '+1' + phone,
    body: body
    )
  end

end


