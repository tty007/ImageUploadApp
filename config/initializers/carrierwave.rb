# require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: ENV['AWS_REGION'],
  }
  config.fog_directory = 's3-rails-image'
end
 
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
  