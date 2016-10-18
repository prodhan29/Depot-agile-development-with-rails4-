require 'test_helper'

class DusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duser = dusers(:one)
  end

  test "should get index" do
    get dusers_url
    assert_response :success
  end

  test "should get new" do
    get new_duser_url
    assert_response :success
  end

  test "should create duser" do
    assert_difference('Duser.count') do
      post dusers_url, params: { duser: { name: @duser.name, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to duser_url(Duser.last)
  end

  test "should show duser" do
    get duser_url(@duser)
    assert_response :success
  end

  test "should get edit" do
    get edit_duser_url(@duser)
    assert_response :success
  end

  test "should update duser" do
    patch duser_url(@duser), params: { duser: { name: @duser.name, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to duser_url(@duser)
  end

  test "should destroy duser" do
    assert_difference('Duser.count', -1) do
      delete duser_url(@duser)
    end

    assert_redirected_to dusers_url
  end
end
