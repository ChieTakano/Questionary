require 'test_helper'

class QuestionaryChoicesControllerTest < ActionController::TestCase
  setup do
    @questionary_choice = questionary_choices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionary_choices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionary_choice" do
    assert_difference('QuestionaryChoice.count') do
      post :create, questionary_choice: { content: @questionary_choice.content, questionary_item_id: @questionary_choice.questionary_item_id, value: @questionary_choice.value }
    end

    assert_redirected_to questionary_choice_path(assigns(:questionary_choice))
  end

  test "should show questionary_choice" do
    get :show, id: @questionary_choice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionary_choice
    assert_response :success
  end

  test "should update questionary_choice" do
    patch :update, id: @questionary_choice, questionary_choice: { content: @questionary_choice.content, questionary_item_id: @questionary_choice.questionary_item_id, value: @questionary_choice.value }
    assert_redirected_to questionary_choice_path(assigns(:questionary_choice))
  end

  test "should destroy questionary_choice" do
    assert_difference('QuestionaryChoice.count', -1) do
      delete :destroy, id: @questionary_choice
    end

    assert_redirected_to questionary_choices_path
  end
end
