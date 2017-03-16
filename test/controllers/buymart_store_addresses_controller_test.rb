require 'test_helper'

class BuymartStoreAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buymart_store_address = buymart_store_addresses(:one)
  end

  test "should get index" do
    get buymart_store_addresses_url, as: :json
    assert_response :success
  end

  test "should create buymart_store_address" do
    assert_difference('BuymartStoreAddress.count') do
      post buymart_store_addresses_url, params: { buymart_store_address: { address1: @buymart_store_address.address1, address2: @buymart_store_address.address2, address3: @buymart_store_address.address3, city: @buymart_store_address.city, country: @buymart_store_address.country, county: @buymart_store_address.county, email: @buymart_store_address.email, fax_number: @buymart_store_address.fax_number, latitude: @buymart_store_address.latitude, location_id: @buymart_store_address.location_id, longitude: @buymart_store_address.longitude, phone_number: @buymart_store_address.phone_number, postal_code: @buymart_store_address.postal_code, state_addr: @buymart_store_address.state_addr } }, as: :json
    end

    assert_response 201
  end

  test "should show buymart_store_address" do
    get buymart_store_address_url(@buymart_store_address), as: :json
    assert_response :success
  end

  test "should update buymart_store_address" do
    patch buymart_store_address_url(@buymart_store_address), params: { buymart_store_address: { address1: @buymart_store_address.address1, address2: @buymart_store_address.address2, address3: @buymart_store_address.address3, city: @buymart_store_address.city, country: @buymart_store_address.country, county: @buymart_store_address.county, email: @buymart_store_address.email, fax_number: @buymart_store_address.fax_number, latitude: @buymart_store_address.latitude, location_id: @buymart_store_address.location_id, longitude: @buymart_store_address.longitude, phone_number: @buymart_store_address.phone_number, postal_code: @buymart_store_address.postal_code, state_addr: @buymart_store_address.state_addr } }, as: :json
    assert_response 200
  end

  test "should destroy buymart_store_address" do
    assert_difference('BuymartStoreAddress.count', -1) do
      delete buymart_store_address_url(@buymart_store_address), as: :json
    end

    assert_response 204
  end
end
