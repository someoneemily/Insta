class Userprofile < ActiveRecord::Base
	has_secure_password
	validates :name, presence: true, uniqueness: true, length: {maximum: 50}
	
end
