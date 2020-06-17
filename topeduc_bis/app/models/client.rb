class Client < ApplicationRecord

	has_many :factures
	has_many :requests
end
