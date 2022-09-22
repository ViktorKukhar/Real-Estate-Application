class PublicController < ApplicationController
  def main
    if account_signed_in?

    end

    @properties = Property.latest

  end

  def sell
    @properties = Property.latest.where(offer: 'Sell')
  end

  def rent
    @properties = Property.latest.where(offer: 'Rent')
  end

end
