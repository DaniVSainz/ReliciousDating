class RestaurantController < ApplicationController

  def index
  end

  def show
    @search = params[:term]
    @clientid = "T2RKEKNJZAVTB133DXTYNSNYSAHGFJ0BWFRANKUGXRKAPJIG"
    @client_secret = "XHEOYT40SRPC0BVNPS1WSLCIESFCSAKE40YZQ0P1D4EEX41X"
    @todays_date = 20170307
    @userless_request = "https://api.foursquare.com/v2/venues/explore?client_id=#{@clientid}&client_secret=#{@client_secret}&ll=25.803076,-80.204268&v=#{@todays_date}&query=#{@search}&venuePhotos=1"
    @response = HTTParty.get @userless_request
  end

end
