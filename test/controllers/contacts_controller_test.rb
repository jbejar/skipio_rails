require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get contacts_list_url
    assert_response :success
  end

  test "should get view" do
    get contacts_view_url('d173752b-cb0c-4602-bdd9-a802023358de')
    assert_response :success
  end

  test "should send_sms" do
    post contacts_view_url('d173752b-cb0c-4602-bdd9-a802023358de')
    assert_response :success
  end

end
