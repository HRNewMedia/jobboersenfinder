# encoding: utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:page_title) { 'jobbörsenfinder' }
end
