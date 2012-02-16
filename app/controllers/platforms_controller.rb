class PlatformsController < ApplicationController
  respond_to :json

  caches_page :index
  caches_action :show

  expose(:platforms) do
    Platform.published.includes([
      :employment_types, :kinds, :occupational_fields,
      :specialized_occupational_fields, :features
    ])
  end

  expose(:platform) do
    Platform.find(
      params[:id], :include => [
        :employment_types, :features, :kinds, :occupational_fields,
        :specialized_occupational_fields
      ]
    )
  end

  def index
    respond_to do |format|
      format.json { render layout: 'platforms' }
    end
  end

  def show
    respond_to do |format|
      format.json { render layout: 'platform' }
    end
  end
end
