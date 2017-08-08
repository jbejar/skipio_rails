require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get contacts_list_url
    assert_response :success
  end

  test "should get view" do
    get contacts_view_url(1)
    assert_response :success
  end

  test "should get send_sms" do
    get contacts_send_sms_url
    assert_response :success
  end

end
