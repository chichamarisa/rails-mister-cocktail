class PhotoUploader < CarrierWave::Uploader::Base
  class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # Remove everything else
end
end
