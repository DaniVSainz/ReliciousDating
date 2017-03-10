class RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_restaurant, only: [ :edit, :update, :destroy] #:show,

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all
    @search = params[:term]
    @clientid = ENV['CLIENT_ID']
    @client_secret = ENV['CLIENT_SECRET']
    @todays_date = 20170307
    @userless_request = "https://api.foursquare.com/v2/venues/explore?client_id=#{@clientid}&client_secret=#{@client_secret}&ll=25.803076,-80.204268&v=#{@todays_date}&query=#{@search}&venuePhotos=1"
    @response = HTTParty.get @userless_request

    @restaurant = Restaurant.new
  end
  
  def search
    @restaurants = Restaurant.all
    @search = params[:term]
    @clientid = ENV['CLIENT_ID']
    @client_secret = ENV['CLIENT_SECRET']
    @todays_date = 20170307
    @userless_request = "https://api.foursquare.com/v2/venues/explore?client_id=#{@clientid}&client_secret=#{@client_secret}&ll=25.803076,-80.204268&v=#{@todays_date}&query=#{@search}&venuePhotos=1"
    @response = HTTParty.get @userless_request
    @restaurant = Restaurant.new
  end
  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @search = params[:term]
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
  #   # @restaurant = Restaurant.find_or_initialize_by(restaurant_params)
    restaurant_match = Restaurant.find_by(restaurant_params)#(restaurantId: restaurant_params[:restaurantId])
    @restaurant = Restaurant.new(restaurant_params)
    # raise RuntimeError.new "restaurant match is nil" if restaurant_match.nil?
    conditions = !restaurant_match.nil? && current_user.restaurants.find_by(restaurant_params).nil?#(restaurantId: restaurant_params[:restaurantId]).nil?
    if conditions
      Match.create(user: current_user, restaurant: restaurant_match) #@restaurant
    elsif restaurant_match.nil?
      # @restaurant = Restaurant.new(restaurant_params)
      @restaurant.save
      Match.create(user: current_user, restaurant: @restaurant)
  #     respond_to do |format|
  #       if @restaurant.save
  #         Match.create!(user: current_user, restaurant: @restaurant)
  #         format.html {redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
  #         format.json { render :show, status: :created, location: @restaurant }
  #       else
  #         format.html { render :new }
  #         format.json { render json: @restaurant.errors, status: :unprocessable_entity }
  #       end
  #     end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :restaurantId, :photoUrl, :menueUrl, :location, :website)
    end
end
