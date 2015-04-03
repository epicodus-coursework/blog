class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :body, :presence => true

  after_create :send_message

private
  def send_message
    begin
      response = RestClient::Request.new(
        :method => :post,
        :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
        :user => ENV['TWILIO_ACCOUNT_SID'],
        :password => ENV['TWILIO_AUTH_TOKEN'],
        :payload => { :Body => 'There is a new comment on your post.',
                      :To => to,
                      :From => ENV['FROM'] }
      ).execute
    end
  end
end
