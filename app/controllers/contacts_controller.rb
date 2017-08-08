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
    
  end
end
