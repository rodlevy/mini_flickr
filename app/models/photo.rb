class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :album

   mount_uploader :file, PhotoUploader

end
