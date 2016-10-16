require 'test_helper'

class SeancesControllerTest < ActionController::TestCase
  setup do
    @seance = seances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seance" do
    assert_difference('Seance.count') do
      post :create, seance: { contenu: @seance.contenu, titre: @seance.titre, url_question: @seance.url_question, url_video: @seance.url_video }
    end

    assert_redirected_to seance_path(assigns(:seance))
  end

  test "should show seance" do
    get :show, id: @seance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seance
    assert_response :success
  end

  test "should update seance" do
    patch :update, id: @seance, seance: { contenu: @seance.contenu, titre: @seance.titre, url_question: @seance.url_question, url_video: @seance.url_video }
    assert_redirected_to seance_path(assigns(:seance))
  end

  test "should destroy seance" do
    assert_difference('Seance.count', -1) do
      delete :destroy, id: @seance
    end

    assert_redirected_to seances_path
  end
end
