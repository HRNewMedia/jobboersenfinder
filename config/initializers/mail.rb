if Rails.env.production? or Rails.env.staging?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address => 'mail.authsmtp.com',
    :port => 23,
    :authentication => :plain,
    :user_name => "ac34526",
    :password => "wxxn7zqbb"
  }
end
