require 'dragonfly/rails/images'

if Rails.env.production?

  app = Dragonfly[:images]

  app.datastore = Dragonfly::DataStorage::S3DataStore.new

  app.datastore.configure do |c|
    c.bucket_name = 'jobboersenfinder'
    c.access_key_id = 'AKIAIGI6BESDVCGGHK6Q'
    c.secret_access_key = '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'
    # c.region = 'eu-west-1'                        # defaults to 'us-east-1'
    # c.storage_headers = {'some' => 'thing'}       # defaults to {'x-amz-acl' => 'public-read'}
    # c.url_scheme = 'https'                        # defaults to 'http'
  end
end
