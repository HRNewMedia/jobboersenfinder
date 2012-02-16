class PlatformSweeper < ActionController::Caching::Sweeper
  observe Platform

  def after_create(platform)
    expire_platform(platform)
  end

  def after_update(platform)
    expire_platform(platform)
  end

  def after_destroy(platform)
    expire_platform(platform)
  end

  protected

  def expire_platform(platform)
    expire_page '/platforms.json'
    expire_action "/platforms/#{platform.id}.json"
  end
end
