class Contract < ApplicationRecord

	belongs_to :request
	belongs_to :user
	belongs_to :client
end
