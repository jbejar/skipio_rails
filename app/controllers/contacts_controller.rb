class ContactsController < ApplicationController
  include HTTParty
  base_uri 'https://stage.skipio.com'

  def initialize
    @options = {token: SKIPIO_API_KEY}
  end
  def list
    self.class.get("")
  end

  def view
  end

  def send_sms
  end
end
