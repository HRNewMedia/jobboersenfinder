class PlatformObserver < ActiveRecord::Observer
  observe :platform

  def after_create(platform)
    expire_platform
  end

  def after_update(platform)
    expire_platform
  end

  def after_destroy(platform)
    expire_platform
  end

  protected

  def expire_platform
    expire_page controller: 'platforms', action: 'index'
  end
end
