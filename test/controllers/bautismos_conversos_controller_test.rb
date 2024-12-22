require "test_helper"

class BautismosConversosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bautismos_converso = bautismos_conversos(:one)
  end

  test "should get index" do
    get bautismos_conversos_url
    assert_response :success
  end

  test "should get new" do
    get new_bautismos_converso_url
    assert_response :success
  end

  test "should create bautismos_converso" do
    assert_difference("BautismosConverso.count") do
      post bautismos_conversos_url, params: { bautismos_converso: { age: @bautismos_converso.age, attendande: @bautismos_converso.attendande, bautism_date: @bautismos_converso.bautism_date, confirmation_date: @bautismos_converso.confirmation_date, gender: @bautismos_converso.gender, name: @bautismos_converso.name, unidads_id: @bautismos_converso.unidads_id } }
    end

    assert_redirected_to bautismos_converso_url(BautismosConverso.last)
  end

  test "should show bautismos_converso" do
    get bautismos_converso_url(@bautismos_converso)
    assert_response :success
  end

  test "should get edit" do
    get edit_bautismos_converso_url(@bautismos_converso)
    assert_response :success
  end

  test "should update bautismos_converso" do
    patch bautismos_converso_url(@bautismos_converso), params: { bautismos_converso: { age: @bautismos_converso.age, attendande: @bautismos_converso.attendande, bautism_date: @bautismos_converso.bautism_date, confirmation_date: @bautismos_converso.confirmation_date, gender: @bautismos_converso.gender, name: @bautismos_converso.name, unidads_id: @bautismos_converso.unidads_id } }
    assert_redirected_to bautismos_converso_url(@bautismos_converso)
  end

  test "should destroy bautismos_converso" do
    assert_difference("BautismosConverso.count", -1) do
      delete bautismos_converso_url(@bautismos_converso)
    end

    assert_redirected_to bautismos_conversos_url
  end
end
