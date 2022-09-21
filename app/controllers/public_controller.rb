class PublicController < ApplicationController
  def main
    if account_signed_in?

    end

    @properties = Property.latest

  end
  def pass

  end
end
