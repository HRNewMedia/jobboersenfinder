class HomeController < ApplicationController

  layout :choose_layout

  private

  def choose_layout
    params[:iframe] ? 'iframe' : 'application'
  end
end
