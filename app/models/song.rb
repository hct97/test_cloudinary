class Song < ApplicationRecord
  mount_uploader :picture, PictureUploader
end
