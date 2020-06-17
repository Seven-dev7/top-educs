class Request < ApplicationRecord

	belongs_to :user
	belongs_to :client
	has_many :contracts
	
end
