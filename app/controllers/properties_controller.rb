class PropertiesController < ApplicationController
  before_action :set_property, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_account!, only: [:new,:create,:destroy]
  before_action :set_sidebar, except: [:show, :apartments, :apartments_sell,:apartments_rent,:houses_sell,:houses_rent, :houses, :one_rooms, :two_rooms, :three_rooms, :four_rooms]
  # GET /properties or /properties.json
  def index
    @properties = Property.all

  end

  # GET /properties/1 or /properties/1.json
  def show
    @seller = @property.account
    @seller_properties = Property.where(account_id: @seller.id).where.not(id: @property.id)
  end

  # GET /properties/new
  def new
    @property = Property.new

  end

  # GET /properties/1/edit
  def edit
  end

  # PROPERTY TYPES

  def apartments
    @properties = Property.where(kind: 'Apartment')
  end

  def apartments_sell
    @properties = Property.where(kind: 'Apartment', offer: "Sell")
  end

  def apartments_rent
    @properties = Property.where(kind: 'Apartment', offer: "Rent")
  end

  def one_rooms
    @properties = Property.where(kind: 'Apartment', rooms: "1")
  end

  def two_rooms
    @properties = Property.where(kind: 'Apartment', rooms: "2")
  end

  def three_rooms
    @properties = Property.where(kind: 'Apartment', rooms: "3")
  end

  def four_rooms
    @properties = Property.where(kind: 'Apartment', rooms: "4")
  end



  def houses
    @properties = Property.where(kind: 'House')
  end
  def houses_sell
    @properties = Property.where(kind: 'House', offer: "Sell")
  end
  def houses_rent
    @properties = Property.where(kind: 'House', offer: "Rent")
  end



  # POST /properties or /properties.json
  def create
    @property = Property.new(property_params)
    @property.account_id = current_account.id

    respond_to do |format|
      if @property.save
        format.html { redirect_to property_url(@property), notice: "Property was successfully created." }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1 or /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to property_url(@property), notice: "Property was successfully updated." }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1 or /properties/1.json
  def destroy
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url, notice: "Property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    def set_sidebar

      @show_sidebar = true

    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:name, :address, :price, :area, :rooms, :bathrooms, :description, :image, :kind, :offer, images: [])
    end
end
