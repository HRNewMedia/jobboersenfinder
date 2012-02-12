class Backend::BackendController < ApplicationController

  before_filter :authenticate_user!

  layout 'backend'
end
