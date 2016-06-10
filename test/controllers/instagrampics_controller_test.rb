require 'test_helper'

class InstagrampicsControllerTest < ActionController::TestCase
  setup do
    @instagrampic = instagrampics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instagrampics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instagrampic" do
    assert_difference('Instagrampic.count') do
      post :create, instagrampic: { description: @instagrampic.description, photo_url: @instagrampic.photo_url }
    end

    assert_redirected_to instagrampic_path(assigns(:instagrampic))
  end

  test "should show instagrampic" do
    get :show, id: @instagrampic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instagrampic
    assert_response :success
  end

  test "should update instagrampic" do
    patch :update, id: @instagrampic, instagrampic: { description: @instagrampic.description, photo_url: @instagrampic.photo_url }
    assert_redirected_to instagrampic_path(assigns(:instagrampic))
  end

  test "should destroy instagrampic" do
    assert_difference('Instagrampic.count', -1) do
      delete :destroy, id: @instagrampic
    end

    assert_redirected_to instagrampics_path
  end
end
