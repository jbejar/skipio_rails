class ContactsController < ApplicationController
  include HTTParty
  @@options = {query: {
    'token' => SKIPIO_API_KEY
    }}
  def list
    response = self.class.get('https://stage.skipio.com/api/v2/contacts',
    @@options)
    @contacts = response['data']
  end

  def view
    id = params['id']
    response = self.class.get("https://stage.skipio.com/api/v2/contacts/#{id}",
    @@options)
    if response.response.code == "404"
      raise ActionController::RoutingError.new('Not Found')
    end
    @contact = response['data']
  end

  def send_sms
    id = params['id']
    payload = {recipients: ["contact-#{id}"],
    message: {
      body: "Test message"
      }}.to_json
    response = self.class.post("https://stage.skipio.com/api/v2/messages",
      :body => payload,
      :headers => {'Content-Type' => 'application/json' },
      :query => {'token' => SKIPIO_API_KEY}
    )
    if response.response.code != "201"
      raise ActionController::RoutingError.new('Could not send')
    end
  end
end
