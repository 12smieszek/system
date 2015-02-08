require 'test_helper'

class CommitteesVoivodeshipsControllerTest < ActionController::TestCase
  setup do
    @committees_voivodeship = committees_voivodeships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:committees_voivodeships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create committees_voivodeship" do
    assert_difference('CommitteesVoivodeship.count') do
      post :create, committees_voivodeship: { committee_id: @committees_voivodeship.committee_id, voivodeship_id: @committees_voivodeship.voivodeship_id }
    end

    assert_redirected_to committees_voivodeship_path(assigns(:committees_voivodeship))
  end

  test "should show committees_voivodeship" do
    get :show, id: @committees_voivodeship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @committees_voivodeship
    assert_response :success
  end

  test "should update committees_voivodeship" do
    patch :update, id: @committees_voivodeship, committees_voivodeship: { committee_id: @committees_voivodeship.committee_id, voivodeship_id: @committees_voivodeship.voivodeship_id }
    assert_redirected_to committees_voivodeship_path(assigns(:committees_voivodeship))
  end

  test "should destroy committees_voivodeship" do
    assert_difference('CommitteesVoivodeship.count', -1) do
      delete :destroy, id: @committees_voivodeship
    end

    assert_redirected_to committees_voivodeships_path
  end
end
