require "test_helper"

class TranxactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tranxaction = tranxactions(:one)
  end

  test "should get index" do
    get tranxactions_url
    assert_response :success
  end

  test "should get new" do
    get new_tranxaction_url
    assert_response :success
  end

  test "should create tranxaction" do
    assert_difference("Tranxaction.count") do
      post tranxactions_url, params: { tranxaction: { amount: @tranxaction.amount, name: @tranxaction.name } }
    end

    assert_redirected_to tranxaction_url(Tranxaction.last)
  end

  test "should show tranxaction" do
    get tranxaction_url(@tranxaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_tranxaction_url(@tranxaction)
    assert_response :success
  end

  test "should update tranxaction" do
    patch tranxaction_url(@tranxaction), params: { tranxaction: { amount: @tranxaction.amount, name: @tranxaction.name } }
    assert_redirected_to tranxaction_url(@tranxaction)
  end

  test "should destroy tranxaction" do
    assert_difference("Tranxaction.count", -1) do
      delete tranxaction_url(@tranxaction)
    end

    assert_redirected_to tranxactions_url
  end
end
