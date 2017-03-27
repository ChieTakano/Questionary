require 'test_helper'

class QuestionariesControllerTest < ActionController::TestCase
  setup do
    @questionary = questionaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionary" do
    assert_difference('Questionary.count') do
      post :create, questionary: { deadline: @questionary.deadline, description: @questionary.description, title: @questionary.title }
    end

    assert_redirected_to questionary_path(assigns(:questionary))
  end

  test "should show questionary" do
    get :show, id: @questionary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionary
    assert_response :success
  end

  test "should update questionary" do
    patch :update, id: @questionary, questionary: { deadline: @questionary.deadline, description: @questionary.description, title: @questionary.title }
    assert_redirected_to questionary_path(assigns(:questionary))
  end

  test "should destroy questionary" do
    assert_difference('Questionary.count', -1) do
      delete :destroy, id: @questionary
    end

    assert_redirected_to questionaries_path
  end
end
