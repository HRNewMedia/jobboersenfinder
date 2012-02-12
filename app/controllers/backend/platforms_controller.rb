class Backend::PlatformsController < Backend::BackendController
  respond_to :html

  expose(:platforms) { Platform.page params[:page] }

  expose(:platform)
end
