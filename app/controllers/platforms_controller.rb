class PlatformsController < ApplicationController
  respond_to :json

  expose(:platforms) do
    Platform.published.includes([
      :employment_types, :kinds, :occupational_fields,
      :specialized_occupational_fields, :features
    ])
  end

  expose(:platform) { Platform.find(params[:id]) }
end
