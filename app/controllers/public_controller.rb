class PublicController < ApplicationController
  def main
    @properties = Property.latest
  end
  def pass

  end
end
