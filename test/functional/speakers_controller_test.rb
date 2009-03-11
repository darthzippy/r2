require 'test_helper'

class SpeakersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:speakers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_speaker
    assert_difference('Speaker.count') do
      post :create, :speaker => { :name => 'speaker' }
    end

    assert_redirected_to speaker_path(assigns(:speaker))
  end

  def test_should_show_speaker
    get :show, :id => speakers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => speakers(:one).id
    assert_response :success
  end

  def test_should_update_speaker
    put :update, :id => speakers(:one).id, :speaker => { }
    assert_redirected_to speaker_path(assigns(:speaker))
  end

  def test_should_destroy_speaker
    assert_difference('Speaker.count', -1) do
      delete :destroy, :id => speakers(:one).id
    end

    assert_redirected_to speakers_path
  end
end
