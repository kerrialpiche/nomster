class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @photo = Photo.find(params[:place_id])
  end

  private

  def photo_params
    params.require(:photo).permit(:caption)
  end
end
