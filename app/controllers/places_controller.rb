class PlacesController < ApplicationController
  def map
    @places = AccesibleUyApiGem.client.all_places
  end
end
