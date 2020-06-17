class Id < ApplicationRecord

	belongs_to :user

	validates :title, presence: true
	validates :recto, presence: true

	include ImageUploader::Attachment(:image) # adds an `image` virtual attribute

end
