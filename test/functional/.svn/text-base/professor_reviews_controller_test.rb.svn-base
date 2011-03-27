require 'test_helper'

class ProfessorReviewsControllerTest < ActionController::TestCase
  setup do
    @professor_review = professor_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professor_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor_review" do
    assert_difference('ProfessorReview.count') do
      post :create, :professor_review => @professor_review.attributes
    end

    assert_redirected_to professor_review_path(assigns(:professor_review))
  end

  test "should show professor_review" do
    get :show, :id => @professor_review.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @professor_review.to_param
    assert_response :success
  end

  test "should update professor_review" do
    put :update, :id => @professor_review.to_param, :professor_review => @professor_review.attributes
    assert_redirected_to professor_review_path(assigns(:professor_review))
  end

  test "should destroy professor_review" do
    assert_difference('ProfessorReview.count', -1) do
      delete :destroy, :id => @professor_review.to_param
    end

    assert_redirected_to professor_reviews_path
  end
end
