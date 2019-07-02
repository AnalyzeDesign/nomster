class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    logger.debug "What is the place?"
    logger.debug @place

    @place.photos.create(photo_params)

    logger.debug "What is the status of photos?"
    logger.debug @place.photos.inspect

    redirect_to place_path(@place)
  end

  private

  def photo_params
    params.require(:photo).permit(:picture, :caption)
  end
end
