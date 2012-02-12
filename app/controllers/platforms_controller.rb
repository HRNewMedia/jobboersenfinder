class PlatformsController < ApplicationController
  respond_to :json

  expose(:platforms) { Platform.published }

  expose(:platform) { Platform.find(params[:id]) }
end
