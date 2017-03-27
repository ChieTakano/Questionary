require 'test_helper'

class QuestionaryResultsControllerTest < ActionController::TestCase
  setup do
    @questionary_result = questionary_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionary_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionary_result" do
    assert_difference('QuestionaryResult.count') do
      post :create, questionary_result: { questionary_id: @questionary_result.questionary_id, result: @questionary_result.result }
    end

    assert_redirected_to questionary_result_path(assigns(:questionary_result))
  end

  test "should show questionary_result" do
    get :show, id: @questionary_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionary_result
    assert_response :success
  end

  test "should update questionary_result" do
    patch :update, id: @questionary_result, questionary_result: { questionary_id: @questionary_result.questionary_id, result: @questionary_result.result }
    assert_redirected_to questionary_result_path(assigns(:questionary_result))
  end

  test "should destroy questionary_result" do
    assert_difference('QuestionaryResult.count', -1) do
      delete :destroy, id: @questionary_result
    end

    assert_redirected_to questionary_results_path
  end
end
