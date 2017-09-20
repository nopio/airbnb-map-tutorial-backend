class PlacesController < ApplicationController
  def index
    places = Place.search(search_params.to_h.symbolize_keys)
    render json: places
  end

  private

  def search_params
    params.permit(:min_lng, :max_lng, :min_lat, :max_lat)
  end
end
