require 'test_helper'

class BukusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bukus_index_url
    assert_response :success
  end

end
