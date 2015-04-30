class ReviewsController < ApplicationController

  def create
    r = Review.new
    r.place_id = params["place_id"]
    r.rating = params["rating"]
    r.desc = params["desc"]
    r.save
    redirect_to show_places_url_path(r.place_id)
    # "/places/#{r.place_id}"
  end

end
