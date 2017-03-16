class BuymartStoreAddressesController < ApplicationController  
rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
before_filter :cors_preflight_check
after_filter :cors_set_access_control_headers 

def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

  def cors_preflight_check
    if request.method == 'OPTIONS'
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, Token'
      headers['Access-Control-Max-Age'] = '1728000'

      render :text => '', :content_type => 'text/plain'
    end
  end



  # GET /buymart_store_addresses
  def index
    @buymart_store_addresses = BuymartStoreAddress.all
    render json: @buymart_store_addresses
  end

  # GET /buymart_store_addresses/1
  def show
	@buymart_store_address = BuymartStoreAddress.select("location_id,address1,address2,address3,city,county,state_addr,postal_code,country,phone_number,fax_number,email").where(postal_code:params[:postal_code]).limit(10) 
	render json: @buymart_store_address
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buymart_store_address
      @buymart_store_address = BuymartStoreAddress.find(params[:postal_code])
    end

    # Only allow a trusted parameter "white list" through.
    def buymart_store_address_params
      params.require(:buymart_store_address).permit(:location_id, :address1, :address2, :address3, :city, :country, :state_addr, :postal_code, :county, :phone_number, :fax_number, :email, :latitude, :longitude) 
    end
end
