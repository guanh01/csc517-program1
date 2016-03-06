require 'test_helper'

class TeachmentsControllerTest < ActionController::TestCase
  setup do
    @teachment = teachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teachment" do
    assert_difference('Teachment.count') do
      post :create, teachment: { course_id: @teachment.course_id, instructor_id: @teachment.instructor_id }
    end

    assert_redirected_to teachment_path(assigns(:teachment))
  end

  test "should show teachment" do
    get :show, id: @teachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teachment
    assert_response :success
  end

  test "should update teachment" do
    patch :update, id: @teachment, teachment: { course_id: @teachment.course_id, instructor_id: @teachment.instructor_id }
    assert_redirected_to teachment_path(assigns(:teachment))
  end

  test "should destroy teachment" do
    assert_difference('Teachment.count', -1) do
      delete :destroy, id: @teachment
    end

    assert_redirected_to teachments_path
  end
end
