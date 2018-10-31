require 'test_helper'

class WhereFromsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @where_from = where_froms(:one)
  end

  test "should get index" do
    get where_froms_url
    assert_response :success
  end

  test "should get new" do
    get new_where_from_url
    assert_response :success
  end

  test "should create where_from" do
    assert_difference('WhereFrom.count') do
      post where_froms_url, params: { where_from: { name: @where_from.name } }
    end

    assert_redirected_to where_from_url(WhereFrom.last)
  end

  test "should show where_from" do
    get where_from_url(@where_from)
    assert_response :success
  end

  test "should get edit" do
    get edit_where_from_url(@where_from)
    assert_response :success
  end

  test "should update where_from" do
    patch where_from_url(@where_from), params: { where_from: { name: @where_from.name } }
    assert_redirected_to where_from_url(@where_from)
  end

  test "should destroy where_from" do
    assert_difference('WhereFrom.count', -1) do
      delete where_from_url(@where_from)
    end

    assert_redirected_to where_froms_url
  end
end
