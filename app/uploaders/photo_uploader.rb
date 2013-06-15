class PhotoUploader < CarrierWave::Uploader::Base
  storage :file

    def store_dir
     "#{APP_ROOT}/public/photos/"
    end

    # process :resize_to_fit => [200, 200]
    
end
