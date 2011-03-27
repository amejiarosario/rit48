require 'test_helper'

class SmartReviewsControllerTest < ActionController::TestCase
  setup do
    @smart_review = smart_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smart_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smart_review" do
    assert_difference('SmartReview.count') do
      post :create, :smart_review => @smart_review.attributes
    end

    assert_redirected_to smart_review_path(assigns(:smart_review))
  end

  test "should show smart_review" do
    get :show, :id => @smart_review.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @smart_review.to_param
    assert_response :success
  end

  test "should update smart_review" do
    put :update, :id => @smart_review.to_param, :smart_review => @smart_review.attributes
    assert_redirected_to smart_review_path(assigns(:smart_review))
  end

  test "should destroy smart_review" do
    assert_difference('SmartReview.count', -1) do
      delete :destroy, :id => @smart_review.to_param
    end

    assert_redirected_to smart_reviews_path
  end
end
