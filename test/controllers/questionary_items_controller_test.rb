require 'test_helper'

class QuestionaryItemsControllerTest < ActionController::TestCase
  setup do
    @questionary_item = questionary_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionary_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionary_item" do
    assert_difference('QuestionaryItem.count') do
      post :create, questionary_item: { content: @questionary_item.content, questionary_id: @questionary_item.questionary_id }
    end

    assert_redirected_to questionary_item_path(assigns(:questionary_item))
  end

  test "should show questionary_item" do
    get :show, id: @questionary_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionary_item
    assert_response :success
  end

  test "should update questionary_item" do
    patch :update, id: @questionary_item, questionary_item: { content: @questionary_item.content, questionary_id: @questionary_item.questionary_id }
    assert_redirected_to questionary_item_path(assigns(:questionary_item))
  end

  test "should destroy questionary_item" do
    assert_difference('QuestionaryItem.count', -1) do
      delete :destroy, id: @questionary_item
    end

    assert_redirected_to questionary_items_path
  end
end
