class PhotoUpload < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	validates :name, presence: true #ensure photo has name
end
